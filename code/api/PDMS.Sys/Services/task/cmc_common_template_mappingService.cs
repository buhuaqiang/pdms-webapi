/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下cmc_common_template_mappingService与Icmc_common_template_mappingService中编写
 */
using PDMS.Sys.IRepositories;
using PDMS.Sys.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Sys.Services
{
    public partial class cmc_common_template_mappingService : ServiceBase<cmc_common_template_mapping, Icmc_common_template_mappingRepository>
    , Icmc_common_template_mappingService, IDependency
    {
    public cmc_common_template_mappingService(Icmc_common_template_mappingRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Icmc_common_template_mappingService Instance
    {
      get { return AutofacContainerModule.GetService<Icmc_common_template_mappingService>(); } }
    }
 }
