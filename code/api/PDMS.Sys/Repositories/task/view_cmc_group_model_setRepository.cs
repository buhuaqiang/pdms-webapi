/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *Repository提供数据库操作，如果要增加数据库操作请在当前目录下Partial文件夹view_cmc_group_model_setRepository编写代码
 */
using PDMS.Sys.IRepositories;
using PDMS.Core.BaseProvider;
using PDMS.Core.EFDbContext;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Sys.Repositories
{
    public partial class view_cmc_group_model_setRepository : RepositoryBase<view_cmc_group_model_set> , Iview_cmc_group_model_setRepository
    {
    public view_cmc_group_model_setRepository(SysDbContext dbContext)
    : base(dbContext)
    {

    }
    public static Iview_cmc_group_model_setRepository Instance
    {
      get {  return AutofacContainerModule.GetService<Iview_cmc_group_model_setRepository>(); } }
    }
}
