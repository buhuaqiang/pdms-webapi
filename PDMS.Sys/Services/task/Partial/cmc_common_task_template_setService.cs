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

namespace PDMS.Sys.Services
{
    public partial class cmc_common_task_template_setService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Icmc_common_task_template_setRepository _repository;//访问数据库

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
            Result = repository.DapperContext.QueryList<cmc_common_task_template_set>(sql, null);
            return Result;
        }
    }
}
