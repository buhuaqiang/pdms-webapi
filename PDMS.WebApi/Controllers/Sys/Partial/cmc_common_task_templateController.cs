/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("cmc_common_task_template",Enums.ActionPermissionOptions.Search)]
 */
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using PDMS.Entity.DomainModels;
using PDMS.Sys.IServices;
using PDMS.Core.Filters;

namespace PDMS.Sys.Controllers
{
    public partial class cmc_common_task_templateController
    {
        private readonly Icmc_common_task_templateService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public cmc_common_task_templateController(
            Icmc_common_task_templateService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }

        [Route("copyTemplate"), HttpPost]
        [ApiActionPermission()]
        public  ActionResult copyTemplate([FromBody] SaveModel saveModel)
        {
            return Json(_service.copyTemplate(saveModel));
        }

        [Route("getPageData"), HttpPost]
        [ApiActionPermission()]
        public override ActionResult GetPageData([FromBody] PageDataOptions loadData)
        {
            return base.GetPageData(loadData);
        }
    }
}
