using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using PDMS.Core.Controllers.Basic;
using PDMS.Core.Enums;
using PDMS.Core.Filters;
using PDMS.Entity.AttributeManager;
using PDMS.Entity.DomainModels;
using PDMS.System.IServices;

namespace PDMS.System.Controllers
{
    [Route("api/Sys_Role")]
    [PermissionTable(Name = "Sys_Role")]
    public partial class Sys_RoleController : ApiBaseController<ISys_RoleService>
    {
        public Sys_RoleController(ISys_RoleService service)
        : base("System", "System", "Sys_Role", service)
        {

        }
    }
}


