/*
 *Author：jxx
 *Contact：283591387@qq.com
 *Date：2018-07-01
 * 此代码由框架生成，请勿随意更改
 */
using PDMS.System.IRepositories;
using PDMS.System.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.System.Services
{
    public partial class vSys_DictionaryService : ServiceBase<vSys_Dictionary, IvSys_DictionaryRepository>, IvSys_DictionaryService, IDependency
    {
        public vSys_DictionaryService(IvSys_DictionaryRepository repository)
             : base(repository) 
        { 
           Init(repository);
        }
        public static IvSys_DictionaryService Instance
        {
           get { return AutofacContainerModule.GetService<IvSys_DictionaryService>(); }
        }
    }
}

