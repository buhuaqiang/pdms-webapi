/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下view_cmc_group_model_setService与Iview_cmc_group_model_setService中编写
 */
using PDMS.Sys.IRepositories;
using PDMS.Sys.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Sys.Services
{
    public partial class view_cmc_group_model_setService : ServiceBase<view_cmc_group_model_set, Iview_cmc_group_model_setRepository>
    , Iview_cmc_group_model_setService, IDependency
    {
    public view_cmc_group_model_setService(Iview_cmc_group_model_setRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Iview_cmc_group_model_setService Instance
    {
      get { return AutofacContainerModule.GetService<Iview_cmc_group_model_setService>(); } }
    }
 }
