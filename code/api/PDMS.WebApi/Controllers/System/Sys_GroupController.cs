/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹Sys_GroupController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.System.IServices;
namespace PDMS.System.Controllers
{
    [Route("api/Sys_Group")]
    [PermissionTable(Name = "Sys_Group")]
    public partial class Sys_GroupController : ApiBaseController<ISys_GroupService>
    {
        public Sys_GroupController(ISys_GroupService service)
        : base(service)
        {
        }
    }
}

