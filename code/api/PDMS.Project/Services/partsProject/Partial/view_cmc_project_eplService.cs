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
            return cmc_pdms_project_eplService.Instance.Update(saveModel);
        }

        public int getEplCount(SaveModel saveModel)
        {
            int count = 0;
            var MainDatas = saveModel.MainDatas;
            var eplIds = "";
            foreach (var item in MainDatas)
            {
                object eplId = item["epl_id"];
                eplIds += "'" + eplId + "'" + ",";
            }
            eplIds = eplIds.Substring(0, eplIds.Length - 1);
            string sql = $@"select  count(*)  from  cmc_pdms_project_epl epl where epl_id in ("+ eplIds + ")  and (kd_type='' or group_code='') ";
            count =Convert.ToInt32( repository.DapperContext.ExecuteScalar(sql, null));
            return count;
        }

        public  WebResponseContent submit(SaveModel saveModel)
        {
            return cmc_pdms_project_eplService.Instance.submit(saveModel);
        }

    }
}
