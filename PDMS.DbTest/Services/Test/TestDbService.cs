/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下TestDbService与ITestDbService中编写
 */
using PDMS.DbTest.IRepositories;
using PDMS.DbTest.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.DbTest.Services
{
    public partial class TestDbService : ServiceBase<TestDb, ITestDbRepository>
    , ITestDbService, IDependency
    {
    public TestDbService(ITestDbRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static ITestDbService Instance
    {
      get { return AutofacContainerModule.GetService<ITestDbService>(); } }
    }
 }
