/*
 *所有关于view_cmc_project_task_mission_manage类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_cmc_project_task_mission_manageService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using PDMS.Project.IRepositories;
using System.IO;

namespace PDMS.Project.Services
{
    public partial class view_cmc_project_task_mission_manageService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_cmc_project_task_mission_manageRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public view_cmc_project_task_mission_manageService(
            Iview_cmc_project_task_mission_manageRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }
        public override PageGridData<view_cmc_project_task_mission_manage> GetPageData(PageDataOptions options)
        {
            string epl_id = "";
            string where = " ";
            List<SearchParameters> searchParametersList = new List<SearchParameters>();
            if (!string.IsNullOrEmpty(options.Wheres))
            {
                searchParametersList = options.Wheres.DeserializeObject<List<SearchParameters>>();
                if (searchParametersList != null && searchParametersList.Count > 0)
                {
                    foreach (SearchParameters sp in searchParametersList)
                    {
                        if (sp.Name.ToLower() == "epl_id".ToLower())
                        {
                            epl_id = sp.Value;
                            if (!string.IsNullOrEmpty(epl_id))
                            {
                                where += " AND epl_id = '" + epl_id + "'";
                            }
                            continue;
                        }
                    }
                }
            }

            QuerySql = @"SELECT *,ROW_NUMBER()over(ORDER BY task_name  desc) AS rowId  FROM view_cmc_project_task_mission_manage WHERE 1=1  ";
            QuerySql += where;

            return base.GetPageData(options);
        }
        
    }
}
