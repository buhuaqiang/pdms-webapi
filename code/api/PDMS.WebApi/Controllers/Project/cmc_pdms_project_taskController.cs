/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹cmc_pdms_project_taskController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.Project.IServices;
namespace PDMS.Project.Controllers
{
    [Route("api/cmc_pdms_project_task")]
    [PermissionTable(Name = "cmc_pdms_project_task")]
    public partial class cmc_pdms_project_taskController : ApiBaseController<Icmc_pdms_project_taskService>
    {
        public cmc_pdms_project_taskController(Icmc_pdms_project_taskService service)
        : base(service)
        {
        }
    }
}

