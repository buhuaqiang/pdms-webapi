/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹Sys_schedule_logController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.Sys.IServices;
namespace PDMS.Sys.Controllers
{
    [Route("api/Sys_schedule_log")]
    [PermissionTable(Name = "Sys_schedule_log")]
    public partial class Sys_schedule_logController : ApiBaseController<ISys_schedule_logService>
    {
        public Sys_schedule_logController(ISys_schedule_logService service)
        : base(service)
        {
        }
    }
}

