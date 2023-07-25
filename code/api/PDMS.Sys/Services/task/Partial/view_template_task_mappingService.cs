/*
 *所有关于view_template_task_mapping类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_template_task_mappingService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using System.Collections.Generic;
using OfficeOpenXml.FormulaParsing.Excel.Functions.Text;
using Newtonsoft.Json.Linq;

namespace PDMS.Sys.Services
{
    public partial class view_template_task_mappingService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_template_task_mappingRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public view_template_task_mappingService(
            Iview_template_task_mappingRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }

        public List<view_template_task_mapping> getTaskListByCondition(object saveModel)
        {
            List<view_template_task_mapping> Result = new List<view_template_task_mapping>();
            string sql = $@"SELECT
	                map.*,
	                task.task_name,
	                sl2.dicName
                FROM
	                cmc_common_template_mapping map
	                LEFT JOIN cmc_common_task task ON map.task_id= task.task_id 
	                left join cmc_common_task_template_set st on st.set_id=map.set_id
	                LEFT JOIN Sys_DictionaryList sl2 ON ( sl2.DicValue= st.set_value AND sl2.Dic_ID = ( SELECT Dic_ID FROM Sys_Dictionary WHERE DicNo = st.set_type ) )
                where 1=1      ";

            
             var data = JObject.Parse(saveModel.ToString());
            var sets = data["set_ids"];
            var template_id = data["template_id"].ToString();
            if (!string.IsNullOrEmpty(template_id))
            {
                sql += $" and st.template_id='{template_id}'";
            }
            if(sets != null && sets.Count()>0)
            {
                string ids  = string.Join("','", sets);
                sql += $" and map.set_id in ('{ids}')";
            }
           
            sql +=$" order by map.order_no desc";
            Result = repository.DapperContext.QueryList<view_template_task_mapping>(sql, null);
            return Result;
        }

        public override PageGridData<view_template_task_mapping> GetPageData(PageDataOptions options)
        {
            QuerySql = $@"SELECT
	                map.*,
	                task.task_name,
	                sl2.dicName,
	                st.template_id,
	                st.set_type,
	                st.set_value,
	                task.FormId,
	                task.FormCode,
	                task.is_part_handle,
	                null AS start_date,
	                null AS end_date,
					task.warn,
	                task.warn_leader,                FROM
	                cmc_common_template_mapping map
	                LEFT JOIN cmc_common_task task ON map.task_id= task.task_id 
	                left join cmc_common_task_template_set st on st.set_id=map.set_id
	                LEFT JOIN Sys_DictionaryList sl2 ON ( sl2.DicValue= st.set_value AND sl2.Dic_ID = ( SELECT Dic_ID FROM Sys_Dictionary WHERE DicNo = st.set_type ) )";
            return base.GetPageData(options);
        }
    }
}
