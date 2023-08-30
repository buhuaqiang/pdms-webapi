/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("view_cmc_group_model_set",Enums.ActionPermissionOptions.Search)]
 */
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using PDMS.Entity.DomainModels;
using PDMS.Sys.IServices;
using PDMS.Core.Filters;

namespace PDMS.Sys.Controllers
{
    public partial class view_cmc_group_model_setController
    {
        private readonly Iview_cmc_group_model_setService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Icmc_group_model_setService group_model_setService;

        [ActivatorUtilitiesConstructor]
        public view_cmc_group_model_setController(
            Iview_cmc_group_model_setService service,
            Icmc_group_model_setService setService,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
            group_model_setService = setService;
        }
        [ApiActionPermission()]
        [Route("dealUnSetGroup"), HttpPost]
        public  ActionResult dealUnSetGroup()
        {
            return Json(group_model_setService.dealUnSetGroup());
        }
    }
}
