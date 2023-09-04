/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹cmc_pdms_wf_epl_task_defineController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.WorkFlow.IServices;
namespace PDMS.WorkFlow.Controllers
{
    [Route("api/cmc_pdms_wf_epl_task_define")]
    [PermissionTable(Name = "cmc_pdms_wf_epl_task_define")]
    public partial class cmc_pdms_wf_epl_task_defineController : ApiBaseController<Icmc_pdms_wf_epl_task_defineService>
    {
        public cmc_pdms_wf_epl_task_defineController(Icmc_pdms_wf_epl_task_defineService service)
        : base(service)
        {
        }
    }
}

