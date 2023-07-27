/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下cmc_pdms_wf_masterService与Icmc_pdms_wf_masterService中编写
 */
using PDMS.WorkFlow.IRepositories;
using PDMS.WorkFlow.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.WorkFlow.Services
{
    public partial class cmc_pdms_wf_masterService : ServiceBase<cmc_pdms_wf_master, Icmc_pdms_wf_masterRepository>
    , Icmc_pdms_wf_masterService, IDependency
    {
    public cmc_pdms_wf_masterService(Icmc_pdms_wf_masterRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Icmc_pdms_wf_masterService Instance
    {
      get { return AutofacContainerModule.GetService<Icmc_pdms_wf_masterService>(); } }
    }
 }
