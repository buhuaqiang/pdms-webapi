/*
 *所有关于view_cmc_plan_execution类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_cmc_plan_executionService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
*/
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using System.Linq;
using System.Linq.Expressions;
using PDMS.Core.Extensions;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using PDMS.Project.IRepositories;
using PDMS.Core.ManageUser;

namespace PDMS.Project.Services
{
    public partial class view_cmc_plan_executionService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_cmc_plan_executionRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public view_cmc_plan_executionService(
            Iview_cmc_plan_executionRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }

        public WebResponseContent ResponseContent = new WebResponseContent();
        public override PageGridData<view_cmc_plan_execution> GetPageData(PageDataOptions options)
        {
            //查询所有del_flag!=1
            PageGridData<view_cmc_plan_execution> pageGridData = new PageGridData<view_cmc_plan_execution>();
            List<view_cmc_plan_execution> OCList = new List<view_cmc_plan_execution>();
            string status = "";

            /*解析查询条件*/
            List<SearchParameters> searchParametersList = new List<SearchParameters>();
            if (!string.IsNullOrEmpty(options.Wheres))
            {
                searchParametersList = options.Wheres.DeserializeObject<List<SearchParameters>>();
                if (searchParametersList != null && searchParametersList.Count > 0)
                {
                    foreach (SearchParameters sp in searchParametersList)
                    {
                        switch (sp.Name.ToLower())
                        {
                            case "status":
                                status = sp.Value;
                                break;               
                        }
                    }
                }
            }
            QuerySql = @"
select epl.part_no,epl.part_name,epl.company_code,epl.epl_phase, main.project_id,us.User_id ,main.GLNO,main.project_name
,main.start_date as 'p_start_date'
,main.end_date as 'p_end_date',
main.project_type 
,task.start_date as 't_start_date'
,task.end_date as 't_end_date'
,'' status
,task.warn
,task.warn_leader
from  cmc_pdms_project_task task
left join cmc_pdms_project_epl epl on epl.epl_id=task.epl_id
left join cmc_pdms_project_main main on main.project_id=epl.project_id
left join Sys_User us on epl.dev_taker_id=us.User_id
where  epl.kd_type like 'D%'  and  epl.epl_phase='02'  and epl.task_define_approve_status='01'
and task.start_date  is not null  and task.end_date is not null 
 ";
            UserInfo userList = UserContext.Current.UserInfo;
            var User_Id = userList.User_Id;
            if (User_Id != 1)
            {
                QuerySql += @$" and User_id='{User_Id}'";
            }      
            if (!string.IsNullOrEmpty(status))
            {
                if (status == "0")
                {
                    QuerySql += @" and DATEDIFF(day, GETDATE(), t_end_date)<=warn and  GETDATE()<= t_end_date";
                }
                else
                {
                    QuerySql += @"  and DATEDIFF(day, t_end_date , GETDATE())>=warn_leader";
                }
            }
            string sql = $@"SELECT Count(*) as dbid  FROM ( {QuerySql}) b ";
            int TotalList =Convert.ToInt32(repository.DapperContext.ExecuteScalar(sql, null));
            var total = TotalList;
            if (string.IsNullOrEmpty(options.Sort))
            {
                options.Sort = "glno";
            }

            var orderBy = $"order by {options.Sort} {options.Order}";
            QuerySql = $@"SELECT *,ROW_NUMBER()over(order by glno  desc) as rowId  FROM ( {QuerySql}) b ";
            string entitySql = @$"select * from (" +
             QuerySql + $" ) as s where s.rowId between {((options.Page - 1) * options.Rows + 1)} and {options.Page * options.Rows}    {orderBy}";
            OCList = repository.DapperContext.QueryList<view_cmc_plan_execution>(entitySql, null).ToList();
            pageGridData.rows = OCList;
            pageGridData.total = total;
            return pageGridData;

            //return base.GetPageData(options);
        }
    }
}
