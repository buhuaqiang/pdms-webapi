/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("cmc_fs_form_data",Enums.ActionPermissionOptions.Search)]
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

namespace PDMS.Project.Controllers
{
    public partial class cmc_fs_form_dataController
    {
        private readonly Icmc_fs_form_dataService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public cmc_fs_form_dataController(
            Icmc_fs_form_dataService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }
        [ApiActionPermission()]
        [HttpPost, Route("GetPageData")]
        public override ActionResult GetPageData([FromBody] PageDataOptions loadData)
        {
            return base.GetPageData(loadData);
        }

        [ApiActionPermission()]
        [HttpPost, Route("Add")]
        public override ActionResult Add([FromBody] SaveModel saveModel)
        {
            return base.Add(saveModel);
        }
        [ApiActionPermission()]
        [HttpPost, Route("Update")]
        public override ActionResult Update([FromBody] SaveModel saveModel)
        {
            return base.Update(saveModel);
        }
    }

}
