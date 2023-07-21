/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹view_UserDepartmentController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.Project.IServices;
namespace PDMS.Project.Controllers
{
    [Route("api/view_UserDepartment")]
    [PermissionTable(Name = "view_UserDepartment")]
    public partial class view_UserDepartmentController : ApiBaseController<Iview_UserDepartmentService>
    {
        public view_UserDepartmentController(Iview_UserDepartmentService service)
        : base(service)
        {
        }
    }
}

