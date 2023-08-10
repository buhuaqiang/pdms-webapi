/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("Sys_schedule_log",Enums.ActionPermissionOptions.Search)]
 */
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using PDMS.Entity.DomainModels;
using PDMS.Sys.IServices;
using Microsoft.AspNetCore.Authorization;
using System.Collections;
using PDMS.Core.Filters;
using Autofac.Core;

namespace PDMS.Sys.Controllers
{
    [JWTAuthorize]
    [Route("api/Viat_QUartz")]
    public partial class Sys_schedule_logController
    {
        private readonly ISys_schedule_logService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Isys_notify_queueService _queue;

        [ActivatorUtilitiesConstructor]
        public Sys_schedule_logController(
            ISys_schedule_logService service,
            IHttpContextAccessor httpContextAccessor,
             Isys_notify_queueService queue
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }

        [HttpGet, Route("ScheduleLogData"), AllowAnonymous]
        public ActionResult ScheduleLogData(string task_name)
        {
            return Json(Service.ScheduleLogData(task_name));
        }

        [HttpPost, Route("EmailJob"), AllowAnonymous]
        public ActionResult EmailJob()
        {
            return Json(_queue.MailJob(HttpContext.Request.Headers));
        }
    }
}
