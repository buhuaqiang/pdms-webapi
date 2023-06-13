/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下Demo_GoodsService与IDemo_GoodsService中编写
 */
using PDMS.DbTest.IRepositories;
using PDMS.DbTest.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.DbTest.Services
{
    public partial class Demo_GoodsService : ServiceBase<Demo_Goods, IDemo_GoodsRepository>
    , IDemo_GoodsService, IDependency
    {
    public Demo_GoodsService(IDemo_GoodsRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static IDemo_GoodsService Instance
    {
      get { return AutofacContainerModule.GetService<IDemo_GoodsService>(); } }
    }
 }
