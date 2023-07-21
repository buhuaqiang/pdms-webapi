/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("view_cmc_project_epl",Enums.ActionPermissionOptions.Search)]
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
using PDMS.Core.Enums;

namespace PDMS.Project.Controllers
{
    public partial class view_cmc_project_eplController
    {
        private readonly Iview_cmc_project_eplService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public view_cmc_project_eplController(
            Iview_cmc_project_eplService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }

        //判斷選取數據的kd件、組別是否維護完整
        [ApiActionPermission]
        [HttpPost, Route("getEplCount")]
        public int getEplCount([FromBody] SaveModel saveModel)
        {
            return Service.getEplCount(saveModel);
        }

        //提交功能
        [ApiActionPermission]
        [HttpPost, Route("submit")]
        public WebResponseContent submit([FromBody] SaveModel saveModel)
        {
            return Service.submit(saveModel);
        }


        [HttpPost, Route("save")]
        public  ActionResult save1([FromBody] SaveModel saveModel)
        {
            return base.Update(saveModel);
        }
    }
}
