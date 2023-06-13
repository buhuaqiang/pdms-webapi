/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下Sys_RegionService与ISys_RegionService中编写
 */
using PDMS.Sys.IRepositories;
using PDMS.Sys.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Sys.Services
{
    public partial class Sys_RegionService : ServiceBase<Sys_Region, ISys_RegionRepository>
    , ISys_RegionService, IDependency
    {
    public Sys_RegionService(ISys_RegionRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static ISys_RegionService Instance
    {
      get { return AutofacContainerModule.GetService<ISys_RegionService>(); } }
    }
 }
