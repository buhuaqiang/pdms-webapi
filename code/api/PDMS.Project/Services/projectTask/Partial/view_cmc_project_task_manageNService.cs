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
using Microsoft.Extensions.Primitives;
using PDMS.WorkFlow.Services;

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

            QuerySql = @"SELECT *,ROW_NUMBER()over(ORDER BY glno , part_no  desc) AS rowId  FROM view_cmc_project_task_manageN WHERE 1=1  ";
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
            var epl_ids = MainData["epl_id"] == null ? "" : JArray.Parse(saveModel.MainData["epl_id"].ToString()).ToString();
            //List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            List<string> eplResStr = new List<string>();
            List<string> partTakerResStr = new List<string>();
            if (!string.IsNullOrEmpty(epl_ids))
            {
                try
                {
                    JArray epl_idArray = JArray.Parse(epl_ids);
                    List<string> invalidEplIds = new List<string>();
                    List<string> invalidPartTaker = new List<string>();
                    view_cmc_project_task_manageN manageN = new view_cmc_project_task_manageN();
                    foreach (string epl_id in epl_idArray)
                    {
                        Guid gepl_id = Guid.Parse(epl_id);
                        var template_id = "";
                        manageN = repository.DbContext.Set<view_cmc_project_task_manageN>().Where(x => x.epl_id == gepl_id).FirstOrDefault();
                        if (manageN != null)
                        {
                            template_id = manageN.template_id.ToString(); 
                        }
                        //如果沒有設置零品承辦
                        if (!manageN.part_taker_id.HasValue)
                        {
                            invalidPartTaker.Add(epl_id);
                        }
                        //如果連模板都還沒有
                        if (template_id == "")
                        {
                            invalidEplIds.Add(epl_id);
                            continue;
                        }

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
                        sql += $" ORDER BY CAST( sl3.DicValue AS INT ) ASC, CAST( sl2.DicValue AS INT ) DESC, CAST( map.order_no AS INT ) DESC";
                        Console.WriteLine(sql);
                        List<view_cmc_project_task_mission_manage> result = new List<view_cmc_project_task_mission_manage>();
                        result = repository.DapperContext.QueryList<view_cmc_project_task_mission_manage>(sql, null);
                        foreach (var item in result)
                        {
                            // 檢查日期是否為正常值
                            if (!IsValidDate(item.gate_end_date) ||
                                !IsValidDate(item.end_date) ||
                                !IsValidDate(item.start_date) ||
                                !IsValidDate(item.gate_start_date))
                            {
                                // 邏輯不符合，將 epl_id 加入到 invalidEplIds 列表中
                                invalidEplIds.Add(epl_id);
                                break; // 跳出迴圈，進行下一個 epl_id
                            }
                            // 邏輯檢查
                            if (item.gate_end_date >= item.end_date &&
                                item.end_date >= item.start_date &&
                                item.start_date >= item.gate_start_date)
                            {
                               
                            }
                            else
                            {
                                // 邏輯不對，將 epl_id 存起來
                                invalidEplIds.Add(epl_id);
                                break;
                            }
                            if (item.warn.HasValue && item.warn.Value < 0)
                            {
                                invalidEplIds.Add(epl_id);
                                break; // 跳出迴圈，進行下一個 epl_id
                            }

                            if (item.warn_leader.HasValue && item.warn_leader.Value < 0)
                            {
                                invalidEplIds.Add(epl_id);
                                break; // 跳出迴圈，進行下一個 epl_id
                            }
                        }
                    }

                    foreach (string inepl_id in invalidPartTaker)
                    {
                        manageN = repository.DbContext.Set<view_cmc_project_task_manageN>().Where(x => x.epl_id == Guid.Parse(inepl_id)).FirstOrDefault();
                        string resultString = $"[Glno:{manageN.glno}-{manageN.project_name}-{manageN.part_name}]";
                        partTakerResStr.Add(resultString);
                    }
                    foreach (string inepl_id in invalidEplIds)
                    {
                        manageN = repository.DbContext.Set<view_cmc_project_task_manageN>().Where(x => x.epl_id == Guid.Parse(inepl_id)).FirstOrDefault();
                        string resultString = $"[Glno:{manageN.glno}-{manageN.project_name}-{manageN.part_name}]";
                        eplResStr.Add(resultString);
                    }
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "提交審批資料檢查  view_cmc_project_task_mission_manage 表，view_cmc_project_task_mission_manage 文件：eplList：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }

                // 將結果用逗號分隔合併為一個字串
                string combinedPartTaker = string.Join(" , ", partTakerResStr);
                string combinedResult = string.Join(" , ", eplResStr);

                string finalErrorMsg = "";
                if (!string.IsNullOrEmpty(combinedPartTaker))
                {
                    finalErrorMsg += combinedPartTaker + " 未設置零品承辦。";
                }
                if (!string.IsNullOrEmpty(combinedResult))
                {
                    finalErrorMsg += combinedResult + " 任務資料未填妥。";
                }
                if (!string.IsNullOrEmpty(finalErrorMsg))
                {
                    return ResponseContent.Error(finalErrorMsg);
                }
            }
            return ResponseContent.OK();
        }
        // 檢查日期是否為正常值的方法
        private bool IsValidDate(DateTime? date)
        {
            return date.HasValue && date.Value != DateTime.MinValue && date.Value != DateTime.MaxValue;
        }

        public WebResponseContent submit(SaveModel saveModel)
        {
            var MainData = saveModel.MainData;
            var epl_ids = MainData["epl_id"] == null ? "" : JArray.Parse(saveModel.MainData["epl_id"].ToString().Trim()).ToString();
            //var epl_ids = MainData["epl_id"]?.ToString().Trim();
            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            if (!string.IsNullOrEmpty(epl_ids))
            {
                try
                {
                    JArray epl_idArray = JArray.Parse(epl_ids);
                    //string[] epl_idArray = epl_ids.Split(',');
                    view_cmc_project_task_manageN manageN = new view_cmc_project_task_manageN();
                    foreach (string epl_id in epl_idArray)
                    {
                        string TempStatus = "";
                        SaveModel ModelOne = new SaveModel();
                        ModelOne.MainData = new Dictionary<string, object>();
                        ModelOne.MainData["epl_id"] = epl_id;
                        
                        var template_id = "";
                        int? part_taker = null;
                        manageN = repository.DbContext.Set<view_cmc_project_task_manageN>().Where(x => x.epl_id == Guid.Parse(epl_id)).FirstOrDefault();
                        if (manageN != null)
                        {
                            template_id = manageN.template_id.ToString();
                            part_taker = manageN.part_taker_id;
                            ModelOne.MainData["project_id"] = manageN.project_id;
                            TempStatus = manageN.task_define_approve_status;
                        }
                        //if (TempStatus == "02")
                        //{
                        //    //寫入子專案工作計劃歷史表cmc_pdms_project_task_hist
                        //    ResponseContent = Insert_task_hist(ModelOne);
                        //}

                        //判斷是否需要零品承辦參與審核
                        string need_part = "";
                        string partSQL = $@"
SELECT
    CASE
        WHEN (
            SELECT COUNT(0)
            FROM cmc_common_template_mapping map
            LEFT JOIN cmc_common_task task ON map.task_id = task.task_id
            LEFT JOIN cmc_common_task_template_set st ON st.set_id = map.set_id 
            WHERE st.template_id = @TemplateId
            AND task.is_part_handle = '1'
        ) = (
            SELECT COUNT(0)
            FROM cmc_pdms_project_task
            WHERE epl_id = @EplId
            AND is_part_handle = '1'
        ) THEN '1'
        ELSE '0'
    END AS is_part_handle;
";
                        List<cmc_common_task> result = new List<cmc_common_task>();
                        result = repository.DapperContext.QueryList<cmc_common_task>(partSQL, new { TemplateId = template_id, EplId = epl_id });
                        if (result != null)
                        {
                            need_part = result[0].is_part_handle;
                        }
                        
                        if (need_part == "1")
                        {
                            //審核人 = 零品承辦
                            Sys_User userInfo = new Sys_User();
                            userInfo = repository.DbContext.Set<Sys_User>().Where(x => x.User_Id == part_taker).FirstOrDefault();
                            ResponseContent = cmc_pdms_wf_masterService.Instance.MasterUpdate(ModelOne, "01", "03", userInfo);
                        }
                        else if (need_part == "0")
                        {
                            //審核人 = 開發承辦上級(組經理?)
                            ResponseContent = cmc_pdms_wf_masterService.Instance.MasterUpdate(ModelOne, "01", "03", null);
                        }

                        cmc_pdms_project_epl epl = new cmc_pdms_project_epl();
                        epl = repository.DbContext.Set<cmc_pdms_project_epl>().Where(x => x.epl_id == Guid.Parse(epl_id)).FirstOrDefault();
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
                    return ResponseContent.Error(ex.Message);
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
                    return ResponseContent.Error(ex.Message);
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
                        Guid project_task_id = Guid.Parse(item["project_task_id"].ToString());
                        cmc_pdms_project_task pTask = new cmc_pdms_project_task();
                        pTask = repository.DbContext.Set<cmc_pdms_project_task>().Where(x =>  x.project_task_id == project_task_id).FirstOrDefault();

                        if (pTask != null)
                        {
                            dateFormat(item, pTask);
                            pTask.warn = item["warn"] == null ? null : item["warn"].ToInt();
                            pTask.warn_leader = item["warn_leader"] == null ? null : item["warn_leader"].ToInt();
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
                        DBServerProvider.SqlDapper.UpdateRange(projectTaskLisk, x => new { x.start_date, x.end_date, x.warn, x.warn_leader });
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
            string setdeleteAction = "";
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
                    setdeleteAction = @$"UPDATE cmc_pdms_project_task
                                                            SET action_type = 'delete' 
                                                            WHERE epl_id ='{epl_id}'";
                }
            }
            //批次選任務
            else if (path == "batch")
            {
                foreach (string item in epl_idArray)
                {
                    string sql = $@"SELECT  epl_id , template_id  FROM cmc_pdms_project_task
                            WHERE epl_id='" + item + "'";
                    checkTemplate = repository.DapperContext.QueryList<cmc_pdms_project_task>(sql, null);
                    bool templateExists = checkTemplate.Any(b => b.template_id.ToString() == template_id.ToString());
                    //如果沒有相同模板 => 1.還沒選任務 2.選了不同模板的任務 故刪除舊有資料後面再新增
                    if (!templateExists)
                    {
                        setdeleteAction = @$"UPDATE cmc_pdms_project_task SET action_type = 'delete' WHERE epl_id ='{epl_id}'";
                    }
                }
            }
            if (!setdeleteAction.IsNullOrWhiteSpace()) 
            {
                try
                {
                    var count = repository.DapperContext.ExcuteNonQuery(setdeleteAction, null);
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "子專案管理,子專案選擇模板任務,更換模板刪除舊模板 cmc_pdms_project_task 表 ，cmc_pdms_project_task 文件：addMissionData：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }
            }

            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            if (!string.IsNullOrEmpty(epl_id))
            {
                try
                {
                    //JArray epl_idArray = JArray.Parse(epl_id);
                    foreach (string item in epl_idArray)
                    {
                        cmc_pdms_project_epl epl = new cmc_pdms_project_epl();
                        epl = repository.DbContext.Set<cmc_pdms_project_epl>().Where(x => x.epl_id == Guid.Parse(item)).FirstOrDefault();
                        if (epl != null)
                        {
                            epl.main_plan_id = template_id == null ? Guid.Empty : Guid.Parse(template_id.ToString());
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
                        DBServerProvider.SqlDapper.UpdateRange(eplList, x => new { x.main_plan_id });
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改執行 cmc_pdms_project_epl 表，cmc_pdms_project_eplService 文件-->UpdateRange：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }
            }

            if (!string.IsNullOrEmpty(epl_id))
            {
                try
                {
                    foreach (string eplId in epl_idArray)
                    {
                        //把已選擇之任務挑出來
                        string sql2 = $@"SELECT  *  FROM  cmc_pdms_project_task WHERE epl_id ='{eplId}' AND template_id = '{template_id}'  ";
                        existTaskList = repository.DapperContext.QueryList<cmc_pdms_project_task>(sql2, null);

                        if (MainDatas.Count != 0)
                        {
                            try
                            {
                                foreach (var item in MainDatas)
                                {
                                    //判斷此階段+任務是否已經被選擇了
                                    bool taskExists = existTaskList.Any(itemExist => itemExist.mapping_id.ToString() == item["mapping_id"].ToString());
                                    if (!taskExists)
                                    {
                                        cmc_pdms_project_task pTask = new cmc_pdms_project_task();
                                        //dateFormat(item, pTask);
                                        pTask.project_task_id = Guid.NewGuid();
                                        pTask.epl_id = eplId == null ? Guid.Empty : Guid.Parse(eplId.ToString());
                                        pTask.template_id = item["template_id"] == null ? Guid.Empty : Guid.Parse(item["template_id"].ToString());
                                        pTask.task_id = item["task_id"] == null ? Guid.Empty : Guid.Parse(item["task_id"].ToString());
                                        pTask.mapping_id = item["mapping_id"] == null ? Guid.Empty : Guid.Parse(item["mapping_id"].ToString());
                                        pTask.action_type = "add";
                                        pTask.approve_status = "00";
                                        pTask.warn = item["warn"] == null ? null : item["warn"].ToInt();
                                        pTask.warn_leader = item["warn_leader"] == null ? null : item["warn_leader"].ToInt();
                                        pTask.is_part_handle = item["is_part_handle"] == null ? "" : item["is_part_handle"].ToString();
                                        pTask.is_delete_able = item["is_delete_able"] == null ? "" : item["is_delete_able"].ToString();
                                        //pTask.FormId = item["formId"] == null ? Guid.Parse("") : Guid.Parse(item["formId"].ToString());
                                        pTask.FormId = item["formId"] == null ? Guid.Empty : Guid.Parse(item["formId"].ToString());
                                        pTask.FormCode = item["formCode"] == null ? "" : item["formCode"].ToString();
                                        addList.Add(pTask);
                                    }
                                    else
                                    {
                                        cmc_pdms_project_task pTask = new cmc_pdms_project_task();
                                        Guid mapping_id = Guid.Parse(item["mapping_id"].ToString());
                                        pTask = existTaskList.FirstOrDefault(t => t.mapping_id == mapping_id);
                                        //看之後新增任務的時候date有沒有需要設為空
                                        //pTask.start_date = null;
                                        //pTask.end_date = null;
                                        pTask.warn = item["warn"] == null ? null : item["warn"].ToInt();
                                        pTask.warn_leader = item["warn_leader"] == null ? null : item["warn_leader"].ToInt();
                                        if (pTask.action_type == "delete")
                                        {
                                            pTask.action_type = "add";
                                        }
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
                                DBServerProvider.SqlDapper.UpdateRange(updateList, x => new { x.start_date, x.end_date, x.warn, x.warn_leader, x.action_type });
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
            string endformat1 = "yyyy/MM/dd HH:mm:ss";
            string endformat2 = "yyyy-MM-dd HH:mm:ss";

            var startD = item["start_date"]?.ToString() ?? "";
            var endD = item["end_date"]?.ToString() ?? "";
            if (!string.IsNullOrEmpty(startD))
            {
                // 檢查是否包含 "NaN"
                if (startD.Contains("NaN"))
                {
                    pTask.start_date = null;
                }
                else 
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
                
            }
            else 
            {
                pTask.start_date = null;
            }
            if (!string.IsNullOrEmpty(endD))
            {
                if (endD.Contains("NaN"))
                {
                    pTask.end_date = null;
                }
                else
                {
                    DateTime dateTimeValue;
                    if (endD.Contains("/"))
                    {
                        dateTimeValue = DateTime.ParseExact(endD, format1, CultureInfo.InvariantCulture);
                        string endDate = dateTimeValue.ToString(format1);
                        pTask.end_date = DateTime.ParseExact(endDate, format2, CultureInfo.InvariantCulture);
                    }
                    else
                    {
                        pTask.end_date = DateTime.ParseExact(endD, format2, CultureInfo.InvariantCulture);
                    }
                    // 將 end_date 加上 "23:59:59" 的時間部分
                    pTask.end_date = pTask.end_date?.Date.AddHours(23).AddMinutes(59).AddSeconds(59);
                }
            }
            else
            {
                pTask.end_date = null;
            }
        }

        public WebResponseContent deleteMissionData(SaveModel saveModel)
        {
            //刪除任務時 賦予action_type = "delete" 方便日後寫入cmc_pdms_project_task_hist 跟 cmc_pdms_wf_project_task_define
            var MainData = saveModel.MainDatas;
            List<cmc_pdms_project_task> projectTaskLisk = new List<cmc_pdms_project_task>();
            if (MainData.Count != 0)
            {
                try
                {
                    foreach (var item in MainData)
                    {
                        Guid project_task_id = Guid.Parse(item["project_task_id"].ToString());
                        cmc_pdms_project_task pTask = new cmc_pdms_project_task();
                        pTask = repository.DbContext.Set<cmc_pdms_project_task>().Where(x => x.project_task_id == project_task_id).FirstOrDefault();

                        if (pTask != null)
                        {
                            pTask.action_type = "delete";
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
                        DBServerProvider.SqlDapper.UpdateRange(projectTaskLisk, x => new { x.action_type });
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
            /*var MainData = saveModel.MainData;
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
            return ResponseContent.OK();*/

        }

    }
}
