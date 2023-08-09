/*
 *所有关于view_cmc_project_his类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_cmc_project_hisService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using PDMS.Core.ManageUser;

namespace PDMS.Project.Services
{
    public partial class view_cmc_project_hisService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_cmc_project_hisRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public view_cmc_project_hisService(
            Iview_cmc_project_hisRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }
        WebResponseContent ResponseContent = new WebResponseContent();
        public override PageGridData<view_cmc_project_his> GetPageData(PageDataOptions options)
        {
            /*string glno = "";
            string project_name = "";
            string part_no = "";
            string part_name = "";
            string approve_status = "";

            string where = " ";
            List<SearchParameters> searchParametersList = new List<SearchParameters>();
            if (!string.IsNullOrEmpty(options.Wheres))
            {
                searchParametersList = options.Wheres.DeserializeObject<List<SearchParameters>>();
                if (searchParametersList != null && searchParametersList.Count > 0)
                {
                    foreach (SearchParameters sp in searchParametersList)
                    {
                        if (sp.Name.ToLower() == "glno".ToLower())
                        {
                            glno = sp.Value;
                            if (!string.IsNullOrEmpty(glno))
                            {
                                where += " AND glno LIKE '%" + glno + "%'";
                            }
                            continue;
                        }
                        if (sp.Name.ToLower() == "project_name".ToLower())
                        {
                            project_name = sp.Value;
                            if (!string.IsNullOrEmpty(project_name))
                            {
                                where += " AND project_name LIKE '%" + project_name + "%'";
                            }
                            continue;
                        }
                        if (sp.Name.ToLower() == "part_no".ToLower())
                        {
                            part_no = sp.Value;
                            if (!string.IsNullOrEmpty(part_no))
                            {
                                where += " AND part_no LIKE '%" + part_no + "%'";
                            }
                            continue;
                        }
                        if (sp.Name.ToLower() == "part_name".ToLower())
                        {
                            part_name = sp.Value;
                            if (!string.IsNullOrEmpty(part_name))
                            {
                                where += " AND part_name LIKE '%" + part_name + "%'";
                            }
                            continue;
                        }
                        if (sp.Name.ToLower() == "approve_status".ToLower())
                        {
                            approve_status = sp.Value;
                            if (!string.IsNullOrEmpty(approve_status))
                            {
                                where += " AND approve_status ='" + approve_status + "'";
                            }
                            continue;
                        }
                    }
                }
            }

            QuerySql = @"SELECT *,ROW_NUMBER()over(ORDER BY modifyDate  desc) AS rowId  FROM view_cmc_project_his WHERE 1=1  ";
                       
            QuerySql += where;
            */
            return base.GetPageData(options);
        }
    }
}
