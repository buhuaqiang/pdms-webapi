/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *Repository提供数据库操作，如果要增加数据库操作请在当前目录下Partial文件夹Demo_OrderListRepository编写代码
 */
using PDMS.DbTest.IRepositories;
using PDMS.Core.BaseProvider;
using PDMS.Core.EFDbContext;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.DbTest.Repositories
{
    public partial class Demo_OrderListRepository : RepositoryBase<Demo_OrderList> , IDemo_OrderListRepository
    {
    public Demo_OrderListRepository(SysDbContext dbContext)
    : base(dbContext)
    {

    }
    public static IDemo_OrderListRepository Instance
    {
      get {  return AutofacContainerModule.GetService<IDemo_OrderListRepository>(); } }
    }
}
