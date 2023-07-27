/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下view_cmc_project_cost_maintainService与Iview_cmc_project_cost_maintainService中编写
 */
using PDMS.Project.IRepositories;
using PDMS.Project.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Project.Services
{
    public partial class view_cmc_project_cost_maintainService : ServiceBase<view_cmc_project_cost_maintain, Iview_cmc_project_cost_maintainRepository>
    , Iview_cmc_project_cost_maintainService, IDependency
    {
    public view_cmc_project_cost_maintainService(Iview_cmc_project_cost_maintainRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Iview_cmc_project_cost_maintainService Instance
    {
      get { return AutofacContainerModule.GetService<Iview_cmc_project_cost_maintainService>(); } }
    }
 }
