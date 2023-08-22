/*
 *所有关于view_cmc_project_task_mission_manage类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_cmc_project_task_mission_manageService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using Newtonsoft.Json.Linq;

namespace PDMS.Project.Services
{
    public partial class view_cmc_project_task_mission_manageService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_cmc_project_task_mission_manageRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public view_cmc_project_task_mission_manageService(
            Iview_cmc_project_task_mission_manageRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }

        public List<view_cmc_project_task_mission_manage> getProjectTask(object saveModel)
        {
            List<view_cmc_project_task_mission_manage> Result = new List<view_cmc_project_task_mission_manage>();
            var data = JObject.Parse(saveModel.ToString());
            var sets = data["set_ids"];
            var template_id = data["template_id"].ToString();
            var epl_id = data["epl_id"].ToString();

            string sql = $@"
SELECT
	ct.task_name AS task_name,
	pct.task_name AS pre_task_name,
	temp.template_name,
	tset.set_type,
	sl2.DicValue AS set_value,
	sl2.DicName AS set_name,
	sl3.DicValue AS gate_code,
	sl3.DicName AS gate_name,
	ct.task_desc,
	map.set_id,
	map.order_no AS mapOrder,
	gate.gate_start_date,
	gate.gate_end_date,
	gate.project_id,
	p.* 
FROM
	cmc_pdms_project_task AS p
	LEFT JOIN cmc_common_task AS ct ON ct.task_id = p.task_id
	LEFT JOIN cmc_common_task AS pct ON pct.task_id = p.pre_task_id
	LEFT JOIN cmc_common_template_mapping AS map ON map.mapping_id = p.mapping_id
	LEFT JOIN cmc_common_task_template_set AS tset on tset.set_id=map.set_id
	LEFT JOIN cmc_common_task_template AS temp ON temp.template_id = p.template_id
	INNER JOIN Sys_DictionaryList sl2 ON ( sl2.DicValue = tset.set_value AND sl2.Dic_ID = ( SELECT Dic_ID FROM Sys_Dictionary WHERE DicNo = tset.set_type ) )
	LEFT JOIN cmc_common_task_template_set parent ON tset.parent_set_id= parent.set_id
	INNER JOIN Sys_DictionaryList sl3 ON (
	sl3.DicValue= parent.set_value 
	AND sl3.Dic_ID = ( SELECT Dic_ID FROM Sys_Dictionary WHERE DicNo = parent.set_type ))
	LEFT JOIN cmc_pdms_project_gate gate ON gate.gate_code = sl3.DicValue 
	AND gate.project_id = ( SELECT project_id FROM cmc_pdms_project_epl WHERE epl_id = '{epl_id}' ) 
WHERE
	p.epl_id = '{epl_id}' ";

            if (!string.IsNullOrEmpty(template_id))
            {
                sql += $" AND p.template_id='{template_id}'";
            }
            if (sets != null && sets.Count() > 0)
            {
                string ids = string.Join("','", sets);
                sql += $" AND map.set_id in ('{ids}')";
            }
            
            sql += $" ORDER BY CAST( sl3.DicValue AS INT ) ASC, CAST( sl2.DicValue AS INT ) DESC, CAST( map.order_no AS INT ) DESC";
            Console.WriteLine(sql);
            Result = repository.DapperContext.QueryList<view_cmc_project_task_mission_manage>(sql, null);
            return Result;
        }

        public override PageGridData<view_cmc_project_task_mission_manage> GetPageData(PageDataOptions options)
        {
            string epl_id = "";
            string where = " ";
            List<SearchParameters> searchParametersList = new List<SearchParameters>();
            if (!string.IsNullOrEmpty(options.Wheres))
            {
                searchParametersList = options.Wheres.DeserializeObject<List<SearchParameters>>();
                if (searchParametersList != null && searchParametersList.Count > 0)
                {
                    foreach (SearchParameters sp in searchParametersList)
                    {
                        if (sp.Name.ToLower() == "epl_id".ToLower())
                        {
                            epl_id = sp.Value;
                            if (!string.IsNullOrEmpty(epl_id))
                            {
                                where += " AND epl_id = '" + epl_id + "'";
                            }
                            continue;
                        }
                    }
                }
            }

            QuerySql = @"SELECT *,ROW_NUMBER()over(ORDER BY task_name  desc) AS rowId  FROM view_cmc_project_task_mission_manage WHERE 1=1  ";
            QuerySql += where;

            return base.GetPageData(options);
        }
        
    }
}
