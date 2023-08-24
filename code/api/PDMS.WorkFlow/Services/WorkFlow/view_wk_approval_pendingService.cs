/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下view_wk_approval_pendingService与Iview_wk_approval_pendingService中编写
 */
using PDMS.WorkFlow.IRepositories;
using PDMS.WorkFlow.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.WorkFlow.Services
{
    public partial class view_wk_approval_pendingService : ServiceBase<view_wk_approval_pending, Iview_wk_approval_pendingRepository>
    , Iview_wk_approval_pendingService, IDependency
    {
    public view_wk_approval_pendingService(Iview_wk_approval_pendingRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Iview_wk_approval_pendingService Instance
    {
      get { return AutofacContainerModule.GetService<Iview_wk_approval_pendingService>(); } }
    }
 }
