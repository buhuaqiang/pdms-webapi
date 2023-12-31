/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("Sys_Department",Enums.ActionPermissionOptions.Search)]
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
using PDMS.Core.Enums;
using PDMS.Core.Extensions;
using PDMS.System.IRepositories;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using PDMS.Core.ManageUser;

namespace PDMS.System.Controllers
{
    public partial class Sys_DepartmentController
    {
        private readonly ISys_DepartmentService _service;//访问业务代码
        private readonly ISys_DepartmentRepository _repository;
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public Sys_DepartmentController(
            ISys_DepartmentService service,
             ISys_DepartmentRepository repository,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _repository = repository;
            _httpContextAccessor = httpContextAccessor;
        }


        /// <summary>
        /// treetable 获取子节点数据(2021.05.02)
        /// </summary>
        /// <param name="loadData"></param>
        /// <returns></returns>
        [ApiActionPermission(ActionPermissionOptions.Search)]
        [HttpPost, Route("GetPageData")]
        public override ActionResult GetPageData([FromBody] PageDataOptions loadData)
        {
            if (loadData.Value.GetInt() == 1)
            {
                return GetTreeTableRootData(loadData).Result;
            }
            return base.GetPageData(loadData);
        }

        /// <summary>
        /// treetable 获取子节点数据
        /// </summary>
        /// <returns></returns>
        [HttpPost, Route("getTreeTableRootData")]
        [ApiActionPermission(ActionPermissionOptions.Search)]
        public async Task<ActionResult> GetTreeTableRootData([FromBody] PageDataOptions options)
        {
            //页面加载根节点数据条件x => x.ParentId == 0,自己根据需要设置
            var query = _repository.FindAsIQueryable(x => true);
            if (UserContext.Current.IsSuperAdmin)
            {
                query = query.Where(x => x.ParentId == null);
            }
            else
            {
                var deptIds = UserContext.Current.DeptIds;
                query = query.Where(x => deptIds.Contains(x.DepartmentId));
            }
            var queryChild = _repository.FindAsIQueryable(x => true);
            var rows = await query.TakeOrderByPage(options.Page, options.Rows)
                .OrderBy(x => x.DepartmentName).Select(s => new
                {
                    s.DepartmentId,
                    s.ParentId,
                    s.DepartmentName,
                    s.DepartmentCode,
                    s.UpgID,
                    s.Enable,
                    s.IsPartDept,
                    s.DepartmentType,
                    s.Remark,
                    s.CreateDate,
                    s.Creator,
                    s.Modifier,
                    s.ModifyDate,
                    hasChildren = queryChild.Any(x => x.ParentId == s.DepartmentId)
                }).ToListAsync();
            return JsonNormal(new { total = await query.CountAsync(), rows });
        }

        /// <summary>
        ///treetable 获取子节点数据
        /// </summary>
        /// <returns></returns>
        [HttpPost, Route("getTreeTableChildrenData")]
        [ApiActionPermission(ActionPermissionOptions.Search)]
        public async Task<ActionResult> GetTreeTableChildrenData(Guid departmentId)
        {
            //点击节点时，加载子节点数据
            var query = _repository.FindAsIQueryable(x => true);
            var rows = await query.Where(x => x.ParentId == departmentId)
                .Select(s => new
                {
                    s.DepartmentId,
                    s.ParentId,
                    s.DepartmentName,
                    s.DepartmentCode,
                    s.UpgID,
                    s.Enable,
                    s.IsPartDept,
                    s.DepartmentType,
                    s.Remark,
                    s.CreateDate,
                    s.Creator,
                    s.Modifier,
                    s.ModifyDate,
                    hasChildren = query.Any(x => x.ParentId == s.DepartmentId)
                }).ToListAsync();
            return JsonNormal(new { rows });
        }



        [ApiActionPermission]
        [HttpPost, Route("getGroupList")]
        public ActionResult getGroupList([FromBody] Sys_Department sysDepartment)
        {
            return Json(Service.getGroupList(sysDepartment));
        }

    }
}

