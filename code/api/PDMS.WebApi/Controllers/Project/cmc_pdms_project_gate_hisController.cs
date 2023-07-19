/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹cmc_pdms_project_gate_hisController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.Project.IServices;
namespace PDMS.Project.Controllers
{
    [Route("api/cmc_pdms_project_gate_his")]
    [PermissionTable(Name = "cmc_pdms_project_gate_his")]
    public partial class cmc_pdms_project_gate_hisController : ApiBaseController<Icmc_pdms_project_gate_hisService>
    {
        public cmc_pdms_project_gate_hisController(Icmc_pdms_project_gate_hisService service)
        : base(service)
        {
        }
    }
}

