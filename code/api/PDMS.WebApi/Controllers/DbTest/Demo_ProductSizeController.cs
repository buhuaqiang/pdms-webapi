/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹Demo_ProductSizeController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.DbTest.IServices;
namespace PDMS.DbTest.Controllers
{
    [Route("api/Demo_ProductSize")]
    [PermissionTable(Name = "Demo_ProductSize")]
    public partial class Demo_ProductSizeController : ApiBaseController<IDemo_ProductSizeService>
    {
        public Demo_ProductSizeController(IDemo_ProductSizeService service)
        : base(service)
        {
        }
    }
}

