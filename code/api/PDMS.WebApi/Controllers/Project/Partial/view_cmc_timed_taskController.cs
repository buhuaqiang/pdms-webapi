/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("view_cmc_timed_task",Enums.ActionPermissionOptions.Search)]
 */
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using PDMS.Entity.DomainModels;
using PDMS.Project.IServices;
using Microsoft.AspNetCore.Authorization;

namespace PDMS.Project.Controllers
{
    public partial class view_cmc_timed_taskController
    {
        private readonly Iview_cmc_timed_taskService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public view_cmc_timed_taskController(
            Iview_cmc_timed_taskService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }


        //假EPL獲取，WebService方式
        [HttpPost, Route("ImportEplByFalse"), AllowAnonymous]
        public async Task<IActionResult> ImportEplByFalse()
        {
            return Json(_service.ImportEplByFalse(HttpContext.Request.Headers));
        }

        //正式EPL--FTP獲取
        [HttpPost, Route("ImportEplByPLM"), AllowAnonymous]
        public async Task<IActionResult> ImportEplByPLM()
        {
            return Json(_service.ImportEplByPLM(HttpContext.Request.Headers));
        }

        //定時更新任務完成狀態

        [HttpPost, Route("UpdateTaskStatus"), AllowAnonymous]
        public async Task<IActionResult> UpdateTaskStatus()
        {
            return Json(_service.UpdateTaskStatus(HttpContext.Request.Headers));
        }
    }
}
