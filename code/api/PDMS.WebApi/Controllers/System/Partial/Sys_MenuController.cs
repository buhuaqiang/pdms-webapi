using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Threading.Tasks;
using PDMS.Core.Enums;
using PDMS.Core.Filters;
using PDMS.Core.ManageUser;
using PDMS.Entity.DomainModels;
using PDMS.System.IServices;
using PDMS.System.Repositories;

namespace PDMS.System.Controllers
{
    public partial class Sys_MenuController
    {
        /// <summary>
        /// 
        /// </summary> 
        /// <returns></returns>
        [HttpGet, HttpPost, Route("getTreeMenu")]
        //2019.10.24屏蔽用户查询自己权限菜单
        // [ApiActionPermission("Sys_Menu", ActionPermissionOptions.Search)]
        public async Task<IActionResult> GetTreeMenu()
        {

            var service = UserContext.Current.UserDbService.Select(s => new { id = s.DbServiceId, name = s.DbServiceName })
                  .ToList();

            var menu = await _service.GetCurrentMenuActionList();
            return Json(new
            {
                menu = menu,
                service = service
            });
        }
        [HttpPost, Route("getMenu")]
        [ApiActionPermission("Sys_Menu", ActionPermissionOptions.Search)]
        public async Task<IActionResult> GetMenu()
        {
            return Json(await _service.GetMenu());
        }

        [HttpPost, Route("getTreeItem")]
        [ApiActionPermission("Sys_Menu", "1", ActionPermissionOptions.Search)]
        public async Task<IActionResult> GetTreeItem(int menuId)
        {
            return Json(await _service.GetTreeItem(menuId));
        }

        //[ActionPermission("Sys_Menu", "1", ActionPermissionOptions.Add)]
        //只有角色ID为1的才能进行保存操作
        [HttpPost, Route("save"), ApiActionPermission(ActionRolePermission.SuperAdmin)]
        public async Task<ActionResult> Save([FromBody] Sys_Menu menu)
        {
            return Json(await _service.Save(menu));
        }

        /// <summary>
        /// 限制只能超级管理员才删除菜单 
        /// </summary>
        /// <param name="keys"></param>
        /// <returns></returns>
        [ApiActionPermission(ActionRolePermission.SuperAdmin)]
        [HttpPost, Route("delMenu")]
        public async Task<ActionResult> DelMenu(int menuId)
        {
            return Json(await Service.DelMenu(menuId));
        }

    }
}
