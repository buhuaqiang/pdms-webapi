/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("cmc_common_template_mapping",Enums.ActionPermissionOptions.Search)]
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
    public partial class cmc_common_template_mappingController
    {
        private readonly Icmc_common_template_mappingService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public cmc_common_template_mappingController(
            Icmc_common_template_mappingService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }


        // 
        //批量新增任務數據
        [ApiActionPermission()]
        [HttpPost, Route("bathAddData")]
        public ActionResult bathSaveCheckData([FromBody] object saveModel)
        {
            return Json(_service.bathAddData(saveModel));
        }
        // 
        //批量修改任務數據,页面保存按钮调用方法
        [ApiActionPermission()]
        [HttpPost, Route("bathUpdateData")]
        public ActionResult bathUpdateData([FromBody] object saveModel)
        {
            return Json(_service.bathUpdateData(saveModel));
        }

        //批量修改任務属性（是否可删除，是否重点审核）
        [ApiActionPermission()]
        [HttpPost, Route("bathSet")]
        public ActionResult bathSeta([FromBody] object saveModel)
        {
            return Json(_service.bathSet(saveModel));
        }
        [ApiActionPermission()]
        [HttpPost, Route("del")]
        public override ActionResult Del([FromBody] object[] keys)
        {
            return base.Del(keys);
        }
    }
}
