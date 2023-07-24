/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("view_cmc_plan_exec_gantt",Enums.ActionPermissionOptions.Search)]
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
using static PDMS.Project.Services.view_cmc_plan_exec_ganttService;

namespace PDMS.Project.Controllers
{
    public partial class view_cmc_plan_exec_ganttController
    {
        private readonly Iview_cmc_plan_exec_ganttService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public view_cmc_plan_exec_ganttController(
            Iview_cmc_plan_exec_ganttService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }

         
        [ApiActionPermission]
        [HttpPost, Route("BindGanttInfo")]
        public ActionResult BindGanttInfo([FromBody] object saveModel)
        {
            List<GanttInfo> data = Service.BindGanttInfo(saveModel);
            return Json(data);
        }

        [ApiActionPermission()]
        [HttpGet,Route("setAuditKey")]
        public ActionResult setAuditKey(string project_task_id)
        {
            return Json("");
        }

        [ApiActionPermission()]
        [HttpPost, Route("saveFormData")]
        public ActionResult saveFormData([FromBody] object saveModel)
        {
            return Json("");
        }
    }
}
