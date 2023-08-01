/*
*所有关于view_cmc_project_task_manageN类的业务代码接口应在此处编写
*/
using PDMS.Core.BaseProvider;
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
namespace PDMS.Project.IServices
{
    public partial interface Iview_cmc_project_task_manageNService
    {
        public WebResponseContent submitReview(SaveModel obj);
        public WebResponseContent setPartTaker(SaveModel obj);
        public WebResponseContent updateMissionData(SaveModel obj);
        public WebResponseContent addMissionData(SaveModel obj);
        public WebResponseContent deleteMissionData(SaveModel obj);

    }
 }
