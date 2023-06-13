/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹TestServiceController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.DbTest.IServices;
namespace PDMS.DbTest.Controllers
{
    [Route("api/TestService")]
    [PermissionTable(Name = "TestService")]
    public partial class TestServiceController : ApiBaseController<ITestServiceService>
    {
        public TestServiceController(ITestServiceService service)
        : base(service)
        {
        }
    }
}

