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
using PDMS.Core.DBManager;
using PDMS.Core.ManageUser;

namespace PDMS.Sys.Services
{
    public partial class cmc_common_task_templateService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Icmc_common_task_templateRepository _repository;//访问数据库
        private WebResponseContent _responseContent = new WebResponseContent();

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
        public WebResponseContent copyTemplate(SaveModel saveModel)
        {
            UserInfo userList = UserContext.Current.UserInfo;
            var CreateID = userList.User_Id;
            var Creator = userList.UserTrueName;

            var oldid = Guid.Parse(saveModel.MainData["template_id"].ToString());
            var newid =Guid.NewGuid();//创建新的NewId()
            #region 新增
            SaveModel.DetailListDataResult queueResult = new SaveModel.DetailListDataResult();
            cmc_common_task_template template = new cmc_common_task_template();
            template.template_id = newid;
            template.template_name = saveModel.MainData["template_name"].ToString();
            template.suit_org_codes =  saveModel.MainData["suit_org_codes"].ToString();
            template.template_desc = saveModel.MainData["template_desc"].ToString();
            queueResult.optionType = SaveModel.MainOptionType.add;
            queueResult.detailType = typeof(cmc_common_task_template);
            queueResult.DetailData.Add(JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(template)));
            saveModel.DetailListData.Add(queueResult);
            _responseContent = base.CustomBatchProcessEntity(saveModel);
            #endregion

            #region 批量查詢並插入舊模板層級關係表
            string sql = $@"insert into cmc_common_task_template_set
                    (   set_id,
	                    template_id,
	                    level,
	                    parent_set_id,
	                    set_type,
	                    set_value,
	                    order_no,
                        CreateID,
                        Creator,
                        CreateDate,
	                    source_set_id
                    )
                    SELECT 
                    NEWID(),
                    '{newid}',
                    level,
                    parent_set_id,
                    set_type,
	                    set_value,
	                    order_no,
                        {CreateID},
                        '{Creator}',
                        GETDATE(),
	                    set_id
                    from  cmc_common_task_template_set where template_id='{oldid}' ";
            int succ = repository.DapperContext.ExcuteNonQuery(sql, null);
            //查詢剛才新增的所有數據
            string selectSet = $@"SELECT * FROM cmc_common_task_template_set WHERE template_id= '{newid}' and parent_set_id is not null";
            List<cmc_common_task_template_set> addset = _repository.DapperContext.QueryList<cmc_common_task_template_set>(selectSet, null);

            #region  批量更新parent_set_id
            if (addset.Count != 0)
            {
                List<cmc_common_task_template_set> setList = new List<cmc_common_task_template_set>();
                try
                {
                    foreach (var item in addset)
                    {
                        //获取parent_set_id
                        var parent_set_id = repository.DbContext.Set<cmc_common_task_template_set>().Where(x => x.source_set_id == item.parent_set_id && x.template_id==newid).FirstOrDefault().set_id;
                        //获取当前实体
                        var Setlist = repository.DbContext.Set<cmc_common_task_template_set>().Where(x => x.set_id == item.set_id).FirstOrDefault();
                        //对需要调整的字段进行赋值
                        Setlist.parent_set_id = parent_set_id;
                        //将实体装箱
                        setList.Add(Setlist);
                    }
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改前的裝箱 cmc_common_task_template_set 表，cmc_common_task_templateService 文件-->" + DateTime.Now + ":" + ex.Message);
                }
                try
                {
                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.UpdateRange(setList, x => new { x.parent_set_id });
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改執行 cmc_common_task_template_set 表，cmc_common_task_templateService 文件-->UpdateRange：" + DateTime.Now + ":" + ex.Message);
                }
            }
            #endregion

            #region  複製層架下對應任務：
            string sql2 = $@"insert into cmc_common_template_mapping
                        (
                            mapping_id,
                        	set_id,
                        	task_id,
                        	is_delete_able,
                        	is_audit_key,
                            CreateID,
                            Creator,
                            CreateDate,
                        	order_no
                        )
                        SELECT 
                        NEWID(),
                        st.set_id,
                        task_id,
                        	map.is_delete_able,
                        	map.is_audit_key,
                            {CreateID},
                            '{Creator}',
                            GETDATE(),
                        	map.order_no
                        from  cmc_common_template_mapping map
                        left join cmc_common_task_template_set st on st.source_set_id=map.set_id
                        where map.set_id in (SELECT set_id from cmc_common_task_template_set where template_id='{oldid}')";
            int succ2 = repository.DapperContext.ExcuteNonQuery(sql2, null);

            #endregion

            #endregion

            return _responseContent.OK("操作成功");
        }

        public override PageGridData<cmc_common_task_template> GetPageData(PageDataOptions options)
        {

            QuerySql = $@"select * from cmc_common_task_template where 1=1";
            QueryRelativeList = (List<SearchParameters> parameters) =>
            {
                string sql = null;
                foreach (var item in parameters)
                {
                    if (!string.IsNullOrEmpty(item.Value))
                    {
                        string value = item.Value;
                        //清空原来的数据
                        if (item.Name == "suit_org_codes")
                        {
                            if (value.Contains(","))
                            {
                                string[] vals= value.Split(",");
                                if (vals.Length > 0)
                                {
                                    sql += "and (";
                                    for(int i = 0; i < vals.Length; i++)
                                    {
                                        if (i == 0)
                                        {

                                        }
                                        else
                                        {
                                            sql+= " or ";
                                        }
                                        sql += $"  suit_org_codes  like'%{vals[i]}%'";
                                    }
                                   
                                    sql += ")";
                                }
                            }
                            else
                            {
                                sql += $" and suit_org_codes  like'%{value}%'";
                            }
                           
                            //清空原来的数据
                            item.Value = null;
                        }
                       
                    }
                }
                QuerySql +=  sql;
            };

            return base.GetPageData(options);
        }
    }
}
