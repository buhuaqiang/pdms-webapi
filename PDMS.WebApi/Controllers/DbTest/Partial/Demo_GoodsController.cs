/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("Demo_Goods",Enums.ActionPermissionOptions.Search)]
 */
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using PDMS.Entity.DomainModels;
using PDMS.DbTest.IServices;
using PDMS.DbTest.IRepositories;

namespace PDMS.DbTest.Controllers
{
    public partial class Demo_GoodsController
    {
        private readonly IDemo_GoodsService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly IDemo_GoodsRepository _goodsRepository;
        [ActivatorUtilitiesConstructor]
        public Demo_GoodsController(
            IDemo_GoodsService service,
            IHttpContextAccessor httpContextAccessor,
            IDemo_GoodsRepository goodsRepository
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
            _goodsRepository = goodsRepository;
        }
        [Route("updateStatus"), HttpGet]
        public IActionResult UpdateStatus(Guid goodsId, int enable)
        {
            Demo_Goods goods = new Demo_Goods()
            {
                GoodsId = goodsId,
                Enable = enable
            };
            _goodsRepository.Update(goods, x => new { x.Enable }, true);
            return Content("修改成功");
        }
    }
}
