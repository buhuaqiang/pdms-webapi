/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *Repository提供数据库操作，如果要增加数据库操作请在当前目录下Partial文件夹Sys_schedule_logRepository编写代码
 */
using PDMS.Sys.IRepositories;
using PDMS.Core.BaseProvider;
using PDMS.Core.EFDbContext;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Sys.Repositories
{
    public partial class Sys_schedule_logRepository : RepositoryBase<Sys_schedule_log> , ISys_schedule_logRepository
    {
    public Sys_schedule_logRepository(SysDbContext dbContext)
    : base(dbContext)
    {

    }
    public static ISys_schedule_logRepository Instance
    {
      get {  return AutofacContainerModule.GetService<ISys_schedule_logRepository>(); } }
    }
}
