/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("Sys_Region",Enums.ActionPermissionOptions.Search)]
 */
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using PDMS.Entity.DomainModels;
using PDMS.Sys.IServices;
using PDMS.Sys.IRepositories;
using System.Linq;
using Microsoft.EntityFrameworkCore;

namespace PDMS.Sys.Controllers
{
    public partial class Sys_RegionController
    {
        private readonly ISys_RegionService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly ISys_RegionRepository _regionRepository;
        [ActivatorUtilitiesConstructor]
        public Sys_RegionController(
            ISys_RegionService service,
            IHttpContextAccessor httpContextAccessor,
            ISys_RegionRepository regionRepository
        )
        : base(service)
        {
            _service = service;
            _regionRepository = regionRepository;
            _httpContextAccessor = httpContextAccessor;
        }

        /// <summary>
        /// 获取省、市下面的所有数据
        /// </summary>
        /// <param name="code"></param>
        /// <returns></returns>
        [HttpGet, Route("getList")]
        public async Task<IActionResult> GetList(int code)
        {
            return Json(await _regionRepository.FindAsIQueryable(x => x.parentId == code)
                  .Select(s => new
                  {
                      key = s.code,
                      value = s.name
                  }).ToListAsync());
        }
    }
}
