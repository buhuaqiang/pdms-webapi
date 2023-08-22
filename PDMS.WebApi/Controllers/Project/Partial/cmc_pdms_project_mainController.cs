/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("cmc_pdms_project_main",Enums.ActionPermissionOptions.Search)]
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
    public partial class cmc_pdms_project_mainController
    {
        private readonly Icmc_pdms_project_mainService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public cmc_pdms_project_mainController(
            Icmc_pdms_project_mainService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }

        [ApiActionPermission()]
        [HttpPost, Route("loadDate")]
        public WebResponseContent loadDate([FromBody] SaveModel saveModel)
        {
            return Service.loadDate(saveModel);
        }

        [ApiActionPermission()]
        [HttpPost, Route("isLoadDate")]
        public int isLoadDate([FromBody] SaveModel saveModel)
        {
            return Service.isLoadDate(saveModel);
        }

        [ApiActionPermission()]
        [HttpPost, Route("eoFee")]
        public WebResponseContent eoFee([FromBody] SaveModel saveModel)
        {
            return Service.eoFee(saveModel);
        }

        [ApiActionPermission()]
        [HttpPost, Route("closeProject")]
        public WebResponseContent closeProject([FromBody] object obj)
        {
            return Service.closeProject(obj);
        }

        [ApiActionPermission()]
        [HttpPost, Route("isLoaded")]
        public int isLoaded([FromBody] SaveModel saveModel)
        {
            return Service.isLoaded(saveModel);
        }

        [ApiActionPermission()]
        [HttpPost, Route("cancelProject")]
        public WebResponseContent cancelProject([FromBody] object obj)
        {
            return Service.cancelProject(obj);
        }
    }
}
