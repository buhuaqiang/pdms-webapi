/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下view_cmc_project_eplService与Iview_cmc_project_eplService中编写
 */
using PDMS.Project.IRepositories;
using PDMS.Project.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Project.Services
{
    public partial class view_cmc_project_eplService : ServiceBase<view_cmc_project_epl, Iview_cmc_project_eplRepository>
    , Iview_cmc_project_eplService, IDependency
    {
    public view_cmc_project_eplService(Iview_cmc_project_eplRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Iview_cmc_project_eplService Instance
    {
      get { return AutofacContainerModule.GetService<Iview_cmc_project_eplService>(); } }
    }
 }
