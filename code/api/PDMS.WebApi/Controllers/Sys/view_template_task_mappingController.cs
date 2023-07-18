/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹view_template_task_mappingController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.Sys.IServices;
namespace PDMS.Sys.Controllers
{
    [Route("api/view_template_task_mapping")]
    [PermissionTable(Name = "view_template_task_mapping")]
    public partial class view_template_task_mappingController : ApiBaseController<Iview_template_task_mappingService>
    {
        public view_template_task_mappingController(Iview_template_task_mappingService service)
        : base(service)
        {
        }
    }
}

