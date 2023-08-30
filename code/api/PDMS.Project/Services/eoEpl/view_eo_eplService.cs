/*
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下view_eo_eplService与Iview_eo_eplService中编写
 */
using PDMS.Project.IRepositories;
using PDMS.Project.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Project.Services
{
    public partial class view_eo_eplService : ServiceBase<view_eo_epl, Iview_eo_eplRepository>
    , Iview_eo_eplService, IDependency
    {
    public view_eo_eplService(Iview_eo_eplRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Iview_eo_eplService Instance
    {
      get { return AutofacContainerModule.GetService<Iview_eo_eplService>(); } }
    }
 }
