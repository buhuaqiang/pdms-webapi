/*
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下view_cmc_timed_taskService与Iview_cmc_timed_taskService中编写
 */
using PDMS.Project.IRepositories;
using PDMS.Project.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Project.Services
{
    public partial class view_cmc_timed_taskService : ServiceBase<view_cmc_timed_task, Iview_cmc_timed_taskRepository>
    , Iview_cmc_timed_taskService, IDependency
    {
    public view_cmc_timed_taskService(Iview_cmc_timed_taskRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Iview_cmc_timed_taskService Instance
    {
      get { return AutofacContainerModule.GetService<Iview_cmc_timed_taskService>(); } }
    }
 }
