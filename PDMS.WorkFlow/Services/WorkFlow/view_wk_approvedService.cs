/*
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下view_wk_approvedService与Iview_wk_approvedService中编写
 */
using PDMS.WorkFlow.IRepositories;
using PDMS.WorkFlow.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.WorkFlow.Services
{
    public partial class view_wk_approvedService : ServiceBase<view_wk_approved, Iview_wk_approvedRepository>
    , Iview_wk_approvedService, IDependency
    {
    public view_wk_approvedService(Iview_wk_approvedRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Iview_wk_approvedService Instance
    {
      get { return AutofacContainerModule.GetService<Iview_wk_approvedService>(); } }
    }
 }
