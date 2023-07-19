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
        public WebResponseContent bathAddData(object saveData)
        {
            SaveModel saveModel = new SaveModel();
            string sRowDatas = saveData.ToString();
            if (string.IsNullOrEmpty(sRowDatas) == false)
            {
                var data=JObject.Parse(sRowDatas);
                Guid template_id = Guid.Parse(data["template_id"].ToString());
                List<Dictionary<string, object>> entityDic = JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(data["datas"].ToString());
                List<cmc_common_template_mapping> setList = new List<cmc_common_template_mapping>();
                foreach (Dictionary<string, object> dic in entityDic)
                {
                    try
                    {
                        Guid task_id = Guid.Parse(dic["task_id"].ToString());
                        //task_id,is_audit_key,is_delete_able,work_days  寫入欄位
                        var List = repository.DbContext.Set<cmc_common_task_template_set>().Where(x => x.template_id == template_id).FirstOrDefault();
                        if (List != null)
                        {
                            var set_id = List.set_id;
                            var MapList = repository.DbContext.Set<cmc_common_template_mapping>().Where(x => x.task_id == task_id && x.set_id == set_id).FirstOrDefault();
                            if (MapList != null)
                            {
                                continue;
                            }
                            else
                            {
                                cmc_common_template_mapping map = new cmc_common_template_mapping();
                                map.mapping_id = new Guid();
                                map.set_id = Guid.Parse(dic["task_id"].ToString());
                                map.task_id = task_id;
                                map.is_delete_able = dic["is_delete_able"] == null ? "" : dic["is_delete_able"].ToString();
                                map.is_audit_key = dic["is_audit_key"] == null ? "" : dic["is_audit_key"].ToString();
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
                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.BulkInsert(setList, "cmc_common_template_mapping");
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
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
            return _webResponseContent.OK();
        }
    }
}
