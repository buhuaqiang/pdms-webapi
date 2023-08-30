/*
 *所有关于view_eo_epl类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_eo_eplService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using System.IO;

namespace PDMS.Project.Services
{
    public partial class view_eo_eplService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_eo_eplRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public view_eo_eplService(
            Iview_eo_eplRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }
        public override PageGridData<view_eo_epl> GetPageData(PageDataOptions options)
        {
            List<SearchParameters> searchParametersList = new List<SearchParameters>();
            string path = "";
            string where = " where 1=1";
            if (!string.IsNullOrEmpty(options.Wheres))
            {
                searchParametersList = options.Wheres.DeserializeObject<List<SearchParameters>>();
                if (searchParametersList != null && searchParametersList.Count > 0)
                {
                    foreach (SearchParameters sp in searchParametersList)
                    {
                        if (sp.Name.ToLower() == "path".ToLower())
                        {
                            path = sp.Value;
                            if (!string.IsNullOrEmpty(path))
                            {   if(path== "/view_eo_epl")
                                {//数据字典eo_ai_type_1，开发清册相关类型
                                    where += " and eo_epl.ai_type in (SELECT DicValue FROM Sys_DictionaryList WHERE Dic_ID=(SELECT Dic_ID FROM Sys_Dictionary WHERE DicNo='eo_ai_type_1'))";
                                }
                                else if (path == "/view_eo_epl_other")
                                {//数据字典eo_ai_type_2，开发清册无关类型
                                    where += " and eo_epl.ai_type in (SELECT DicValue FROM Sys_DictionaryList WHERE Dic_ID=(SELECT Dic_ID FROM Sys_Dictionary WHERE DicNo='eo_ai_type_2'))";
                                }

                            }
                            continue;
                        }
                       
                    }
                }
            }
            QuerySql = $@"SELECT
	        eo_epl.eo_id,
	        eo_epl.ec_no,
	        eo_epl.ai_type,
	        main.glno,
	        epl.action_type,
	        epl.kd_type,
	        eo_epl.part_no,
	        eo_epl.part_version ,
	        epl.original_part_no,
	        epl.company_code,
	        epl.org_code,
	        epl.group_code,
	        eo_epl.CreateDate,
	        case when (epl.kd_type is  null or epl.org_code is  null or 	epl.group_code is  null) then 0 else eo_epl.eo_status end as eo_status
        FROM
	        cmc_pdms_project_eo_epl eo_epl
	        LEFT JOIN cmc_pdms_project_main main ON eo_epl.project_id= main.project_id
	        LEFT JOIN cmc_pdms_project_epl epl ON eo_epl.epl_id= epl.epl_id" +where;
            return base.GetPageData(options);
        }
    }
}
