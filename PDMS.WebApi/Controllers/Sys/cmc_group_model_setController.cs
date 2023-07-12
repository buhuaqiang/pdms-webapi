/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹cmc_group_model_setController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.Sys.IServices;
namespace PDMS.Sys.Controllers
{
    [Route("api/cmc_group_model_set")]
    [PermissionTable(Name = "cmc_group_model_set")]
    public partial class cmc_group_model_setController : ApiBaseController<Icmc_group_model_setService>
    {
        public cmc_group_model_setController(Icmc_group_model_setService service)
        : base(service)
        {
        }
    }
}

