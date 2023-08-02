/*
 *所有关于view_UserDepartment类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_UserDepartmentService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
    public partial class view_UserDepartmentService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_UserDepartmentRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public view_UserDepartmentService(
            Iview_UserDepartmentRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }
        public override PageGridData<view_UserDepartment> GetPageData(PageDataOptions options)
        {
            //string department = "";
            string group = "";
            string UserTrueName = "";
            string user_code = "";

            string where = " ";
            List<SearchParameters> searchParametersList = new List<SearchParameters>();
            if (!string.IsNullOrEmpty(options.Wheres))
            {
                searchParametersList = options.Wheres.DeserializeObject<List<SearchParameters>>();
                if (searchParametersList != null && searchParametersList.Count > 0)
                {
                    foreach (SearchParameters sp in searchParametersList)
                    {
                        //if (sp.Name.ToLower() == "department".ToLower())
                        //{
                        //    department = sp.Value;
                        //    if (!string.IsNullOrEmpty(department))
                        //    {
                        //        where += " AND department LIKE '%" + department + "%'";
                        //    }
                        //    continue;
                        //}
                        if (sp.Name.ToLower() == "group".ToLower())
                        {
                            group = sp.Value;
                            if (!string.IsNullOrEmpty(group))
                            {
                                where += " AND group LIKE '%" + group + "%'";
                            }
                            continue;
                        }
                        if (sp.Name.ToLower() == "UserTrueName".ToLower())
                        {
                            UserTrueName = sp.Value;
                            if (!string.IsNullOrEmpty(UserTrueName))
                            {
                                where += " AND UserTrueName LIKE '%" + UserTrueName + "%'";
                            }
                            continue;
                        }
                        if (sp.Name.ToLower() == "user_code".ToLower())
                        {
                            user_code = sp.Value;
                            if (!string.IsNullOrEmpty(user_code))
                            {
                                where += " AND user_code LIKE '%" + user_code + "%'";
                            }
                            continue;
                        }
                    }
                }
            }

            QuerySql = @"SELECT *,ROW_NUMBER()over(ORDER BY user_code  desc) AS rowId  FROM view_UserDepartment WHERE 1=1  ";
            QuerySql += where;

            return base.GetPageData(options);
        }
    }
}
