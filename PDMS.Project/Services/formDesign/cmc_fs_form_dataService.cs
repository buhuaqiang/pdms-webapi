/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下cmc_fs_form_dataService与Icmc_fs_form_dataService中编写
 */
using PDMS.Project.IRepositories;
using PDMS.Project.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Project.Services
{
    public partial class cmc_fs_form_dataService : ServiceBase<cmc_fs_form_data, Icmc_fs_form_dataRepository>
    , Icmc_fs_form_dataService, IDependency
    {
    public cmc_fs_form_dataService(Icmc_fs_form_dataRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Icmc_fs_form_dataService Instance
    {
      get { return AutofacContainerModule.GetService<Icmc_fs_form_dataService>(); } }
    }
 }
