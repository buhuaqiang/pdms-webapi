/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹cmc_common_task_templateController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.Sys.IServices;
namespace PDMS.Sys.Controllers
{
    [Route("api/cmc_common_task_template")]
    [PermissionTable(Name = "cmc_common_task_template")]
    public partial class cmc_common_task_templateController : ApiBaseController<Icmc_common_task_templateService>
    {
        public cmc_common_task_templateController(Icmc_common_task_templateService service)
        : base(service)
        {
        }
    }
}

