/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("view_template_task_mapping",Enums.ActionPermissionOptions.Search)]
 */
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using PDMS.Entity.DomainModels;
using PDMS.Sys.IServices;
using PDMS.Core.Extensions;
using System.Linq;
using OfficeOpenXml.FormulaParsing.Excel.Functions.DateTime;
using PDMS.Core.Filters;

namespace PDMS.Sys.Controllers
{
    public partial class view_template_task_mappingController
    {
        private readonly Iview_template_task_mappingService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public view_template_task_mappingController(
            Iview_template_task_mappingService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }

        

        [Route("getTemplateTaskList"), HttpPost]
        [ApiActionPermission()]
        public ActionResult GetList([FromBody] object saveModel)
        {
            List<view_template_task_mapping> list = _service.getTaskListByCondition(saveModel);
            return Json(list);
        }

        [Route("getTemplateTaskListProject"), HttpPost]
        [ApiActionPermission()]
        public ActionResult GetTaskList([FromBody] object saveModel)
        {
            List<view_template_task_mapping> list = _service.getTaskListForProject(saveModel);
            return Json(list);
        }
    }
}
