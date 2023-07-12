/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下cmc_common_task_template_setService与Icmc_common_task_template_setService中编写
 */
using PDMS.Sys.IRepositories;
using PDMS.Sys.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Sys.Services
{
    public partial class cmc_common_task_template_setService : ServiceBase<cmc_common_task_template_set, Icmc_common_task_template_setRepository>
    , Icmc_common_task_template_setService, IDependency
    {
    public cmc_common_task_template_setService(Icmc_common_task_template_setRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Icmc_common_task_template_setService Instance
    {
      get { return AutofacContainerModule.GetService<Icmc_common_task_template_setService>(); } }
    }
 }
