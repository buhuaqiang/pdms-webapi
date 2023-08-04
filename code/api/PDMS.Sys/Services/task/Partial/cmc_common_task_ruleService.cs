/*
 *所有关于cmc_common_task_rule类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*cmc_common_task_ruleService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
    public partial class cmc_common_task_ruleService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Icmc_common_task_ruleRepository _repository;//访问数据库
        WebResponseContent webResponse=new WebResponseContent();

        [ActivatorUtilitiesConstructor]
        public cmc_common_task_ruleService(
            Icmc_common_task_ruleRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }
        public override WebResponseContent Add(SaveModel saveDataModel)
        {
            // 在保存数据库前的操作，所有数据都验证通过了，这一步执行完就执行数据库保存
            AddOnExecuting = (cmc_common_task_rule or, object list) =>
            {
                List<cmc_common_task_rule> orderLists = repository.DbContext.Set<cmc_common_task_rule>().Where(x => x.rule_code == or.rule_code).ToList();
                //自定义逻辑
                if (orderLists != null && orderLists.Count > 0)
                {//
                    return webResponse.Error("規則編碼重複");
                }

                return webResponse.OK();
            };
            return base.Add(saveDataModel);
        }
        public override WebResponseContent Del(object[] keys, bool delList = true)
        {
            DelOnExecuting = (object[] _keys) =>
            {
                string dd = string.Join("','", keys);
                string sSql = $@"SELECT COUNT(0) FROM cmc_common_task WHERE rule_id IN  ('{dd}')";
                object obj = _repository.DapperContext.ExecuteScalar(sSql, null);

                if (Convert.ToInt32(obj) > 0)
                {
                    return webResponse.Error("規則被任務引用，不允許刪除");
                }
                return webResponse.OK();
            };
            return base.Del(keys, delList);
        }
    }
}
