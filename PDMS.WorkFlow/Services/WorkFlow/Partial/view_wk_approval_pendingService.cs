/*
 *所有关于view_wk_approval_pending类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_wk_approval_pendingService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using PDMS.WorkFlow.IRepositories;

namespace PDMS.WorkFlow.Services
{
    public partial class view_wk_approval_pendingService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_wk_approval_pendingRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public view_wk_approval_pendingService(
            Iview_wk_approval_pendingRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }


        public PageGridData<view_wk_approval_pending> GetApproveDataByTaskExec(PageDataOptions pageData)
        {
            PageGridData<view_wk_approval_pending> pageGridData = new PageGridData<view_wk_approval_pending>();
            string approve_status = "";
            string wf_epl_task_form_id = "";
            string wf_master_id = "";
            /*解析查询条件*/
            List<SearchParameters> searchParametersList = new List<SearchParameters>();
            if (!string.IsNullOrEmpty(pageData.Wheres))
            {
                searchParametersList = pageData.Wheres.DeserializeObject<List<SearchParameters>>();
                if (searchParametersList != null && searchParametersList.Count > 0)
                {

                    foreach (SearchParameters sp in searchParametersList)
                    {
                        if (sp.Name.ToLower() == "approve_status".ToLower())
                        {
                            approve_status = sp.Value;
                            continue;
                        }

                        if (sp.Name.ToLower() == "wf_master_id".ToLower())
                        {
                            wf_master_id = sp.Value;
                            continue;
                        }
                        //
                        if (sp.Name.ToLower() == "wf_epl_task_form_id".ToLower())
                        {
                            wf_epl_task_form_id = string.Format("'{0}'", sp.Value.Replace(",", "','"));
                            continue;
                        }
                    }
                }
            }
            QuerySql = @"        	
	select   ROW_NUMBER()over(order by epl.part_no ) as rowId,
  epl.part_no,epl.part_name,tsk.task_name,ptask.FormId,ptask.FormCollectionId,wftask.wf_epl_task_form_id
,master.wf_master_id,ptask.project_task_id,ptask.task_id,'查看' as detail
	from  cmc_pdms_wf_epl_task_form  wftask
	left join cmc_pdms_wf_master  master  on wftask.wf_master_id=master.wf_master_id
	left join cmc_pdms_project_task  ptask  on ptask.project_task_id=wftask.project_task_id
	left join cmc_pdms_project_epl  epl  on ptask.epl_id=epl.epl_id
	left join cmc_common_task  tsk on ptask.task_id=tsk.task_id   where 1=1      ";
            if (string.IsNullOrEmpty(approve_status) == false)
            {
                QuerySql += @$" and wftask.approve_status='{approve_status}'";
            }

            if (string.IsNullOrEmpty(wf_master_id) == false)
            {
                QuerySql += @$" and wftask.wf_master_id in ('{wf_master_id}')";
            }
            if (string.IsNullOrEmpty(wf_epl_task_form_id) == false)
            {
                QuerySql += @$" and wftask.wf_epl_task_form_id in('{wf_epl_task_form_id}')  ";
            }

            string sql = "select count(1) from (" + QuerySql + ") a";


            pageGridData.total = repository.DapperContext.ExecuteScalar(sql, null).GetInt();

            sql = @$"select * from (" +
                QuerySql + $" ) as s where s.rowId between {((pageData.Page - 1) * pageData.Rows + 1)} and {pageData.Page * pageData.Rows} ";
            pageGridData.rows = repository.DapperContext.QueryList<view_wk_approval_pending>(sql, null);
            return pageGridData;

        }


    }
}
