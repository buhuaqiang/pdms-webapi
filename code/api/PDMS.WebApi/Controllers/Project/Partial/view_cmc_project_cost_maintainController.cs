/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("view_cmc_project_cost_maintain",Enums.ActionPermissionOptions.Search)]
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
    public partial class view_cmc_project_cost_maintainController
    {
        private readonly Iview_cmc_project_cost_maintainService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public view_cmc_project_cost_maintainController(
            Iview_cmc_project_cost_maintainService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }
        [ApiActionPermission()]
        [HttpPost, Route("save")]
        public ActionResult save1([FromBody] SaveModel saveModel)
        {
            return base.Update(saveModel);
        }

        [ApiActionPermission()]
        [HttpPost, Route("costConfirm")]
        public ActionResult costConfirm([FromBody] object[] keys)
        {
            return Json(_service.costConfirm(keys));
        }

    }
}
