using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using PDMS.Core.Controllers.Basic;
using PDMS.Core.Enums;
using PDMS.Core.Filters;
using PDMS.Entity.DomainModels;
using PDMS.System.IServices;

namespace PDMS.System.Controllers
{
    [Route("api/menu")]
    [ApiController, JWTAuthorize()]
    public partial class Sys_MenuController : ApiBaseController<ISys_MenuService>
    {
        private ISys_MenuService _service { get; set; }
        public Sys_MenuController(ISys_MenuService service) :
            base("System", "System", "Sys_Menu", service)
        {
            _service = service;
        } 
    }
}
