/*
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下sys_noticeService与Isys_noticeService中编写
 */
using PDMS.Sys.IRepositories;
using PDMS.Sys.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Sys.Services
{
    public partial class sys_noticeService : ServiceBase<sys_notice, Isys_noticeRepository>
    , Isys_noticeService, IDependency
    {
    public sys_noticeService(Isys_noticeRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Isys_noticeService Instance
    {
      get { return AutofacContainerModule.GetService<Isys_noticeService>(); } }
    }
 }
