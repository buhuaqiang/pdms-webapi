﻿
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Caching.Memory;
using System.Threading.Tasks;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.Entity.DomainModels;
using PDMS.System.IServices;

namespace PDMS.System.Controllers
{
    [Route("api/Sys_User")]
    [PermissionTable(Name = "Sys_User")]
    public partial class Sys_UserController : ApiBaseController<ISys_UserService>
    {
        public Sys_UserController(ISys_UserService service)
        : base("System", "System", "Sys_User", service)
        {
            //, IMemoryCache cache
        }
    }
}
