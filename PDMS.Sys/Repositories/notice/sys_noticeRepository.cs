/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *Repository提供数据库操作，如果要增加数据库操作请在当前目录下Partial文件夹sys_noticeRepository编写代码
 */
using PDMS.Sys.IRepositories;
using PDMS.Core.BaseProvider;
using PDMS.Core.EFDbContext;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Sys.Repositories
{
    public partial class sys_noticeRepository : RepositoryBase<sys_notice> , Isys_noticeRepository
    {
    public sys_noticeRepository(SysDbContext dbContext)
    : base(dbContext)
    {

    }
    public static Isys_noticeRepository Instance
    {
      get {  return AutofacContainerModule.GetService<Isys_noticeRepository>(); } }
    }
}
