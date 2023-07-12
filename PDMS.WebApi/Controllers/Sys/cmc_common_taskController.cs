/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹cmc_common_taskController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.Sys.IServices;
namespace PDMS.Sys.Controllers
{
    [Route("api/cmc_common_task")]
    [PermissionTable(Name = "cmc_common_task")]
    public partial class cmc_common_taskController : ApiBaseController<Icmc_common_taskService>
    {
        public cmc_common_taskController(Icmc_common_taskService service)
        : base(service)
        {
        }
    }
}

