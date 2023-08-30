/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("view_cmc_project_task_manageN",Enums.ActionPermissionOptions.Search)]
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
    public partial class view_cmc_project_task_manageNController
    {
        private readonly Iview_cmc_project_task_manageNService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public view_cmc_project_task_manageNController(
            Iview_cmc_project_task_manageNService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }

        [ApiActionPermission()]
        [Route("submitReview"), HttpPost]
        public WebResponseContent submitReview([FromBody] SaveModel obj)
        {
            return Service.submitReview(obj);
        }
        [ApiActionPermission()]
        [Route("submit"), HttpPost]
        public WebResponseContent submit([FromBody] SaveModel obj)
        {
            return Service.submit(obj);
        }

        [ApiActionPermission()]
        [Route("SetPartTakerData"), HttpPost]
        public WebResponseContent SetPartTakerData([FromBody] SaveModel obj)
        {
            return Service.setPartTaker(obj);
        }

        [ApiActionPermission()]
        [Route("updateMissionData"), HttpPost]
        public WebResponseContent updateMissionData([FromBody] SaveModel obj)
        {
            return Service.updateMissionData(obj);
        }

        [ApiActionPermission()]
        [Route("addMissionData"), HttpPost]
        public WebResponseContent addMissionData([FromBody] SaveModel obj)
        {
            return Service.addMissionData(obj);
        }

        [ApiActionPermission()]
        [Route("deleteMissionData"), HttpPost]
        public WebResponseContent deleteMissionData([FromBody] SaveModel obj)
        {
            return Service.deleteMissionData(obj);
        }
    }
}
