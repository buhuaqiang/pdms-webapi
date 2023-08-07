/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下view_cmc_project_hisService与Iview_cmc_project_hisService中编写
 */
using PDMS.Project.IRepositories;
using PDMS.Project.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Project.Services
{
    public partial class view_cmc_project_hisService : ServiceBase<view_cmc_project_his, Iview_cmc_project_hisRepository>
    , Iview_cmc_project_hisService, IDependency
    {
    public view_cmc_project_hisService(Iview_cmc_project_hisRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Iview_cmc_project_hisService Instance
    {
      get { return AutofacContainerModule.GetService<Iview_cmc_project_hisService>(); } }
    }
 }
