/*
 *所有关于view_cmc_project_task_manageN类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_cmc_project_task_manageNService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using PDMS.Core.ManageUser;
using System.Text.Json;
using PDMS.Core.DBManager;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using System.Globalization;
using Quartz.Util;

namespace PDMS.Project.Services
{
    public partial class view_cmc_project_task_manageNService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_cmc_project_task_manageNRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public view_cmc_project_task_manageNService(
            Iview_cmc_project_task_manageNRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }
        WebResponseContent ResponseContent = new WebResponseContent();
        public override PageGridData<view_cmc_project_task_manageN> GetPageData(PageDataOptions options)
        {
            string glno = "";
            string project_name = "";
            string part_no = "";
            string part_name = "";
            string approve_status = "";

            string where = " ";
            List<SearchParameters> searchParametersList = new List<SearchParameters>();
            if (!string.IsNullOrEmpty(options.Wheres))
            {
                searchParametersList = options.Wheres.DeserializeObject<List<SearchParameters>>();
                if (searchParametersList != null && searchParametersList.Count > 0)
                {
                    foreach (SearchParameters sp in searchParametersList)
                    {
                        if (sp.Name.ToLower() == "glno".ToLower())
                        {
                            glno = sp.Value;
                            if (!string.IsNullOrEmpty(glno))
                            {
                                where += " AND glno LIKE '%" + glno + "%'";
                            }
                            continue;
                        }
                        if (sp.Name.ToLower() == "project_name".ToLower())
                        {
                            project_name = sp.Value;
                            if (!string.IsNullOrEmpty(project_name))
                            {
                                where += " AND project_name LIKE '%" + project_name + "%'";
                            }
                            continue;
                        }
                        if (sp.Name.ToLower() == "part_no".ToLower())
                        {
                            part_no = sp.Value;
                            if (!string.IsNullOrEmpty(part_no))
                            {
                                where += " AND part_no LIKE '%" + part_no + "%'";
                            }
                            continue;
                        }
                        if (sp.Name.ToLower() == "part_name".ToLower())
                        {
                            part_name = sp.Value;
                            if (!string.IsNullOrEmpty(part_name))
                            {
                                where += " AND part_name LIKE '%" + part_name + "%'";
                            }
                            continue;
                        }
                        if (sp.Name.ToLower() == "approve_status".ToLower())
                        {
                            approve_status = sp.Value;
                            if (!string.IsNullOrEmpty(approve_status))
                            {
                                where += " AND approve_status ='" + approve_status + "'";
                            }
                            continue;
                        }
                    }
                }
            }

            QuerySql = @"SELECT *,ROW_NUMBER()over(ORDER BY glno  desc) AS rowId  FROM view_cmc_project_task_manageN WHERE 1=1  ";
            UserInfo userList = UserContext.Current.UserInfo;
            var User_Id = userList.User_Id;
            if (User_Id != 1)
            {
                where += @$" AND dev_taker_id='{User_Id}'";
            }
            QuerySql += where;
            return base.GetPageData(options);
        }
        public WebResponseContent submitReview(SaveModel saveModel)
        {
            var MainData = saveModel.MainData;
            var epl_id = MainData["epl_id"] == null ? "" : JArray.Parse(saveModel.MainData["epl_id"].ToString()).ToString();
            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            if (!string.IsNullOrEmpty(epl_id))
            {
                try
                {
                    JArray epl_idArray = JArray.Parse(epl_id);
                    foreach (string item in epl_idArray)
                    {
                        cmc_pdms_project_epl epl = new cmc_pdms_project_epl();
                        epl = repository.DbContext.Set<cmc_pdms_project_epl>().Where(x => x.epl_id == Guid.Parse(item)).FirstOrDefault();
                        if (epl != null)
                        {
                            epl.task_define_approve_status = "01";
                        }
                        eplList.Add(epl);
                    }
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改前装箱  cmc_pdms_project_epl 表，cmc_pdms_project_eplService 文件：eplList：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }
                try
                {
                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.UpdateRange(eplList, x => new { x.task_define_approve_status });
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改執行 cmc_pdms_project_epl 表，cmc_pdms_project_eplService 文件-->UpdateRange：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }
            }
            return ResponseContent.OK();
        }
        public WebResponseContent setPartTaker(SaveModel saveModel)
        {
            var MainData = saveModel.MainData;
            var epl_id = MainData["epl_id"] == null ? "" : JArray.Parse(saveModel.MainData["epl_id"].ToString()).ToString();
            var userId = 0;

            if (int.TryParse(MainData["UserID"].ToString(), out userId))
            {
                // 轉換成功，result 變數將儲存轉換後的整數值
            }
            else
            {
                return ResponseContent.Error();
            }
            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            if (!string.IsNullOrEmpty(epl_id))
            {
                try
                {
                    JArray epl_idArray = JArray.Parse(epl_id);
                    foreach (string item in epl_idArray)
                    {
                        cmc_pdms_project_epl epl = new cmc_pdms_project_epl();
                        //if (Guid.TryParse(item, out Guid eplGuid))
                        //{
                        //    epl = repository.DbContext.Set<cmc_pdms_project_epl>().FirstOrDefault(x => x.epl_id == eplGuid);
                        //    if (epl != null)
                        //    {
                        //        epl.part_taker_id = userId;
                        //    }
                        //    eplList.Add(epl);
                        //}

                        epl = repository.DbContext.Set<cmc_pdms_project_epl>().Where(x => x.epl_id == Guid.Parse(item)).FirstOrDefault();
                        if (epl != null)
                        {
                            epl.part_taker_id = userId;
                        }
                        eplList.Add(epl);
                    }
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改前装箱  cmc_pdms_project_epl 表，cmc_pdms_project_eplService 文件：eplList：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }
                try
                {
                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.UpdateRange(eplList, x => new { x.part_taker_id });
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改執行 cmc_pdms_project_epl 表，cmc_pdms_project_eplService 文件-->UpdateRange：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }
            }
            return ResponseContent.OK();
        }

        public WebResponseContent updateMissionData(SaveModel saveModel)
        {
            var MainData = saveModel.MainDatas;
            List<cmc_pdms_project_task> projectTaskLisk = new List<cmc_pdms_project_task>();
            if (MainData.Count != 0)
            {
                try
                {
                    foreach (var item in MainData)
                    {
                        Guid task_id = Guid.Parse(item["task_id"].ToString());
                        Guid project_task_id = Guid.Parse(item["project_task_id"].ToString());
                        cmc_pdms_project_task pTask = new cmc_pdms_project_task();
                        pTask = repository.DbContext.Set<cmc_pdms_project_task>().Where(x => x.task_id == task_id && x.project_task_id == project_task_id).FirstOrDefault();

                        if (pTask != null)
                        {
                            dateFormat(item, pTask);
                        }
                        projectTaskLisk.Add(pTask);
                    }
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改前装箱  cmc_pdms_project_task 表，view_cmc_pdms_project_task_manageService 文件：projectTaskLisk：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }
                try
                {
                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.UpdateRange(projectTaskLisk, x => new { x.start_date, x.end_date });
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改執行 cmc_pdms_project_task 表，view_cmc_pdms_project_task_manageService 文件-->UpdateRange：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }
            }
            return ResponseContent.OK();
        }

        public WebResponseContent addMissionData(SaveModel saveModel)
        {
            var MainDatas = saveModel.MainDatas;
            //var epl_id = saveModel.MainData["epl_id"] == null ? "" : JArray.Parse(saveModel.MainData["epl_id"].ToString()).ToString();
            var epl_id = saveModel.MainData["epl_id"] == null ? "" : saveModel.MainData["epl_id"].ToString();
            string[] epl_idArray = epl_id.Split(',');

            var path = saveModel.MainData["path"].ToString();
            var template_id = MainDatas[0]["template_id"];

            List<cmc_pdms_project_task> checkTemplate = new List<cmc_pdms_project_task>();
            List<cmc_pdms_project_task> addList = new List<cmc_pdms_project_task>();
            List<cmc_pdms_project_task> updateList = new List<cmc_pdms_project_task>();
            List<cmc_pdms_project_task> existTaskList = new List<cmc_pdms_project_task>();
            List<view_template_task_mapping> frontEndTaskLisk = new List<view_template_task_mapping>();
            string deleteAction = "";
            //單個子專案選任務
            if (path == "single")
            {
                //1.檢查此epl是否已經有選擇過模板,跟現在選的是否一樣
                string sql = $@"SELECT  epl_id , template_id  FROM cmc_pdms_project_task
                            WHERE epl_id='" + epl_idArray[0] + "'";
                checkTemplate = repository.DapperContext.QueryList<cmc_pdms_project_task>(sql, null);
                bool templateExists = checkTemplate.Any(b => b.template_id.ToString() == template_id.ToString());
                //如果沒有相同模板 => 1.還沒選任務 2.選了不同模板的任務 故刪除舊有資料後面再新增
                if (!templateExists)
                {
                    deleteAction = @$"
                            DELETE FROM
	                            cmc_pdms_project_task 
                            WHERE
	                            epl_id ='{epl_id}'";
                }
            }
            //批次選任務
            else if (path == "batch") 
            {
                //直接先清空任務
                deleteAction = @$"
                            DELETE FROM
	                            cmc_pdms_project_task 
                            WHERE
	                            epl_id IN ('{epl_id}')";
            }

            if (!deleteAction.IsNullOrWhiteSpace()) 
            {
                try
                {
                    Console.WriteLine("deleteAction:" + deleteAction);
                    var count = repository.DapperContext.ExcuteNonQuery(deleteAction, null);
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "子專案管理,子專案選擇模板任務,更換模板刪除舊模板 cmc_pdms_project_task 表 ，cmc_pdms_project_task 文件：addMissionData：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }
            }
            
            /*
            if (path == "single")
            {
                
            }
            //批次選任務
            else if (path == "batch")
            {

            }*/
            if (!string.IsNullOrEmpty(epl_id))
            {
                try
                {
                    foreach (string eplId in epl_idArray)
                    {
                        //把已選擇之任務挑出來
                        string sql2 = $@"SELECT  *  FROM  cmc_pdms_project_task WHERE epl_id ='{eplId}' AND template_id = '{template_id}'";
                        existTaskList = repository.DapperContext.QueryList<cmc_pdms_project_task>(sql2, null);

                        if (MainDatas.Count != 0)
                        {
                            try
                            {
                                foreach (var item in MainDatas)
                                {
                                    //判斷此任務是否已經被選擇了
                                    bool taskExists = existTaskList.Any(itemExist => itemExist.task_id.ToString() == item["task_id"].ToString());
                                    if (!taskExists)
                                    {
                                        cmc_pdms_project_task pTask = new cmc_pdms_project_task();
                                        //dateFormat(item, pTask);
                                        pTask.project_task_id = Guid.NewGuid();
                                        pTask.epl_id = eplId == null ? Guid.Parse("") : Guid.Parse(eplId.ToString());
                                        pTask.template_id = item["template_id"] == null ? Guid.Parse("") : Guid.Parse(item["template_id"].ToString());
                                        pTask.task_id = item["task_id"] == null ? Guid.Parse("") : Guid.Parse(item["task_id"].ToString());
                                        pTask.action_type = "add";
                                        pTask.approve_status = "00";
                                        pTask.warn = item["warn"] == null ? null : item["warn"].ToInt();
                                        pTask.warn_leader = item["warn_leader"] == null ? null : item["warn_leader"].ToInt();
                                        pTask.is_part_handle = item["is_part_handle"] == null ? "" : item["is_part_handle"].ToString();
                                        pTask.is_delete_able = item["is_delete_able"] == null ? "" : item["is_delete_able"].ToString();
                                        pTask.FormId = item["FormId"] == null ? Guid.Parse("") : Guid.Parse(item["FormId"].ToString());
                                        pTask.FormCode = item["FormCode"] == null ? "" : item["FormCode"].ToString();
                                        addList.Add(pTask);
                                    }
                                    else
                                    {
                                        cmc_pdms_project_task pTask = new cmc_pdms_project_task();
                                        Guid task_id = Guid.Parse(item["task_id"].ToString());
                                        pTask = existTaskList.FirstOrDefault(t => t.task_id == task_id);
                                        pTask.warn = item["warn"] == null ? null : item["warn"].ToInt();
                                        pTask.warn_leader = item["warn_leader"] == null ? null : item["warn_leader"].ToInt();
                                        //dateFormat(item, pTask);
                                        updateList.Add(pTask);
                                    }
                                }
                            }
                            catch (Exception ex)
                            {
                                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量新增前装箱  cmc_pdms_project_task 表，view_cmc_pdms_project_task_manageService 文件：addList：" + DateTime.Now + ":" + ex.Message);
                                return ResponseContent.Error();
                            }
                        }
                    }

                    if (addList.Count > 0)
                    {
                        try
                        {
                            repository.DapperContext.BeginTransaction((r) =>
                            {
                                DBServerProvider.SqlDapper.BulkInsert(addList, "cmc_pdms_project_task");
                                return true;
                            }, (ex) => { throw new Exception(ex.Message); });
                        }
                        catch (Exception ex)
                        {
                            Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量新增執行 cmc_pdms_project_task 表，view_cmc_pdms_project_task_manageService 文件-->BulkInsert：" + DateTime.Now + ":" + ex.Message);
                            return ResponseContent.Error();
                        }
                    }
                    if (updateList.Count > 0)
                    {
                        try
                        {
                            repository.DapperContext.BeginTransaction((r) =>
                            {
                                DBServerProvider.SqlDapper.UpdateRange(updateList, x => new { x.start_date, x.end_date });
                                return true;
                            }, (ex) => { throw new Exception(ex.Message); });
                        }
                        catch (Exception ex)
                        {
                            Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改執行 cmc_pdms_project_task 表，view_cmc_pdms_project_task_manageService 文件-->UpdateRange：" + DateTime.Now + ":" + ex.Message);
                            return ResponseContent.Error();
                        }
                    }
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改前装箱  cmc_pdms_project_epl 表，cmc_pdms_project_eplService 文件：eplList：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }
            }
            return ResponseContent.OK();
        }

        private static void dateFormat(Dictionary<string, object>? item, cmc_pdms_project_task pTask)
        {
            string format1 = "yyyy/MM/dd";
            string format2 = "yyyy-MM-dd";

            var startD = item["start_date"]?.ToString() ?? "";
            var endD = item["end_date"]?.ToString() ?? "";
            if (!string.IsNullOrEmpty(startD))
            {
                if (startD.Contains("/"))
                {
                    DateTime dateTimeValue = DateTime.ParseExact(startD, format1, CultureInfo.InvariantCulture);
                    string startDate = dateTimeValue.ToString("yyyy-MM-dd");
                    pTask.start_date = DateTime.ParseExact(startDate, format2, CultureInfo.InvariantCulture);
                }
                else
                {
                    pTask.start_date = DateTime.ParseExact(startD, format2, CultureInfo.InvariantCulture);
                }
            }
            if (!string.IsNullOrEmpty(endD))
            {
                if (endD.Contains("/"))
                {
                    DateTime dateTimeValue = DateTime.ParseExact(endD, format1, CultureInfo.InvariantCulture);
                    string endDate = dateTimeValue.ToString("yyyy-MM-dd");
                    pTask.end_date = DateTime.ParseExact(endDate, format2, CultureInfo.InvariantCulture);
                }
                else
                {
                    pTask.end_date = DateTime.ParseExact(endD, format2, CultureInfo.InvariantCulture);
                }
            }
        }

        public WebResponseContent deleteMissionData(SaveModel saveModel)
        {
            Console.WriteLine("deleteMissionData");
            var MainData = saveModel.MainData;
            string project_task_id = MainData["project_task_id"] == null ? "" : MainData["project_task_id"].ToString();

            string deleteAction = @$"
                DELETE FROM
	                cmc_pdms_project_task 
                WHERE
	                project_task_id IN({project_task_id})";
            try
            {
                var count = repository.DapperContext.ExcuteNonQuery(deleteAction, null);
            }
            catch (Exception ex)
            {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "子專案管理任務維護  刪除勾選任務 cmc_pdms_project_task 表 ，cmc_pdms_project_task 文件：deleteMissionData：" + DateTime.Now + ":" + ex.Message);
                return ResponseContent.Error();
            }
            return ResponseContent.OK();
        }
    }
}
