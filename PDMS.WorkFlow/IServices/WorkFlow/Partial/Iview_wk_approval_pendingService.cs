/*
*所有关于view_wk_approval_pending类的业务代码接口应在此处编写
*/
using PDMS.Core.BaseProvider;
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
namespace PDMS.WorkFlow.IServices
{
    public partial interface Iview_wk_approval_pendingService
    {
        /// <summary>
        /// 查詢群組內產品(customer join group頁面用的查詢方法)
        /// </summary>
        /// <param name="pageData"></param>
        /// <returns></returns>
        public PageGridData<view_wk_approval_pending> GetApproveDataByTaskExec(PageDataOptions pageData);

        public PageGridData<view_wk_approval_eplOrg> GetApproveDataByEplOrg(PageDataOptions pageData);

        public PageGridData<view_wk_approval_eplFs> GetApproveDataByEplFs(PageDataOptions pageData);

        public PageGridData<view_pdms_group_epl_fs> GetGroupEplFs(PageDataOptions pageData);

        public PageGridData<view_pdms_group_epl_fs> GetOrgEplFs(PageDataOptions pageData);

        public PageGridData<view_wk_approval_eplOrg> GetApproveDataByMainProject(PageDataOptions pageData);

        //總審批流程
        public WebResponseContent ApproveData(SaveModel saveModel);

        //批量批流程
        public WebResponseContent BatchApproveData(SaveModel saveModel);

    }
 }
