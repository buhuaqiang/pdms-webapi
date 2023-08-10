/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下Sys_schedule_logService与ISys_schedule_logService中编写
 */
using PDMS.Sys.IRepositories;
using PDMS.Sys.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Sys.Services
{
    public partial class Sys_schedule_logService : ServiceBase<Sys_schedule_log, ISys_schedule_logRepository>
    , ISys_schedule_logService, IDependency
    {
    public Sys_schedule_logService(ISys_schedule_logRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static ISys_schedule_logService Instance
    {
      get { return AutofacContainerModule.GetService<ISys_schedule_logService>(); } }
    }
 }
