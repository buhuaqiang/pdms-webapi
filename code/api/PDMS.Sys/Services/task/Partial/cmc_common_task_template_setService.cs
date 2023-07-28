/*
 *所有关于cmc_common_task_template_set类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*cmc_common_task_template_setService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using System;

namespace PDMS.Sys.Services
{
    public partial class cmc_common_task_template_setService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Icmc_common_task_template_setRepository _repository;//访问数据库

        WebResponseContent webContent=new WebResponseContent();

        [ActivatorUtilitiesConstructor]
        public cmc_common_task_template_setService(
            Icmc_common_task_template_setRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }
        public List<cmc_common_task_template_set> GetList(string template_id)
        {
            List<cmc_common_task_template_set> Result = new List<cmc_common_task_template_set>();
            string sql = $@"SELECT
	                        set_id,
	                        parent_set_id,
	                        set_type,
	                        set_value,
	                        sl2.DicName dicName	
                        FROM
	                        cmc_common_task_template_set st
	                        LEFT JOIN Sys_DictionaryList sl2 ON ( sl2.DicValue= st.set_value AND sl2.Dic_ID = ( SELECT Dic_ID FROM Sys_Dictionary WHERE DicNo = st.set_type ) )
                        WHERE 1=1 ";
            if (!string.IsNullOrEmpty(template_id))
            {
                sql += $" and st.template_id= '"+template_id+"'";
            }
            sql += " order by st.order_no desc";
            Result = repository.DapperContext.QueryList<cmc_common_task_template_set>(sql, null);
            return Result;
        }

        public WebResponseContent delSet(string set_id)
        {
            string sql = $@"";
            return webContent.OK();
        }

        public override WebResponseContent Del(object[] keys, bool delList = true)
        {
            string dd = string.Join("','", keys);
            //有下級，不允許刪除
            string sSql = $@"SELECT count(0) from cmc_common_task_template_set where parent_set_id  in ('{dd}')";
            object obj = _repository.DapperContext.ExecuteScalar(sSql, null);
            if (Convert.ToInt32(obj) > 0)
            {
                return webContent.Error("有子層級，不允許刪除");
            }
            //有任務，不允許刪除
            sSql = $@"SELECT count(0) from cmc_common_template_mapping where set_id  in ('{dd}')";
            obj = _repository.DapperContext.ExecuteScalar(sSql, null);
            if (Convert.ToInt32(obj) > 0)
            {
                return webContent.Error("當前層級下有任務，不允許刪除");
            }
            return base.Del(keys, delList);
        }

        public override WebResponseContent Add(SaveModel saveDataModel)
        {
            
            string sSql = $@"SELECT count(0) from cmc_common_task_template_set where  template_id='{saveDataModel.MainData["template_id"].ToString()}' and set_type='{saveDataModel.MainData["set_type"].ToString()}' and set_value ='{saveDataModel.MainData["set_value"].ToString()}'";
            if (saveDataModel.MainData.ContainsKey("parent_set_id") && !string.IsNullOrEmpty(saveDataModel.MainData["parent_set_id"].ToString())  ){
                sSql += $@"and parent_set_id='{saveDataModel.MainData["parent_set_id"].ToString()}'";
            }
            object obj = _repository.DapperContext.ExecuteScalar(sSql, null);
            if (Convert.ToInt32(obj) > 0)
            {
                return webContent.Error("重複數據，不允許添加");
            }
            return base.Add(saveDataModel);
        }
    }
}
