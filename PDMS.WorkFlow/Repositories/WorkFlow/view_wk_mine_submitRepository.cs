/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *Repository提供数据库操作，如果要增加数据库操作请在当前目录下Partial文件夹view_wk_mine_submitRepository编写代码
 */
using PDMS.WorkFlow.IRepositories;
using PDMS.Core.BaseProvider;
using PDMS.Core.EFDbContext;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.WorkFlow.Repositories
{
    public partial class view_wk_mine_submitRepository : RepositoryBase<view_wk_mine_submit> , Iview_wk_mine_submitRepository
    {
    public view_wk_mine_submitRepository(SysDbContext dbContext)
    : base(dbContext)
    {

    }
    public static Iview_wk_mine_submitRepository Instance
    {
      get {  return AutofacContainerModule.GetService<Iview_wk_mine_submitRepository>(); } }
    }
}
