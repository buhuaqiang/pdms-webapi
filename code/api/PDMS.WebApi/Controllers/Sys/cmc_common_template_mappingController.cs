/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹cmc_common_template_mappingController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.Sys.IServices;
namespace PDMS.Sys.Controllers
{
    [Route("api/cmc_common_template_mapping")]
    [PermissionTable()]
    public partial class cmc_common_template_mappingController : ApiBaseController<Icmc_common_template_mappingService>
    {
        public cmc_common_template_mappingController(Icmc_common_template_mappingService service)
        : base(service)
        {
        }
    }
}

