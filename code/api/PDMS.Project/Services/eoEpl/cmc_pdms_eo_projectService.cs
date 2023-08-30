/*
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下cmc_pdms_eo_projectService与Icmc_pdms_eo_projectService中编写
 */
using PDMS.Project.IRepositories;
using PDMS.Project.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Project.Services
{
    public partial class cmc_pdms_eo_projectService : ServiceBase<cmc_pdms_eo_project, Icmc_pdms_eo_projectRepository>
    , Icmc_pdms_eo_projectService, IDependency
    {
    public cmc_pdms_eo_projectService(Icmc_pdms_eo_projectRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Icmc_pdms_eo_projectService Instance
    {
      get { return AutofacContainerModule.GetService<Icmc_pdms_eo_projectService>(); } }
    }
 }
