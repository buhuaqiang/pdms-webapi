/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法请在当前目录下Partial文件夹cmc_fs_form_dataController编写
 */
using Microsoft.AspNetCore.Mvc;
using PDMS.Core.Controllers.Basic;
using PDMS.Entity.AttributeManager;
using PDMS.Project.IServices;
namespace PDMS.Project.Controllers
{
    [Route("api/cmc_fs_form_data")]
    [PermissionTable(Name = "cmc_fs_form_data")]
    public partial class cmc_fs_form_dataController : ApiBaseController<Icmc_fs_form_dataService>
    {
        public cmc_fs_form_dataController(Icmc_fs_form_dataService service)
        : base(service)
        {
        }
    }
}

