/*
 *所有关于cmc_common_task_template类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*cmc_common_task_templateService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using System;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Newtonsoft.Json;
using System.Collections.Generic;
using OfficeOpenXml.FormulaParsing.Excel.Functions.Text;

namespace PDMS.Sys.Services
{
    public partial class cmc_common_task_templateService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Icmc_common_task_templateRepository _repository;//访问数据库
        private  WebResponseContent _responseContent=new WebResponseContent();

        [ActivatorUtilitiesConstructor]
        public cmc_common_task_templateService(
            Icmc_common_task_templateRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }
        public  WebResponseContent copyTemplate(SaveModel saveModel)
        {
            
            var oldid = Guid.Parse(saveModel.MainData["template_id"].ToString());
            var newid = new Guid();//创建新的NewId()
            #region 新增
            SaveModel.DetailListDataResult queueResult = new SaveModel.DetailListDataResult();
            cmc_common_task_template template = new cmc_common_task_template();
            template.template_id = newid;
            template.template_name = saveModel.MainData["template_name"].ToString();
            template.suit_org_codes = saveModel.MainData["suit_org_codes"].ToString();
            template.template_desc = saveModel.MainData["template_desc"].ToString();
            queueResult.optionType = SaveModel.MainOptionType.add;
            queueResult.detailType = typeof(FormDesignOptions);
            queueResult.DetailData.Add(JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(template)));
            saveModel.DetailListData.Add(queueResult);
            _responseContent = base.CustomBatchProcessEntity(saveModel);
            #endregion

            #region 批量查詢並插入舊模板層級關係表
            string sql = $@"insert into cmc_common_task_template_set
                    (
	                    template_id,
	                    level,
	                    parent_set_id,
	                    set_type,
	                    set_value,
	                    order_no,
	                    source_set_id
                    )
                    SELECT 
                    '{ newid}',
                    level,
                    parent_set_id,
                    set_type,
	                    set_value,
	                    order_no,
	                    set_id
                    from  cmc_common_task_template_set where template_id='{oldid}'
                    ";
            int succ = repository.DapperContext.ExcuteNonQuery(sql, null);
            //查詢剛才新增的所有數據
            string selectSet = $@"SELECT * FROM cmc_common_task_template_set WHERE template_id= '{newid}' and parent_set_id is not null";
            List<cmc_common_task_template_set> addset= _repository.DapperContext.QueryList<cmc_common_task_template_set>(selectSet, null);
            if(addset!= null)
            {
                foreach (var item in addset)
                {
                    string updSQL = $@"update cmc_common_task_template_set 
                                    set parent_set_id=(SELECT set_id from cmc_common_task_template_set where source_set_id='{item.parent_set_id}')
                                where set_id='{item.set_id}'";
                    
                }
            }
            #endregion

            return _responseContent.OK();
        }
    }
}
