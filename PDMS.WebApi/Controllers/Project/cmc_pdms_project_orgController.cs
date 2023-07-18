/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹cmc_pdms_project_orgController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.Project.IServices;
namespace PDMS.Project.Controllers
{
    [Route("api/cmc_pdms_project_org")]
    [PermissionTable(Name = "cmc_pdms_project_org")]
    public partial class cmc_pdms_project_orgController : ApiBaseController<Icmc_pdms_project_orgService>
    {
        public cmc_pdms_project_orgController(Icmc_pdms_project_orgService service)
        : base(service)
        {
        }
    }
}

