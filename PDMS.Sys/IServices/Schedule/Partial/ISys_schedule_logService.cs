/*
*所有关于Sys_schedule_log类的业务代码接口应在此处编写
*/
using PDMS.Core.BaseProvider;
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
using System.Collections.Generic;

namespace PDMS.Sys.IServices
{
    public partial interface ISys_schedule_logService
    {
        List<Sys_schedule_log> ScheduleLogData(string task_name);
    }
 }
