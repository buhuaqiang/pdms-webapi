/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *Repository提供数据库操作，如果要增加数据库操作请在当前目录下Partial文件夹cmc_pdms_project_taskRepository编写代码
 */
using PDMS.Project.IRepositories;
using PDMS.Core.BaseProvider;
using PDMS.Core.EFDbContext;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Project.Repositories
{
    public partial class cmc_pdms_project_taskRepository : RepositoryBase<cmc_pdms_project_task> , Icmc_pdms_project_taskRepository
    {
    public cmc_pdms_project_taskRepository(SysDbContext dbContext)
    : base(dbContext)
    {

    }
    public static Icmc_pdms_project_taskRepository Instance
    {
      get {  return AutofacContainerModule.GetService<Icmc_pdms_project_taskRepository>(); } }
    }
}
