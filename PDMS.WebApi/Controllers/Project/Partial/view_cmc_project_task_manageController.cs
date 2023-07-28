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
using PDMS.Core.Utilities;

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

        [ApiActionPermission()]
        [Route("submitReview"), HttpPost]
        public ActionResult submit([FromBody] Object obj)
        {
            List<view_cmc_project_task_manage> list = Service.submitReview(obj);
            return Json(list);
        }

        [ApiActionPermission()]
        [Route("SetPartTakerData"), HttpPost]
        public WebResponseContent SetPartTakerData([FromBody] Object obj)
        {
            Console.WriteLine("SetPartTakerData1");
            return Service.setPartTaker(obj);
        }

        [ApiActionPermission()]
        [Route("updateMissionData"), HttpPost]
        public WebResponseContent updateMissionData([FromBody] Object obj)
        {
            return Service.updateMissionData(obj);
        }

        [ApiActionPermission()]
        [Route("addMissionData"), HttpPost]
        public WebResponseContent addMissionData([FromBody] Object obj)
        {
            return Service.addMissionData(obj);
        }

    }
}
