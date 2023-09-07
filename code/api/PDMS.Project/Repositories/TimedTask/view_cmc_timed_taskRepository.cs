/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *Repository提供数据库操作，如果要增加数据库操作请在当前目录下Partial文件夹view_cmc_timed_taskRepository编写代码
 */
using PDMS.Project.IRepositories;
using PDMS.Core.BaseProvider;
using PDMS.Core.EFDbContext;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Project.Repositories
{
    public partial class view_cmc_timed_taskRepository : RepositoryBase<view_cmc_timed_task> , Iview_cmc_timed_taskRepository
    {
    public view_cmc_timed_taskRepository(SysDbContext dbContext)
    : base(dbContext)
    {

    }
    public static Iview_cmc_timed_taskRepository Instance
    {
      get {  return AutofacContainerModule.GetService<Iview_cmc_timed_taskRepository>(); } }
    }
}
