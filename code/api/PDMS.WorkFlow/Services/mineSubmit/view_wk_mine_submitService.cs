/*
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下view_wk_mine_submitService与Iview_wk_mine_submitService中编写
 */
using PDMS.WorkFlow.IRepositories;
using PDMS.WorkFlow.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.WorkFlow.Services
{
    public partial class view_wk_mine_submitService : ServiceBase<view_wk_mine_submit, Iview_wk_mine_submitRepository>
    , Iview_wk_mine_submitService, IDependency
    {
    public view_wk_mine_submitService(Iview_wk_mine_submitRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Iview_wk_mine_submitService Instance
    {
      get { return AutofacContainerModule.GetService<Iview_wk_mine_submitService>(); } }
    }
 }
