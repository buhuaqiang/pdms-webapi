/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *Repository提供数据库操作，如果要增加数据库操作请在当前目录下Partial文件夹Sys_QuartzOptionsRepository编写代码
 */
using VolPro.System.IRepositories;
using VolPro.Core.BaseProvider;
using VolPro.Core.EFDbContext;
using VolPro.Core.Extensions.AutofacManager;
using VolPro.Entity.DomainModels;

namespace VolPro.System.Repositories
{
    public partial class Sys_QuartzOptionsRepository : RepositoryBase<Sys_QuartzOptions> , ISys_QuartzOptionsRepository
    {
    public Sys_QuartzOptionsRepository(SysDbContext dbContext)
    : base(dbContext)
    {

    }
    public static ISys_QuartzOptionsRepository Instance
    {
      get {  return AutofacContainerModule.GetService<ISys_QuartzOptionsRepository>(); } }
    }
}
