/*
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下cmc_pdms_project_eo_eplService与Icmc_pdms_project_eo_eplService中编写
 */
using PDMS.Project.IRepositories;
using PDMS.Project.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Project.Services
{
    public partial class cmc_pdms_project_eo_eplService : ServiceBase<cmc_pdms_project_eo_epl, Icmc_pdms_project_eo_eplRepository>
    , Icmc_pdms_project_eo_eplService, IDependency
    {
    public cmc_pdms_project_eo_eplService(Icmc_pdms_project_eo_eplRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Icmc_pdms_project_eo_eplService Instance
    {
      get { return AutofacContainerModule.GetService<Icmc_pdms_project_eo_eplService>(); } }
    }
 }
