/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹view_eo_eplController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.Project.IServices;
namespace PDMS.Project.Controllers
{
    [Route("api/view_eo_epl")]
    [PermissionTable(Name = "view_eo_epl")]
    public partial class view_eo_eplController : ApiBaseController<Iview_eo_eplService>
    {
        public view_eo_eplController(Iview_eo_eplService service)
        : base(service)
        {
        }
    }
}

