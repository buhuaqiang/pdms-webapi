/*
*所有关于view_cmc_plan_exec_gantt类的业务代码接口应在此处编写
*/
using PDMS.Core.BaseProvider;
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
using static PDMS.Project.Services.view_cmc_plan_exec_ganttService;

namespace PDMS.Project.IServices
{
    public partial interface Iview_cmc_plan_exec_ganttService
    {
      public   List<GanttInfo> BindGanttInfo(object saveModel);
    }
 }
