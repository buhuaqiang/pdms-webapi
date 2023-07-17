/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下cmc_pdms_project_taskService与Icmc_pdms_project_taskService中编写
 */
using PDMS.Project.IRepositories;
using PDMS.Project.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Project.Services
{
    public partial class cmc_pdms_project_taskService : ServiceBase<cmc_pdms_project_task, Icmc_pdms_project_taskRepository>
    , Icmc_pdms_project_taskService, IDependency
    {
    public cmc_pdms_project_taskService(Icmc_pdms_project_taskRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Icmc_pdms_project_taskService Instance
    {
      get { return AutofacContainerModule.GetService<Icmc_pdms_project_taskService>(); } }
    }
 }
