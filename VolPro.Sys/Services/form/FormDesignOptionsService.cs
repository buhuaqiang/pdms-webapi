/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下FormDesignOptionsService与IFormDesignOptionsService中编写
 */
using VolPro.System.IRepositories;
using VolPro.System.IServices;
using VolPro.Core.BaseProvider;
using VolPro.Core.Extensions.AutofacManager;
using VolPro.Entity.DomainModels;

namespace VolPro.System.Services
{
    public partial class FormDesignOptionsService : ServiceBase<FormDesignOptions, IFormDesignOptionsRepository>
    , IFormDesignOptionsService, IDependency
    {
    public FormDesignOptionsService(IFormDesignOptionsRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static IFormDesignOptionsService Instance
    {
      get { return AutofacContainerModule.GetService<IFormDesignOptionsService>(); } }
    }
 }
