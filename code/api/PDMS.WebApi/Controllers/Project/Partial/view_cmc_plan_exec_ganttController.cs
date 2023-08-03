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
using PDMS.System.Services;
using Microsoft.AspNetCore.Mvc.RazorPages;

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


        /// <summary>
        /// 雙擊設置重點項目
        /// </summary>
        /// <param name="project_task_id"></param>
        /// <returns></returns>
        [ApiActionPermission()]
        [HttpGet,Route("setAuditKey")]
        public ActionResult setAuditKey(string project_task_id="")
        {
            return Json(Service.setAuditKey(project_task_id));
        }

        //保存
        [ApiActionPermission()]
        [HttpPost, Route("saveFormData")]
        public ActionResult saveFormData([FromBody] SaveModel saveModel)
        {
            return Json(Service.TsSave(saveModel, "04"));
        }


        //暫存
        [ApiActionPermission()]
        [HttpPost, Route("TsSave")]
        public IActionResult TsSave([FromBody] SaveModel saveModel)
        {      
            return Json(Service.TsSave(saveModel, "00"));
        }

        //保存並提交
        [ApiActionPermission()]
        [HttpPost, Route("SaveAndSubmit")]
        public IActionResult SaveAndSubmit([FromBody] SaveModel saveModel)
        {
            //執行保存按鈕走基礎邏輯，審核狀態調整為01
            var info = Service.TsSave(saveModel, "01");
            //再走審批流程
            return Json(Service.SaveAndSubmit(saveModel, "01"));
        }


        //批量提交
        [ApiActionPermission()]
        [HttpPost, Route("BulkSubmit")]
        public IActionResult BulkSubmit([FromBody] SaveModel saveModel)
        {
            return Json("");
            //return Json(Service.SaveAndSubmit(saveModel, "01"));
        }



        //修改任務時間
        [ApiActionPermission()]
        [HttpPost, Route("UpdateTaskDate")]
        public IActionResult UpdateTaskDate([FromBody] SaveModel saveModel)
        {
            return Json(Service.UpdateTaskDate(saveModel));
        }

        //表單上傳文件
        [ApiActionPermission()]
        [HttpPost, Route("UpdateInfo")]
        public ActionResult UpdateInfo(List<IFormFile> fileInput)
        {
            return Json(Service.Upload(fileInput));
        }

    }
}
