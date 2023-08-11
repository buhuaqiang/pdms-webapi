/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹cmc_pdms_project_epl_car_modelController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.Project.IServices;
namespace PDMS.Project.Controllers
{
    [Route("api/cmc_pdms_project_epl_car_model")]
    [PermissionTable(Name = "cmc_pdms_project_epl_car_model")]
    public partial class cmc_pdms_project_epl_car_modelController : ApiBaseController<Icmc_pdms_project_epl_car_modelService>
    {
        public cmc_pdms_project_epl_car_modelController(Icmc_pdms_project_epl_car_modelService service)
        : base(service)
        {
        }
    }
}

