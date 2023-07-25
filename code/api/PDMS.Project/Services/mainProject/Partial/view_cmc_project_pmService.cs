/*
 *所有关于view_cmc_project_pm类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_cmc_project_pmService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
*/
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;
using System.Linq;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
using PDMS.Core.Extensions;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using PDMS.Project.IRepositories;
using PDMS.Project.IServices;

namespace PDMS.Project.Services
{
    public partial class view_cmc_project_pmService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_cmc_project_pmRepository _repository;//访问数据库
        WebResponseContent webResponse = new WebResponseContent();

        private readonly Icmc_pdms_project_mainService _cmc_pdms_project_mainService;
        private readonly Icmc_pdms_project_mainRepository _cmc_pdms_project_mainRepository;
        private readonly Icmc_pdms_project_eplService _cmc_pdms_project_eplService;

        [ActivatorUtilitiesConstructor]
        public view_cmc_project_pmService(
            Iview_cmc_project_pmRepository dbRepository,
            IHttpContextAccessor httpContextAccessor,
            Icmc_pdms_project_mainService cmc_pdms_project_mainService,
            Icmc_pdms_project_eplService cmc_pdms_project_eplService,
            Icmc_pdms_project_mainRepository cmc_pdms_project_mainRepository
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            _cmc_pdms_project_mainService = cmc_pdms_project_mainService;
            _cmc_pdms_project_mainRepository = cmc_pdms_project_mainRepository;
            _cmc_pdms_project_eplService= cmc_pdms_project_eplService;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }

        public override WebResponseContent Add(SaveModel saveDataModel)
        {
            // 在保存数据库前的操作，所有数据都验证通过了，这一步执行完就执行数据库保存
            return _cmc_pdms_project_mainService.Add(saveDataModel);
        }
        public override WebResponseContent Update(SaveModel saveModel)
        {
            UpdateOnExecuting = (view_cmc_project_pm order, object addList, object updateList, List<object> delKeys) =>
            {
                return webResponse.OK();
            };
            return _cmc_pdms_project_mainService.Update(saveModel);
        }

        //public override WebResponseContent Del(object[] keys, bool delList = true)
        //{
        //    return _cmc_pdms_project_mainService.Del(keys, delList);
        //}


        public override WebResponseContent DownLoadTemplate()
        {
            return _cmc_pdms_project_eplService.DownLoadTemplateByFlag("1");
        }

        public override WebResponseContent Upload(List<IFormFile> files)
        {
            string project_id = Core.Utilities.HttpContext.Current.Request("project_id");
            return _cmc_pdms_project_eplService.UploadEpl(files, "1", project_id);
        }

    }
}
