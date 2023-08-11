/*
 *所有关于cmc_common_template_mapping类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*cmc_common_template_mappingService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using PDMS.Sys.IRepositories;
using System.Collections.Generic;
using System.Net;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using PDMS.Core.DBManager;
using OfficeOpenXml.FormulaParsing.Excel.Functions.Math;

namespace PDMS.Sys.Services
{
    public partial class cmc_common_template_mappingService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Icmc_common_template_mappingRepository _repository;//访问数据库

        WebResponseContent _webResponseContent = new WebResponseContent();

        [ActivatorUtilitiesConstructor]
        public cmc_common_template_mappingService(
            Icmc_common_template_mappingRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }

        public WebResponseContent bathUpdateData(object saveData)
        {
            SaveModel saveModel = new SaveModel();
            string sRowDatas = saveData.ToString();
            List<cmc_common_template_mapping> entityDic = JsonConvert.DeserializeObject<List<cmc_common_template_mapping>>(sRowDatas);
            try
            {
                if (entityDic.Count > 0)
                {
                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.UpdateRange(entityDic, x => new { x.is_audit_key,x.is_delete_able,x.order_no,x.work_days });
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }
                else
                {
                    return _webResponseContent.Error("沒有要修改的數據");
                }

            }
            catch (Exception ex)
            {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改前装箱 cmc_common_template_mapping 表，cmc_common_template_mappingService 文件-->foreach：" + DateTime.Now + ":" + ex.Message);

                return _webResponseContent.Error(ex.Message);
            }
            return _webResponseContent.OK("操作成功");
        }
        public WebResponseContent bathSet(object saveData)
        {
            SaveModel saveModel = new SaveModel();
            string sRowDatas = saveData.ToString();
            if (string.IsNullOrEmpty(sRowDatas) == false)
            {
                var data = JObject.Parse(sRowDatas);
                string flag = data["flag"].ToString();
                var ids=JArray.Parse(data["ids"].ToString());
                 if (ids != null && ids.Count() > 0)
                {
                    string ids_str = string.Join("','", ids);
                    string sql = "";
                    if (flag == "1")//是否可删除
                    {
                        sql = $@"update cmc_common_template_mapping set is_delete_able=(1-is_delete_able) where mapping_id in ('{ids_str}') ";
                    }else if (flag == "2")//是否重点审核项目
                    {
                        sql = $@"update cmc_common_template_mapping set is_audit_key=(1-is_audit_key) where mapping_id in ('{ids_str}') ";
                    }
                    var s=repository.DapperContext.ExcuteNonQuery(sql, null);
                    return _webResponseContent.OK(s + "条记录操作成功" );
                }

            }
            return _webResponseContent.OK("操作成功");
        }

        public WebResponseContent bathAddData(object saveData)
        {
            SaveModel saveModel = new SaveModel();
            string sRowDatas = saveData.ToString();
            if (string.IsNullOrEmpty(sRowDatas) == false)
            {
                var data=JObject.Parse(sRowDatas);
                Guid template_id = Guid.Parse(data["template_id"].ToString());
                Guid set_id = Guid.Parse(data["set_id"].ToString());
                List<Dictionary<string, object>> entityDic = JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(data["datas"].ToString());
                List<cmc_common_template_mapping> setList = new List<cmc_common_template_mapping>();
                var List = repository.DbContext.Set<cmc_common_task_template_set>().Where(x => x.set_id == set_id).Select(x => new { set_id = x.set_id }).ToList();
                List<string> listS = new List<string>();
                foreach (var item in List)
                {
                    listS.Add(item.set_id.ToString());
                }
                foreach (Dictionary<string, object> dic in entityDic)
                {
                    try
                    {
                        Guid task_id = Guid.Parse(dic["task_id"].ToString());
                        //task_id,is_audit_key,is_delete_able,work_days  寫入欄位           
                        if (List != null)
                        {
                            var MapList = repository.DbContext.Set<cmc_common_template_mapping>().Where(x => x.task_id == task_id && listS.Contains(x.set_id==null?"": x.set_id.ToString())).FirstOrDefault();
                            if (MapList != null)
                            {
                                continue;
                            }
                            else
                            {
                                cmc_common_template_mapping map = new cmc_common_template_mapping();
                                map.mapping_id = Guid.NewGuid();
                                map.set_id = set_id;
                                map.task_id = task_id;
                                map.is_delete_able = dic["is_delete_able"] == null ? "" : dic["is_delete_able"].ToString();
                                map.is_audit_key = dic["is_audit_key"] == null ? "" : dic["is_audit_key"].ToString();
                                map.work_days= dic["work_days"] == null ? 0 :Int32.Parse( dic["work_days"].ToString());
                                setList.Add(map);
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量新增前装箱 cmc_common_template_mapping 表，cmc_common_template_mappingService 文件-->foreach：" + DateTime.Now + ":" + ex.Message);

                        return _webResponseContent.Error(ex.Message);
                    }
                }
                try
                {
                    if (setList.Count > 0)
                    {
                        repository.DapperContext.BeginTransaction((r) =>
                        {
                            DBServerProvider.SqlDapper.BulkInsert(setList, "cmc_common_template_mapping");
                            return true;
                        }, (ex) => { throw new Exception(ex.Message); });
                    }
                    else
                    {
                       return  _webResponseContent.Error("任務在模版已存在");
                    }
                    
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量新增執行 cmc_common_template_mapping 表，cmc_common_template_mappingService 文件-->BulkInsert：" + DateTime.Now + ":" + ex.Message);
                    return _webResponseContent.Error(ex.Message);
                }
            }
            else
            {
                _webResponseContent.Error("no data save");
            }
            _webResponseContent.Data = saveData;
            return _webResponseContent.OK("操作成功");
        }

        public override WebResponseContent Del(object[] keys, bool delList = true)
        {
            if(keys!= null && keys.Length > 0) { 
          
                string ids=string.Join("','", keys);
                string sql = $@"SELECT count(0) from cmc_pdms_project_task WHERE template_id=
                            (SELECT distinct template_id from cmc_common_task_template_set where set_id in 
                                (SELECT set_id from cmc_common_template_mapping WHERE mapping_id in('{ids}')))";
                var count3 = Convert.ToInt32(repository.DapperContext.ExecuteScalar(sql, null));
                if (count3 > 0)
                {
                    return _webResponseContent.Error("模板被引用，不允許刪除任務");
                }
            }
           
            return base.Del(keys, delList);
        }
    }
}
