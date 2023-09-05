/*
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下cmc_pdms_wf_approve_logService与Icmc_pdms_wf_approve_logService中编写
 */
using PDMS.WorkFlow.IRepositories;
using PDMS.WorkFlow.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.WorkFlow.Services
{
    public partial class cmc_pdms_wf_approve_logService : ServiceBase<cmc_pdms_wf_approve_log, Icmc_pdms_wf_approve_logRepository>
    , Icmc_pdms_wf_approve_logService, IDependency
    {
    public cmc_pdms_wf_approve_logService(Icmc_pdms_wf_approve_logRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Icmc_pdms_wf_approve_logService Instance
    {
      get { return AutofacContainerModule.GetService<Icmc_pdms_wf_approve_logService>(); } }
    }
 }
