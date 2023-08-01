/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("view_cmc_project_pm",Enums.ActionPermissionOptions.Search)]
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
using PDMS.Core.Extensions;
using PDMS.Core.Utilities;
using PDMS.Core.Utilities;

namespace PDMS.Project.Controllers
{
    public partial class view_cmc_project_pmController
    {
        private readonly Iview_cmc_project_pmService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public view_cmc_project_pmController(
            Iview_cmc_project_pmService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }

        //提交功能
        [ApiActionPermission()]
        [HttpPost, Route("release")]
        public WebResponseContent release([FromBody] SaveModel saveModel)
        {
            return Service.release(saveModel);
        }
        [ApiActionPermission()]
        [HttpGet, Route("DownLoadTemplate")]
        public override ActionResult DownLoadTemplate()
        {
            return base.DownLoadTemplate();
        }
        [ApiActionPermission()]
        [HttpPost,Route("Import")]
        public override ActionResult Import(List<IFormFile> fileInput)
        {
            return Json(_service.Upload(fileInput));
        }

        [ApiActionPermission()]
        [HttpPost, Route("GetPageData")]
        public  override ActionResult GetPageData(PageDataOptions options)
        {
            return base.GetPageData(options);
        }

        [ApiActionPermission()]
        [HttpPost, Route("getProjectInfoFromCMS")]
        public ActionResult getProjectInfoFromCMS(string glno)
        {

            return Json(_service.getProjectInfoFromCMS(glno));
        }
        [ApiActionPermission()]
        [HttpPost, Route("getProjectOrgFromCMS")]
        public ActionResult getProjectOrgFromCMS(string glno)
        {

            return Json(_service.getProjectOrgFromCMS(glno));
        }

        [ApiActionPermission()]
        [HttpPost, Route("getEPLFromCMS")]
        public ActionResult getEPLFromCMS(string proid)
        {

            return Json(_service.getEPLFromCMS(proid));
        }

    }
}
