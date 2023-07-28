/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹view_cmc_project_task_manageNController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.Project.IServices;
namespace PDMS.Project.Controllers
{
    [Route("api/view_cmc_project_task_manageN")]
    [PermissionTable(Name = "view_cmc_project_task_manageN")]
    public partial class view_cmc_project_task_manageNController : ApiBaseController<Iview_cmc_project_task_manageNService>
    {
        public view_cmc_project_task_manageNController(Iview_cmc_project_task_manageNService service)
        : base(service)
        {
        }
    }
}

