/*
*所有关于view_cmc_project_task_manage类的业务代码接口应在此处编写
*/
using PDMS.Core.BaseProvider;
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
namespace PDMS.Project.IServices
{
    public partial interface Iview_cmc_project_task_manageService
    {
        public List<view_cmc_project_task_manage> submitReview(Object obj);
        public WebResponseContent setPartTaker(Object obj);
        public WebResponseContent updateMissionData(Object obj);
        public WebResponseContent addMissionData(Object obj);
    }
 }
