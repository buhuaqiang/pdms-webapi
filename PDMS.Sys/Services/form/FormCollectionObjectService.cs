/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下FormCollectionObjectService与IFormCollectionObjectService中编写
 */
using PDMS.System.IRepositories;
using PDMS.System.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.System.Services
{
    public partial class FormCollectionObjectService : ServiceBase<FormCollectionObject, IFormCollectionObjectRepository>
    , IFormCollectionObjectService, IDependency
    {
    public FormCollectionObjectService(IFormCollectionObjectRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static IFormCollectionObjectService Instance
    {
      get { return AutofacContainerModule.GetService<IFormCollectionObjectService>(); } }
    }
 }
