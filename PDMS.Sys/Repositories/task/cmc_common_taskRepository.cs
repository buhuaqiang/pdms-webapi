/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *Repository提供数据库操作，如果要增加数据库操作请在当前目录下Partial文件夹cmc_common_taskRepository编写代码
 */
using PDMS.Sys.IRepositories;
using PDMS.Core.BaseProvider;
using PDMS.Core.EFDbContext;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Sys.Repositories
{
    public partial class cmc_common_taskRepository : RepositoryBase<cmc_common_task> , Icmc_common_taskRepository
    {
    public cmc_common_taskRepository(SysDbContext dbContext)
    : base(dbContext)
    {

    }
    public static Icmc_common_taskRepository Instance
    {
      get {  return AutofacContainerModule.GetService<Icmc_common_taskRepository>(); } }
    }
}
