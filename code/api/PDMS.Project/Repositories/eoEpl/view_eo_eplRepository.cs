/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *Repository提供数据库操作，如果要增加数据库操作请在当前目录下Partial文件夹view_eo_eplRepository编写代码
 */
using PDMS.Project.IRepositories;
using PDMS.Core.BaseProvider;
using PDMS.Core.EFDbContext;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Project.Repositories
{
    public partial class view_eo_eplRepository : RepositoryBase<view_eo_epl> , Iview_eo_eplRepository
    {
    public view_eo_eplRepository(SysDbContext dbContext)
    : base(dbContext)
    {

    }
    public static Iview_eo_eplRepository Instance
    {
      get {  return AutofacContainerModule.GetService<Iview_eo_eplRepository>(); } }
    }
}
