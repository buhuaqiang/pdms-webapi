/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("view_wk_approval_pending",Enums.ActionPermissionOptions.Search)]
 */
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using PDMS.Entity.DomainModels;
using PDMS.WorkFlow.IServices;
using PDMS.Core.Filters;
using PDMS.Core.Utilities;

namespace PDMS.WorkFlow.Controllers
{
    public partial class view_wk_approval_pendingController
    {
        private readonly Iview_wk_approval_pendingService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public view_wk_approval_pendingController(
            Iview_wk_approval_pendingService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }


        //獲取待審批 頁面
        [ApiActionPermission]
        [HttpPost, Route("GetApproveDataByTaskExec")]
        public ActionResult GetApproveDataByTaskExec([FromBody] PageDataOptions loadData)
        {
            return Json(_service.GetApproveDataByTaskExec(loadData));
        }

        //獲取部門變更待審批頁面
        [ApiActionPermission]
        [HttpPost, Route("GetApproveDataByEplOrg")]
        public ActionResult GetApproveDataByEplOrg([FromBody] PageDataOptions loadData)
        {
            return Json(_service.GetApproveDataByEplOrg(loadData));
        }
        //獲取成本编列待審批頁面
        [ApiActionPermission]
        [HttpPost, Route("GetApproveDataByEplFs")]
        public ActionResult GetApproveDataByEplFs([FromBody] PageDataOptions loadData)
        {
            return Json(_service.GetApproveDataByEplFs(loadData));
        }
        //獲取成本编列组頁面
        [ApiActionPermission]
        [HttpPost, Route("GetGroupEplFs")]
        public ActionResult GetGroupEplFs([FromBody] PageDataOptions loadData)
        {
            return Json(_service.GetGroupEplFs(loadData));
        }

        //獲取主工作計畫審批頁面
        [ApiActionPermission]
        [HttpPost, Route("GetApproveDataByMainProject")]
        public ActionResult GetApproveDataByMainProject([FromBody] PageDataOptions loadData)
        {
            return Json(_service.GetApproveDataByMainProject(loadData));
        }


        //總審批流程 通過Apply_type區分
        [ApiActionPermission]
        [HttpPost, Route("ApproveData")]
        public ActionResult ApproveData([FromBody] SaveModel saveModel)
        {
            return Json(_service.ApproveData(saveModel));
        }
        //總審批流程 通過Apply_type區分
        [ApiActionPermission]
        [HttpPost, Route("BatchApproveData")]
        public ActionResult BatchApproveData([FromBody] SaveModel saveModel)
        {
            return Json(_service.BatchApproveData(saveModel));
        }
    }


  
}
