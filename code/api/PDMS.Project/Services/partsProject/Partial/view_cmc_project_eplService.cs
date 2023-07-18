/*
 *所有关于view_cmc_project_epl类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_cmc_project_eplService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using Microsoft.AspNetCore.Mvc;

namespace PDMS.Project.Services
{
    public partial class view_cmc_project_eplService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_cmc_project_eplRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public view_cmc_project_eplService(
            Iview_cmc_project_eplRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }

        public WebResponseContent response = new WebResponseContent();

        public override WebResponseContent Update(SaveModel saveModel)
        {
            //VSellOrder为视图
            //直接操作原表SellOrder的编辑功能
            //saveModel为视图编辑字段信息，如果当前视图提交的saveModel字段与原表SellOrder不一致，
            //可以直接修改视图提交saveModel里面的字段信息
            List<Sys_Department> Result = new List<Sys_Department>();
            String a = "";


            return response.OK();
            // return view_cmc_project_eplService.Instance.Update(saveModel);
            //  return base.Update(saveModel);
        }
        
    }
}
