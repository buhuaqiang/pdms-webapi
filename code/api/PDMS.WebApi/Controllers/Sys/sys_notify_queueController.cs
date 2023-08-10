/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹sys_notify_queueController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.Sys.IServices;
namespace PDMS.Sys.Controllers
{
    [Route("api/sys_notify_queue")]
    [PermissionTable(Name = "sys_notify_queue")]
    public partial class sys_notify_queueController : ApiBaseController<Isys_notify_queueService>
    {
        public sys_notify_queueController(Isys_notify_queueService service)
        : base(service)
        {
        }
    }
}

