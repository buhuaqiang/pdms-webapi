/*
 *所有关于FormDesignOptions类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*FormDesignOptionsService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
*/
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;
using System.Linq;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
using PDMS.Core.Extensions;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using PDMS.System.IRepositories;
using System.Collections.Generic;
using static Dapper.SqlMapper;
using System;
using Newtonsoft.Json;

namespace PDMS.System.Services
{
    public partial class FormDesignOptionsService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly IFormDesignOptionsRepository _repository;//访问数据库
        private WebResponseContent _responseContent = new WebResponseContent();

        [ActivatorUtilitiesConstructor]
        public FormDesignOptionsService(
            IFormDesignOptionsRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }

        public override PageGridData<FormDesignOptions> GetPageData(PageDataOptions options)
        {
            //查询所有del_flag!=1
            return base.GetPageData(options);
        }

        public override WebResponseContent Add(SaveModel saveDataModel)
        {
            //要确认已发布状态下表单code不可以重复           
            string code = saveDataModel.MainData["FormCode"].ToString();
            List<FormDesignOptions> orderLists = repository.DbContext.Set<FormDesignOptions>().Where(x => x.FormCode ==code).ToList();
            //自定义逻辑
            if (orderLists != null && orderLists.Count > 0)
            {//
                return _responseContent.Error("重複的表單編號");
            }
            //设置默认status=0(暂存)
            saveDataModel.MainData["status"] = "0";
            return base.Add(saveDataModel);
        }

        public override WebResponseContent Update(SaveModel saveModel)
        {
            //修改舊數據的del_flag=1
            //複製一份數據做新增，發佈狀態改為 暫存 status=0            //
            SaveModel.DetailListDataResult queueResult = new SaveModel.DetailListDataResult();
            FormDesignOptions opsList = new FormDesignOptions();
            DbContext dbcon = repository.DbContext;
            var FormID = new Guid();
            if (saveModel.MainData.ContainsKey("FormId"))
            {
                //页面传过来的 FormID
                FormID = Guid.Parse(saveModel.MainData["FormId"].ToString());
            }
            var List = repository.DbContext.Set<FormDesignOptions>().Where(x => x.FormId == FormID).FirstOrDefault();
            if (saveModel.MainData.ContainsKey("DaraggeOptions"))
            {
                
                if (List != null)
                {
                    var status = List.status;
                    if (status == "1")
                    {
                        try
                        {
                            var Temp = new Guid();//创建新的NewId()
                            var FormCode = saveModel.MainData["FormCode"].ToString();
                            #region   修改FormDesignOptions
                            List.del_flag = "1";
                            queueResult.optionType = SaveModel.MainOptionType.update;
                            queueResult.detailType = typeof(FormDesignOptions);
                            queueResult.DetailData.Add(JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(List)));
                            saveModel.DetailListData.Add(queueResult);

                            #endregion

                            #region 新增 FormDesignOptions
                            FormDesignOptions ListTemp = new FormDesignOptions();
                            ListTemp = List;
                            ListTemp.FormId = Temp;
                            ListTemp.status = "0";
                            ListTemp.del_flag = "0";
                            queueResult.optionType = SaveModel.MainOptionType.add;
                            queueResult.detailType = typeof(FormDesignOptions);
                            queueResult.DetailData.Add(JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(ListTemp)));
                            saveModel.DetailListData.Add(queueResult);

                            #endregion

                            #region 释放实体
                            _responseContent = base.CustomBatchProcessEntity(saveModel);
                            var Entry = dbcon.ChangeTracker.Entries();
                            if (Entry.Count() != 0)
                            {
                                foreach (var item in Entry)
                                {
                                    //设置实体State为EntityState.Detached，取消跟踪该实体，之后dbContext.ChangeTracker.Entries().Count()的值会减1
                                    item.State = EntityState.Detached;
                                }
                            }
                            #endregion

                            #region  按照新的 FormID修改数据 FormDesignOptions
                            List = repository.DbContext.Set<FormDesignOptions>().Where(x => x.FormId == Temp).FirstOrDefault();
                            List.DaraggeOptions = saveModel.MainData["DaraggeOptions"].ToString();
                            List.FormOptions = saveModel.MainData["FormOptions"].ToString();
                            List.FormConfig = saveModel.MainData["FormConfig"].ToString();
                            List.FormFields = saveModel.MainData["FormFields"].ToString();
                            List.TableConfig = saveModel.MainData["TableConfig"].ToString();
                            List.status = "0";
                            queueResult.optionType = SaveModel.MainOptionType.update;
                            queueResult.detailType = typeof(FormDesignOptions);
                            queueResult.DetailData.Add(JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(List)));
                            saveModel.DetailListData.Add(queueResult);
                            #endregion

                            #region 修改任務表 cmc_common_task                   
                            var taskList = repository.DbContext.Set<cmc_common_task>().Where(x => x.FormCode == FormCode).FirstOrDefault();
                            taskList.FormId = Temp;
                            queueResult.optionType = SaveModel.MainOptionType.update;
                            queueResult.detailType = typeof(cmc_common_task);
                            queueResult.DetailData.Add(JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(taskList)));
                            saveModel.DetailListData.Add(queueResult);

                            #endregion

                            #region 修改子專案工作計劃表 cmc_pdms_project_task  ---- 缺少 Cmc_pdms_project_task 实体
                            var ProjcetList = repository.DbContext.Set<cmc_pdms_project_task>().Where(x => x.FormCode == FormCode && (x.FormCollectionId == null || x.approve_status == "00")).FirstOrDefault();
                            taskList.FormId = Temp;
                            queueResult.optionType = SaveModel.MainOptionType.update;
                            queueResult.detailType = typeof(cmc_common_task);
                            queueResult.DetailData.Add(JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(taskList)));
                            saveModel.DetailListData.Add(queueResult);

                            #endregion
                        }
                        catch (Exception ex)
                        {
                            Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "PDMS:參數設置--->表單配置：修改（Edit）功能：FormDesignOptionsService 文件：" + DateTime.Now + ":" + ex.Message);
                        }
                    }
                    else
                    {
                        try
                        {
                            #region 根据页面上选择的FormID，修改数据 FormDesignOptions
                            List = repository.DbContext.Set<FormDesignOptions>().Where(x => x.FormId == FormID).FirstOrDefault();
                            List.DaraggeOptions = saveModel.MainData["DaraggeOptions"].ToString();
                            List.FormOptions = saveModel.MainData["FormOptions"].ToString();
                            List.FormConfig = saveModel.MainData["FormConfig"].ToString();
                            List.FormFields = saveModel.MainData["FormFields"].ToString();
                            List.TableConfig = saveModel.MainData["TableConfig"].ToString();
                            queueResult.optionType = SaveModel.MainOptionType.update;
                            queueResult.detailType = typeof(FormDesignOptions);
                            queueResult.DetailData.Add(JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(List)));
                            saveModel.DetailListData.Add(queueResult);
                            #endregion
                        }
                        catch (Exception ex)
                        {

                            Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "PDMS:參數設置--->表單配置：修改（Edit）功能：FormDesignOptionsService 文件：" + DateTime.Now + ":" + ex.Message);
                        }
                    }
                }
            }
            else
            {
                #region  僅僅修改   FormDesignOptions ，Title、form_desc欄位
                List.Title = saveModel.MainData["Title"].ToString();
                List.form_desc = saveModel.MainData["form_desc"].ToString();
                queueResult.optionType = SaveModel.MainOptionType.update;
                queueResult.detailType = typeof(FormDesignOptions);
                queueResult.DetailData.Add(JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(List)));
                saveModel.DetailListData.Add(queueResult);
                #endregion
            }
            return base.CustomBatchProcessEntity(saveModel);
        }

        public override WebResponseContent Del(object[] keys, bool delList = true)
        {
            string dd = string.Join("','", keys);
            //如果表單被cmc_common_task表引用，不允許刪除
            string sSql = $@"select count(*) from cmc_common_task where FormId in ('{dd}')";
            object obj = _repository.DapperContext.ExecuteScalar(sSql, null);

            if (Convert.ToInt32(obj) > 0)
            {
                return _responseContent.Error("表單被任務引用，不允許刪除");
            }
            return base.Del(keys, delList);
        }


        public WebResponseContent publishForm(object[] keys)
        {
            var str = "";
            try
            {
                if (keys.Count() != 0)
                {
                    str = string.Join("''", keys);
                }
                string sql = $@" update	FormDesignOptions set status=1  where FormId in('{str}')";
                int succ = repository.DapperContext.ExcuteNonQuery(sql, null);
            }
            catch (Exception ex)
            {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "PDMS:參數設置-->表單配置-->發佈功能-->批量修改 FormDesignOptions 表，FormDesignOptionsService 文件-->FormId ："+ str + "," + DateTime.Now + ":" + ex.Message);
                return _responseContent.Error(ex.Message);
            }
            return _responseContent.OK();
        }
    }
}
