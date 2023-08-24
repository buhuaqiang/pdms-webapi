/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹view_wk_approval_pendingController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.WorkFlow.IServices;
namespace PDMS.WorkFlow.Controllers
{
    [Route("api/view_wk_approval_pending")]
    [PermissionTable(Name = "view_wk_approval_pending")]
    public partial class view_wk_approval_pendingController : ApiBaseController<Iview_wk_approval_pendingService>
    {
        public view_wk_approval_pendingController(Iview_wk_approval_pendingService service)
        : base(service)
        {
        }
    }
}

