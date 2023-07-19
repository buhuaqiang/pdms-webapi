/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下view_cmc_plan_executionService与Iview_cmc_plan_executionService中编写
 */
using PDMS.Project.IRepositories;
using PDMS.Project.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Project.Services
{
    public partial class view_cmc_plan_executionService : ServiceBase<view_cmc_plan_execution, Iview_cmc_plan_executionRepository>
    , Iview_cmc_plan_executionService, IDependency
    {
    public view_cmc_plan_executionService(Iview_cmc_plan_executionRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Iview_cmc_plan_executionService Instance
    {
      get { return AutofacContainerModule.GetService<Iview_cmc_plan_executionService>(); } }
    }
 }
