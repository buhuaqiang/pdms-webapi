/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("FormCollectionObject",Enums.ActionPermissionOptions.Search)]
 */
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using PDMS.Entity.DomainModels;
using PDMS.System.IServices;
using PDMS.Core.Filters;

namespace PDMS.System.Controllers
{
    public partial class FormCollectionObjectController
    {
        private readonly IFormCollectionObjectService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public FormCollectionObjectController( 
            IFormCollectionObjectService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }
        [ApiActionPermission]
        [HttpGet, Route("GetFormCollectionObjectByCollectionId")]
        public ActionResult GetFormCollectionObjectByCollectionId(string collectionId)
        {
            return Json(_service.GetFormCollectionObjectByCollectionId(collectionId));
        }
    }
}
