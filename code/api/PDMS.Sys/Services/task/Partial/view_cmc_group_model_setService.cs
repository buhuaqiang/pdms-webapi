/*
 *所有关于view_cmc_group_model_set类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_cmc_group_model_setService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using PDMS.Sys.IRepositories;
using PDMS.Sys.IServices;
using PDMS.Core.ManageUser;

namespace PDMS.Sys.Services
{
    public partial class view_cmc_group_model_setService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_cmc_group_model_setRepository _repository;//访问数据库

        private readonly Icmc_group_model_setService cmc_group_model_service;

        [ActivatorUtilitiesConstructor]
        public view_cmc_group_model_setService(
            Iview_cmc_group_model_setRepository dbRepository,
            IHttpContextAccessor httpContextAccessor,
            cmc_group_model_setService cmc_Group_Model_SetService
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            cmc_group_model_service = cmc_Group_Model_SetService;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }
        public override WebResponseContent Add(SaveModel saveDataModel)
        {
            return cmc_group_model_service.Add(saveDataModel);
        }

        public override WebResponseContent Update(SaveModel saveModel)
        {
            return cmc_group_model_service.Update(saveModel);
        }

        public override WebResponseContent Del(object[] keys, bool delList = true)
        {
            return cmc_group_model_service.Del(keys, delList);
        }
        public override PageGridData<view_cmc_group_model_set> GetPageData(PageDataOptions options)
        {
            UserInfo userInfo = UserContext.Current.UserInfo;
            string departMentCode = userInfo.DepartmentCode;
            QuerySql = $@"SELECT
	                    ms.*,
	                    dp.DepartmentName,
	                    u.UserTrueName,
	                    u.user_code 
                    FROM
	                    cmc_group_model_set ms
	                    LEFT JOIN Sys_User u ON ms.user_id = u.User_Id
	                    LEFT JOIN Sys_Department dp ON dp.DepartmentCode= ms.DepartmentCode";
            if (userInfo.User_Id == 1)
            {

            }
            else
            {   if(!string.IsNullOrEmpty(departMentCode))
                {
                    QuerySql += $@" where ms.DepartmentCode='{departMentCode}'";
                }
                
            }
            return base.GetPageData(options);
        }
    }
}
