/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹sys_noticeController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.Sys.IServices;
namespace PDMS.Sys.Controllers
{
    [Route("api/sys_notice")]
    [PermissionTable(Name = "sys_notice")]
    public partial class sys_noticeController : ApiBaseController<Isys_noticeService>
    {
        public sys_noticeController(Isys_noticeService service)
        : base(service)
        {
        }
    }
}

