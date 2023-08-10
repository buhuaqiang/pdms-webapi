/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下sys_notify_queueService与Isys_notify_queueService中编写
 */
using PDMS.Sys.IRepositories;
using PDMS.Sys.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Sys.Services
{
    public partial class sys_notify_queueService : ServiceBase<sys_notify_queue, Isys_notify_queueRepository>
    , Isys_notify_queueService, IDependency
    {
    public sys_notify_queueService(Isys_notify_queueRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Isys_notify_queueService Instance
    {
      get { return AutofacContainerModule.GetService<Isys_notify_queueService>(); } }
    }
 }
