/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下view_template_task_mappingService与Iview_template_task_mappingService中编写
 */
using PDMS.Sys.IRepositories;
using PDMS.Sys.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Sys.Services
{
    public partial class view_template_task_mappingService : ServiceBase<view_template_task_mapping, Iview_template_task_mappingRepository>
    , Iview_template_task_mappingService, IDependency
    {
    public view_template_task_mappingService(Iview_template_task_mappingRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Iview_template_task_mappingService Instance
    {
      get { return AutofacContainerModule.GetService<Iview_template_task_mappingService>(); } }
    }
 }
