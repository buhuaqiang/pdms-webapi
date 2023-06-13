﻿using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using VolPro.Core.Controllers.Basic;
using VolPro.Core.Enums;
using VolPro.Core.Extensions;
using VolPro.Core.Filters;
using VolPro.Core.ManageUser;
using VolPro.Core.UserManager;
using VolPro.Core.Utilities;
using VolPro.Entity.AttributeManager;
using VolPro.Entity.DomainModels;
using VolPro.System.IRepositories;
using VolPro.System.IServices;
using VolPro.System.Repositories;
using VolPro.System.Services;

namespace VolPro.System.Controllers
{
    [Route("api/role")]
    public partial class Sys_RoleController
    {
        private readonly ISys_RoleService _service;//访问业务代码
        private readonly ISys_RoleRepository _repository;
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public Sys_RoleController(
            ISys_RoleService service,
            ISys_RoleRepository repository,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _repository = repository;
            _httpContextAccessor = httpContextAccessor;
        }

        [HttpPost, Route("getCurrentTreePermission")]
        [ApiActionPermission(ActionPermissionOptions.Search)]
        public async Task<IActionResult> GetCurrentTreePermission()
        {
            return Json(await Service.GetCurrentTreePermission());
        }

        [HttpPost, Route("getUserTreePermission")]
        [ApiActionPermission(ActionPermissionOptions.Search)]
        public async Task<IActionResult> GetUserTreePermission(int roleId)
        {
            return Json(await Service.GetUserTreePermission(new int[] { roleId }));
        }

        [HttpPost, Route("savePermission")]
        [ApiActionPermission(ActionPermissionOptions.Update)]
        public async Task<IActionResult> SavePermission([FromBody] List<UserPermissions> userPermissions, int roleId)
        {
            return Json(await Service.SavePermission(userPermissions, roleId));
        }

        /// <summary>
        /// 获取当前角色下的所有角色 
        /// </summary>
        /// <returns></returns>

        [HttpPost, Route("getUserChildRoles")]
        [ApiActionPermission(ActionPermissionOptions.Search)]
        public IActionResult GetUserChildRoles()
        {
            var roleIds = UserContext.Current.RoleIds;
            var data = RoleContext.GetAllChildren(UserContext.Current.RoleIds);

            if (UserContext.Current.IsSuperAdmin)
            {
                return Json(WebResponseContent.Instance.OK(null, data));
            }
            //不是超级管理，将自己的角色查出来，在树形菜单上作为根节点
            var self = Sys_RoleRepository.Instance.FindAsIQueryable(x => roleIds.Contains(x.Role_Id))
                 .Select(s => new RoleNodes()
                 {
                     Id = s.Role_Id,
                     ParentId = 0,//将自己的角色作为root节点
                     RoleName = s.RoleName
                 }).ToList();
            data.AddRange(self);
            return Json(WebResponseContent.Instance.OK(null, data));
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
            //获取根节点数据(对应Sys_Role1.js中searchBefore方法)
            if (loadData.Value.GetInt() == 1)
            {
                return GetTreeTableRootData(loadData).Result;
            }
            return base.GetPageData(loadData);
        }

        /// <summary>
        /// treetable 获取子节点数据(2021.05.02)
        /// </summary>
        /// <returns></returns>
        [HttpPost, Route("getTreeTableRootData")]
        [ApiActionPermission(ActionPermissionOptions.Search)]
        public async Task<ActionResult> GetTreeTableRootData([FromBody] PageDataOptions options)
        {
            //页面加载根节点数据条件x => x.ParentId == 0,自己根据需要设置


            //页面加载根节点数据条件x => x.ParentId == 0,自己根据需要设置
            var query = _repository.FindAsIQueryable(x => true);
            if (UserContext.Current.IsSuperAdmin)
            {
                query = query.Where(x => x.ParentId == 0);
            }
            else
            {
                var roleIds = UserContext.Current.RoleIds;
                query = query.Where(x => roleIds.Contains(x.Role_Id));
            }
            var queryChild = _repository.FindAsIQueryable(x => true);
            var rows = await query.TakeOrderByPage(options.Page, options.Rows)
                .OrderBy(x => x.Role_Id).Select(s => new
                {
                    s.Role_Id,
                    s.ParentId,
                    s.RoleName,
                    s.DeptName,
                    s.Dept_Id,
                    s.Enable,
                    s.CreateDate,
                    s.Creator,
                    s.Modifier,
                    s.ModifyDate,
                    s.OrderNo,
                    hasChildren = queryChild.Any(x => x.ParentId == s.Role_Id)
                }).ToListAsync();
            return JsonNormal(new { total = await query.CountAsync(), rows });
        }

        /// <summary>
        ///treetable 获取子节点数据(2021.05.02)
        /// </summary>
        /// <returns></returns>
        [HttpPost, Route("getTreeTableChildrenData")]
        [ApiActionPermission(ActionPermissionOptions.Search)]
        public async Task<ActionResult> GetTreeTableChildrenData(int roleId)
        {
            if (!UserContext.Current.IsSuperAdmin && !UserContext.Current.RoleIds.Contains(roleId) && !RoleContext.GetAllChildrenIds(UserContext.Current.RoleIds).Any(x => x == roleId))
            {
                return JsonNormal(new { rows = new object[] { } });
            }
            //点击节点时，加载子节点数据
            var roleRepository = Sys_RoleRepository.Instance.FindAsIQueryable(x => true);
            var rows = await roleRepository.Where(x => x.ParentId == roleId)
                .Select(s => new
                {
                    s.Role_Id,
                    s.ParentId,
                    s.RoleName,
                    s.DeptName,
                    s.Dept_Id,
                    s.Enable,
                    s.CreateDate,
                    s.Creator,
                    s.Modifier,
                    s.ModifyDate,
                    s.OrderNo,
                    hasChildren = roleRepository.Any(x => x.ParentId == s.Role_Id)
                }).ToListAsync();
            return JsonNormal(new { rows });
        }

    }
}


