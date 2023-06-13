/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *Repository提供数据库操作，如果要增加数据库操作请在当前目录下Partial文件夹Sys_DbServiceRepository编写代码
 */
using PDMS.System.IRepositories;
using PDMS.Core.BaseProvider;
using PDMS.Core.EFDbContext;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.System.Repositories
{
    public partial class Sys_DbServiceRepository : RepositoryBase<Sys_DbService> , ISys_DbServiceRepository
    {
    public Sys_DbServiceRepository(SysDbContext dbContext)
    : base(dbContext)
    {

    }
    public static ISys_DbServiceRepository Instance
    {
      get {  return AutofacContainerModule.GetService<ISys_DbServiceRepository>(); } }
    }
}
