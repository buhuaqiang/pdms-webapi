/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("view_cmc_project_task_manage",Enums.ActionPermissionOptions.Search)]
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
    public partial class view_cmc_project_task_manageController
    {
        private readonly Iview_cmc_project_task_manageService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public view_cmc_project_task_manageController(
            Iview_cmc_project_task_manageService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }

        [Route("submitReview"), HttpPost]
        [ApiActionPermission()]
        public ActionResult submit([FromBody] Object obj)
        {
            List<view_cmc_project_task_manage> list = Service.submitReview(obj);
            return Json(list);
        }

        [Route("SetPartTakerData"), HttpPost]
        [ApiActionPermission()]
        public ActionResult SetPartTakerData([FromBody] Object obj)
        {
            return Json(Service.setPartTaker(obj));
        }

        [Route("updateMissionData"), HttpPost]
        [ApiActionPermission()]
        public ActionResult updateMissionData([FromBody] Object obj)
        {
            return Json(Service.updateMissionData(obj));
        }

        [Route("addMissionData"), HttpPost]
        [ApiActionPermission()]
        public ActionResult addMissionData([FromBody] Object obj)
        {
            return Json(Service.addMissionData(obj));
        }

    }
}
