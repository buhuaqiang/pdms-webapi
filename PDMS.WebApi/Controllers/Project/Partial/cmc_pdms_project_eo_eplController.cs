/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("cmc_pdms_project_eo_epl",Enums.ActionPermissionOptions.Search)]
 */
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using PDMS.Entity.DomainModels;
using PDMS.Project.IServices;
using PDMS.Core.Filters;

namespace PDMS.Project.Controllers
{
    public partial class cmc_pdms_project_eo_eplController
    {
        private readonly Icmc_pdms_project_eo_eplService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public cmc_pdms_project_eo_eplController(
            Icmc_pdms_project_eo_eplService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }

        //处理eo数据，
        [ApiActionPermission()]
        [HttpPost, Route("dealEoData")]
        public ActionResult dealEoData( string  date)
        {
            return Json(_service.dealEoData(date));
        }
    }
}
