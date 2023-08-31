/*
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下cmc_pdms_wf_epl_task_defineService与Icmc_pdms_wf_epl_task_defineService中编写
 */
using PDMS.WorkFlow.IRepositories;
using PDMS.WorkFlow.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.WorkFlow.Services
{
    public partial class cmc_pdms_wf_epl_task_defineService : ServiceBase<cmc_pdms_wf_epl_task_define, Icmc_pdms_wf_epl_task_defineRepository>
    , Icmc_pdms_wf_epl_task_defineService, IDependency
    {
    public cmc_pdms_wf_epl_task_defineService(Icmc_pdms_wf_epl_task_defineRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Icmc_pdms_wf_epl_task_defineService Instance
    {
      get { return AutofacContainerModule.GetService<Icmc_pdms_wf_epl_task_defineService>(); } }
    }
 }
