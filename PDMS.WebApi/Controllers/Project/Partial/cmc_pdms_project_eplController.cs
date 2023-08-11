/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("cmc_pdms_project_epl",Enums.ActionPermissionOptions.Search)]
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
    public partial class cmc_pdms_project_eplController
    {
        private readonly Icmc_pdms_project_eplService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public cmc_pdms_project_eplController(
            Icmc_pdms_project_eplService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }

        //判斷選取數據的kd件、組別是否維護完整
        [ApiActionPermission()]
        [HttpPost, Route("getDepartCount")]
        public int getDepartCount([FromBody] Object obj)
        {
            return Service.getDepartCount(obj);
        }

        //部門定版
        [ApiActionPermission()]
        [HttpPost, Route("departFinal")]
        public WebResponseContent departFinal([FromBody] Object obj)
        {
            return Service.departFinal(obj);
        }
        //判斷各部門是否都定版完成
        [ApiActionPermission()]
        [HttpPost, Route("getDepartFinaliza")]
        public int getDepartFinaliza([FromBody] Object obj)
        {
            return Service.getDepartFinaliza(obj);
        }

        //判斷各部門的新件的零件號是否重複
        [ApiActionPermission()]
        [HttpPost, Route("getRepeatPart")]
        public int getRepeatPart([FromBody] Object obj)
        {
            return Service.getRepeatPart(obj);
        }

        //最終定版
        [ApiActionPermission()]
        [HttpPost, Route("finaliza")]
        public WebResponseContent finaliza([FromBody] Object obj)
        {
            return Service.finaliza(obj);
        }

        //根據查詢結果批量維護
        [ApiActionPermission()]
        [HttpPost, Route("saveAll")]
        public WebResponseContent saveAll([FromBody] Object obj)
        {
            return Service.saveAll(obj);
        }
        //獲取定版狀態
        [ApiActionPermission()]
        [HttpPost, Route("getFinalStatus")]
        public int getFinalStatus([FromBody] Object obj)
        {
            return Service.getFinalStatus(obj);
        }

        //查詢細車型
        [ApiActionPermission()]
        [HttpPost, Route("getCarModel")]
        public List<cmc_pdms_project_epl_car_model> getCarModel([FromBody] Object obj)
        {
            return Service.getCarModel(obj);
        }

    }
}
