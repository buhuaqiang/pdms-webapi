/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下cmc_pdms_project_gate_hisService与Icmc_pdms_project_gate_hisService中编写
 */
using PDMS.Project.IRepositories;
using PDMS.Project.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Project.Services
{
    public partial class cmc_pdms_project_gate_hisService : ServiceBase<cmc_pdms_project_gate_his, Icmc_pdms_project_gate_hisRepository>
    , Icmc_pdms_project_gate_hisService, IDependency
    {
    public cmc_pdms_project_gate_hisService(Icmc_pdms_project_gate_hisRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Icmc_pdms_project_gate_hisService Instance
    {
      get { return AutofacContainerModule.GetService<Icmc_pdms_project_gate_hisService>(); } }
    }
 }
