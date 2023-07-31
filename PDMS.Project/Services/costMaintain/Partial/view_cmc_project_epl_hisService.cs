/*
 *所有关于view_cmc_project_epl_his类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_cmc_project_epl_hisService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using System.Web;
using System.IO;

namespace PDMS.Project.Services
{
    public partial class view_cmc_project_epl_hisService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_cmc_project_epl_hisRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public view_cmc_project_epl_hisService(
            Iview_cmc_project_epl_hisRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }
        public override PageGridData<view_cmc_project_epl_his> GetPageData(PageDataOptions options)
        {
            string project_id = "";
            List<SearchParameters> searchParametersList = new List<SearchParameters>();
            if (!string.IsNullOrEmpty(options.Wheres))
            {
                searchParametersList = options.Wheres.DeserializeObject<List<SearchParameters>>();
                if (searchParametersList != null && searchParametersList.Count > 0)
                {
                    foreach (SearchParameters sp in searchParametersList)
                    {
                        if (sp.Name.ToLower() == "project_id".ToLower())
                        {
                            project_id = sp.Value;                           
                            continue;
                        }                       
                       
                    }
                }
            }
            if (!string.IsNullOrEmpty(project_id))
            {
                QuerySql = $@"SELECT
	                tm.* 
                FROM
	                (
	                SELECT
		                epl_his.*,
		                main.project_name,
		                main.glno,
		                main.project_type,
		                replace( LEFT ( epl_his.CreateDate, 10 ), '-', '' ) AS version,
	                CASE
			                main.project_status 
			                WHEN '01' THEN
			                '01' ELSE '02' 
		                END AS epl_phase1 
	                FROM
		                cmc_pdms_project_epl_his epl_his
		                LEFT JOIN cmc_pdms_project_main main ON main.project_id= epl_his.project_id 
	                WHERE
		                epl_his.project_id= '{project_id}' 
	                ) AS tm
	                LEFT JOIN cmc_pdms_project_epl epl ON epl.project_id= '{project_id}' 
	                AND epl.epl_phase= epl_phase1 
                WHERE
	                epl.kd_type like 'D%' " ;
            }
            
            return base.GetPageData(options);
        }
    }
}
