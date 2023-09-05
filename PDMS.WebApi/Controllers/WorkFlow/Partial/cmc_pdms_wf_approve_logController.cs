/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("cmc_pdms_wf_approve_log",Enums.ActionPermissionOptions.Search)]
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

namespace PDMS.WorkFlow.Controllers
{
    public partial class cmc_pdms_wf_approve_logController
    {
        private readonly Icmc_pdms_wf_approve_logService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public cmc_pdms_wf_approve_logController(
            Icmc_pdms_wf_approve_logService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }

        [ApiActionPermission()]
        [HttpPost, Route("GetPageDataByMasterid")]
        public  ActionResult GetPageDataByMasterid([FromBody] PageDataOptions loadData)
        {
            return base.GetPageData(loadData);
        }
    }
}
