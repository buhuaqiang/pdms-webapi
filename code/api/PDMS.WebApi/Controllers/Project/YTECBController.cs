/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹YTECBController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.Project.IServices;
namespace PDMS.Project.Controllers
{
    [Route("api/YTECB")]
    [PermissionTable(Name = "YTECB")]
    public partial class YTECBController : ApiBaseController<IYTECBService>
    {
        public YTECBController(IYTECBService service)
        : base(service)
        {
        }
    }
}

