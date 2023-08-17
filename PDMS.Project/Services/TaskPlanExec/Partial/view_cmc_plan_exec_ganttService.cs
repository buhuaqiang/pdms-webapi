/*
 *所有关于view_cmc_plan_exec_gantt类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_cmc_plan_exec_ganttService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using Microsoft.Extensions.Options;
using OfficeOpenXml.FormulaParsing.Excel.Functions.DateTime;
using PDMS.Core.ManageUser;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using System.Collections.Generic;
using System;
using Microsoft.AspNetCore.Mvc.RazorPages;
using PDMS.Core.DBManager;
using System.Threading.Tasks;
using System.Drawing;
using Microsoft.AspNetCore.Mvc;
using PDMS.WorkFlow.Services;
using Quartz.Util;

namespace PDMS.Project.Services
{
    public partial class view_cmc_plan_exec_ganttService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_cmc_plan_exec_ganttRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public view_cmc_plan_exec_ganttService(
            Iview_cmc_plan_exec_ganttRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }

        public WebResponseContent ResponseContent = new WebResponseContent();

        public List<view_cmc_plan_exec_gantt> GetGanttInfo(object saveModel)
        {
            List<view_cmc_plan_exec_gantt> info = new List<view_cmc_plan_exec_gantt>();
            var data = JArray.Parse(saveModel.ToString());
            string part_no = data[0]["part_no"] == null ? "" : data[0]["part_no"].ToString();
            string part_name = data[1]["part_name"] == null ? "" : data[1]["part_name"].ToString();
            string start_date = data[2]["start_date"] == null ? "" : data[2]["start_date"].ToString();
            string end_date = data[3]["end_date"] == null ? "" : data[3]["end_date"].ToString();
            string gate_code = data[4]["gate_code"] == null ? "" : data[4]["gate_code"].ToString();
            string set_value = data[5]["set_value"] == null ? "" : data[5]["set_value"].ToString();
            string task_name = data[6]["task_name"] == null ? "" : data[6]["task_name"].ToString();
            string status = data[7]["status"] == null ? "" : data[7]["status"].ToString();
            string project_id = data[8]["project_id"] == null ? "" : data[8]["project_id"].ToString();

            string sql = @$"SELECT 
task.task_id,
task.task_name,
sl2.DicValue as set_value,
sl2.DicName as set_name,
sl3.DicValue as gate_code,
sl3.DicName as gate_name,
tsk.project_task_id,
tsk.start_date,
tsk.end_date,
tsk.FormCode,
tsk.FormId,
tsk.FormCollectionId,
tsk.warn,
tsk.warn_leader,
tsk.approve_status,
tsk.done_status,
tsk.is_audit_key,
users.User_Id,
gate.gate_start_date,
gate.gate_end_date,
case when ((DATEDIFF(day,  GETDATE(), tsk.end_date))<=tsk.warn and Convert(VARCHAR(10),GETDATE(),23) <=  tsk.end_date) then '0' when (DATEDIFF(day,tsk.end_date , GETDATE())>=tsk.warn_leader) then '1' else '-1' end 'task_status'
from cmc_pdms_project_task tsk
left join cmc_common_task  task on tsk.task_id=task.task_id
left join cmc_common_template_mapping map on map.task_id=tsk.task_id and 
set_id in (SELECT set_id from cmc_common_task_template_set where template_id=(SELECT main_plan_id from cmc_pdms_project_epl where part_no='{part_no}' and kd_type like 'D*%'   and  epl_phase='02' and project_id='{project_id}' and task_define_approve_status='01'))
left join cmc_common_task_template_set sets on map.set_id=sets.set_id
left join Sys_DictionaryList sl2 ON ( sl2.DicValue= sets.set_value AND sl2.Dic_ID = ( SELECT Dic_ID FROM Sys_Dictionary WHERE DicNo = sets.set_type ))
left join cmc_common_task_template_set parent on sets.parent_set_id=parent.set_id
left join Sys_DictionaryList sl3 ON ( sl3.DicValue= parent.set_value AND sl3.Dic_ID = ( SELECT Dic_ID FROM Sys_Dictionary WHERE DicNo = parent.set_type ))
left join cmc_pdms_project_gate  gate on gate.gate_code=sl3.DicValue  and gate.project_id=(SELECT project_id from cmc_pdms_project_epl where part_no='{part_no}' and kd_type like 'D*%'   and  epl_phase='02' and project_id='{project_id}' and task_define_approve_status='01')
left join Sys_User  users on users.User_id=(SELECT dev_taker_id from cmc_pdms_project_epl where part_no='{part_no}' and kd_type like 'D*%'   and  epl_phase='02' and project_id='{project_id}' and task_define_approve_status='01')
where tsk.epl_id=(SELECT epl_id from cmc_pdms_project_epl where part_no='{part_no}' and kd_type like 'D*%'   and  epl_phase='02' and project_id='{project_id}' and task_define_approve_status='01')  and tsk.start_date is not null  and tsk.end_date is not null
and gate.gate_start_date is not null  and gate.gate_end_date is not null  "  ;

            if (!string.IsNullOrEmpty(start_date))
            {
                sql += @$" and tsk.start_date>='{start_date}' ";
            }
            if (!string.IsNullOrEmpty(end_date))
            {
                sql += @$" and tsk.end_date<='{end_date}' ";
            }
            if (!string.IsNullOrEmpty(gate_code))
            {
                sql += @$" and sl3.DicValue='{gate_code}' ";
            }
            if (!string.IsNullOrEmpty(set_value))
            {
                sql += @$" and sl2.DicValue='{set_value}' ";
            }
            if (!string.IsNullOrEmpty(task_name))
            {
                sql += @$" and task.task_name like  '%{task_name}%' ";
            }

            if (!string.IsNullOrEmpty(status))
            {
                if (status == "0")
                {
                    sql += @" and DATEDIFF(day, GETDATE(), tsk.end_date)<=tsk.warn and  GETDATE()<=tsk.end_date";
                }
                else
                {
                    sql += @"  and DATEDIFF(day, tsk.end_date , GETDATE())>=tsk.warn_leader";
                }
            }
            UserInfo userList = UserContext.Current.UserInfo;
            var User_Id = userList.User_Id;
            if (User_Id != 1)
            {
                sql += @$" and users.User_Id='{User_Id}'";
            }
            sql += $@" order by tsk.order_no desc";
            info = repository.DapperContext.QueryList<view_cmc_plan_exec_gantt>(sql, null);
            repository.DapperContext.ExcuteNonQuery(sql, null);

            return info;
        }

        public List<GanttInfo> BindGanttInfo(object saveModel)
        {
            List<GanttInfo> info = new List<GanttInfo>();
            //先查出數據
            List<view_cmc_plan_exec_gantt> getinfo = GetGanttInfo(saveModel);
            //再組裝數據
            if (getinfo.Count != 0)
            {
                var GateInfo = getinfo.GroupBy(x => new { x.gate_code, x.gate_name, x.gate_start_date, x.gate_end_date }).ToList();
                var SetInfo = getinfo.GroupBy(x => new { x.set_value, x.set_name, x.gate_code }).ToList();

                var taskInfo = getinfo.GroupBy(x => new { x.gate_code, x.set_value, x.task_id, x.task_name, x.approve_status, x.FormId, x.FormCode, x.FormCollectionId, x.start_date, x.end_date, x.project_task_id, x.task_status,x.is_audit_key }).ToList();

                //var taskInfo222 = getinfo.GroupBy(x => new { x.gate_code, x.set_value, x.task_id}).ToList();
                var gateIndex = 0;
                var SetIndex = 50;
                var taskIndex =100;

                List<Dictionary<string, object>> GetaobjList = new List<Dictionary<string, object>>();
                List<Dictionary<string, object>> SetobjList = new List<Dictionary<string, object>>();
                List<SetAndTask> setAndTasks = new List<SetAndTask>();

                try
                {
                    //大日程装箱
                    foreach (var item in GateInfo)
                    {
                        gateIndex++;
                        //var gate_code = item.Key.gate_code;
                        //var gate_name = item.Key.gate_name;
                        //var gate_start_date = item.Key.gate_start_date;
                        //var gate_end_date = item.Key.gate_end_date;
                        GanttInfo data = new GanttInfo();
                        data.id = gateIndex;
                        data.task_name = item.Key.gate_name;
                        data.start_date = item.Key.gate_start_date == null ? "" : item.Key.gate_start_date.ToString("yyyy-MM-dd");
                        data.end_date = item.Key.gate_end_date == null ? "" : item.Key.gate_end_date.ToString("yyyy-MM-dd");
                        data.open = true;
                        data.type = "gate";
                        data.status = "gate";
                        data.StatusInfo = "";
                        info.Add(data);

                        Dictionary<string, object> obj = new Dictionary<string, object>();
                        obj.Add(item.Key.gate_code == null ? "" : item.Key.gate_code, gateIndex);
                        GetaobjList.Add(obj);
                    }
                    //阶段装箱
                    foreach (var item in SetInfo)
                    {
                        SetIndex++;
                        //var set_value = item.Key.set_value;
                        //var set_name = item.Key.set_name;
                        //var gate = item.Key.gate_code;
                        var index = 0;
                        //大日程的index
                        foreach (var temp in GetaobjList)
                        {
                            if (temp.Keys.Contains(item.Key.gate_code == null ? "" : item.Key.gate_code))
                            {
                                index = Convert.ToInt32(temp[item.Key.gate_code]);
                                break;
                            }
                        }
                        GanttInfo data = new GanttInfo();
                        data.id = SetIndex;
                        data.task_name = item.Key.set_name;
                        data.parent = index;
                        data.open = true;
                        data.type = "gate";//project
                        data.status = "phase";
                        info.Add(data);

                        //Dictionary<string, object> obj = new Dictionary<string, object>();
                        //obj.Add(item.Key.set_value == null ? "" : item.Key.set_value, SetIndex);
                        //SetobjList.Add(obj);

                        //主要是承上啟下的作用，解決 一個人任務在同一個階段下，不在同一個大日程下
                        SetAndTask tasks = new SetAndTask();
                        tasks.gate_code = item.Key.gate_code;
                        tasks.set_value = item.Key.set_value;
                        tasks.index = SetIndex;
                        setAndTasks.Add(tasks);
                    }
                    //任务装箱
                    foreach (var item in taskInfo)
                    {
                        taskIndex++;
                        var index = 0;
                        //根據階段和大日程 獲取Parent index

                        var Tempdata= setAndTasks.Where(x => x.gate_code == item.Key.gate_code && x.set_value == item.Key.set_value).FirstOrDefault();

                        if (Tempdata != null)
                        {
                            index = Tempdata.index;
                        }

                        //foreach (var temp in SetobjList)
                        //{
                        //    if (temp.Keys.Contains(item.Key.set_value == null ? "" : item.Key.set_value))
                        //    {
                        //        index = Convert.ToInt32(temp[item.Key.set_value]);
                        //        break;
                        //    }
                        //}

                        //var task_id = item.Key.task_id;
                        //var task_name = item.Key.task_name;
                        //var approve_status = item.Key.approve_status;
                        //var FormId = item.Key.FormId;
                        //var FormCode = item.Key.FormCode;
                        //var FormCollectionId = item.Key.FormCollectionId;

                        GanttInfo data = new GanttInfo();
                        data.id = taskIndex;
                        data.task_name = item.Key.is_audit_key == "1" ? item.Key.task_name + " (重點項目)" : item.Key.task_name;
                        data.start_date = item.Key.start_date == null ? "" : item.Key.start_date.ToString("yyyy-MM-dd");
                        data.end_date = item.Key.end_date == null ? "" : item.Key.end_date.ToString("yyyy-MM-dd");
                        data.parent = index;
                        data.is_audit_key = item.Key.is_audit_key;
                        data.type = "task";
                        data.status = "task";
                        data.approve_status = item.Key.approve_status;
                        data.StatusInfo = GetStatusText(item.Key.approve_status);
                        data.task_id = item.Key.task_id.ToString();
                        data.FormCollectionId = item.Key.FormCollectionId == null ? "" : item.Key.FormCollectionId.ToString();
                        data.FormCode = item.Key.FormCode == null ? "" : item.Key.FormCode.ToString();
                        data.FormId = item.Key.FormId == null ? "" : item.Key.FormId.ToString();
                        data.project_task_id = item.Key.FormCode == null ? "" : item.Key.project_task_id.ToString();
                        data.task_status = item.Key.task_status == null ? "" : item.Key.task_status.ToString();

                        info.Add(data);

                    }
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改執行，view_cmc_plan_exec_ganttService 文件-->组装甘特图数据：" + DateTime.Now + ":" + ex.Message);
                }

            }

            return info;
        }

        private string GetStatusText(string index)
        {
            string str = "";
            switch (index)
            {
                case "00":
                    str = "草稿";
                    break;
                case "01":
                    str = "審核中";
                    break;
                case "02":
                    str = "通過";
                    break;
                case "03":
                    str = "拒絕";
                    break;
                case "04":
                    str = "待提交";
                    break;
                default:
                    break;
            }
            return str;
        }


        public class SetAndTask
        {
            public string gate_code { get; set; }
            public string set_value { get; set; }

            public int  index { get; set; }

        }


        public class GanttInfo {

            //主ID
            public int id { get; set; }

            //父级ID
            public int parent { get; set; }

            //名称
            public string task_name { get; set; }

            //开始时间
            public string start_date { get; set; }

            //结束时间
            public string end_date { get; set; }

            //是否默认打开
            public bool open { get; set; }
            //区分类型：project、phase、task，区分只有 task 后面才会有 data 按钮，表单填写
            public string status { get; set; }

            //类型： task、project、project，  只有task前面加复选框
            public string type { get; set; }

            //完成进度：0.5
            public decimal progress { get; set; }

            //审核状态，针对于任务：通過、审核中
            public string StatusInfo { get; set; }


            public string name { get; set; }

            public string text { get; set; }

            public string project_task_id { get; set; }

            public string task_id { get; set; }

            public string FormCode { get; set; }

            public string FormId { get; set; }

            public string FormCollectionId { get; set; }

            public string approve_status { get; set; }

            public string task_status { get; set; }

            //设置零品承办
            public string is_audit_key { get; set; }

            //大日程开始时间
            public string gate_start_date { get; set; }

            //大日程结束时间
            public string gate_end_date { get; set; }

        }

        //表單彈窗 暫存和保存按鈕， 暫存status="00" 草稿,保存 status="04" 待提交
        public WebResponseContent TsSave(SaveModel saveModel, string status = "")
        {
            var FormData = saveModel.MainData["FormData"].ToString();
            var FormId = saveModel.MainData["FormId"].ToString();
            var FormCollectionId = saveModel.MainData["FormCollectionId"] == null ? "" : saveModel.MainData["FormCollectionId"].ToString();
            var project_task_id = saveModel.MainData["project_task_id"].ToString();
            var task_id = saveModel.MainData["task_id"].ToString();
            var title = saveModel.MainData["title"].ToString();
            var start_date = Convert.ToDateTime(saveModel.MainData["start_date"].ToString());
            var end_date = Convert.ToDateTime(saveModel.MainData["end_date"].ToString());
            var approve_status = saveModel.MainData["approve_status"].ToString();

            var Data = repository.DbContext.Set<cmc_pdms_project_task>().Where(x => x.project_task_id == Guid.Parse(project_task_id)).FirstOrDefault();

            if (Data != null)
            {
                try
                {
                    var isnull = Data.FormCollectionId;
                    if (isnull == null || isnull.ToString().Contains("000000"))
                    {
                        var guid = Guid.NewGuid();

                        #region  新增 FormCollectionObject
                        List<FormCollectionObject> obj = new List<FormCollectionObject>();
                        FormCollectionObject ListTemp = new FormCollectionObject();
                        ListTemp.FormCollectionId = guid;
                        ListTemp.FormId = Guid.Parse(FormId);
                        ListTemp.FormData = FormData;
                        ListTemp.Title = title;
                        obj.Add(ListTemp);

                        repository.DapperContext.BeginTransaction((r) =>
                        {
                            DBServerProvider.SqlDapper.BulkInsert(obj, "FormCollectionObject");
                            return true;
                        }, (ex) => { throw new Exception(ex.Message); });



                        #endregion

                        #region   修改 cmc_pdms_project_task  FormCollectionId 欄位
                        List<cmc_pdms_project_task> info = new List<cmc_pdms_project_task>();
                        Data.FormCollectionId = guid;
                        info.Add(Data);
                        repository.DapperContext.BeginTransaction((r) =>
                        {
                            DBServerProvider.SqlDapper.UpdateRange(info, x => new { x.FormCollectionId });
                            return true;
                        }, (ex) => { throw new Exception(ex.Message); });

                        #endregion
                    }
                    else
                    {
                        #region   修改 FormCollectionObject  FormData 欄位

                        var datas = repository.DbContext.Set<FormCollectionObject>().Where(x => x.FormCollectionId == Guid.Parse(FormCollectionId)).FirstOrDefault();
                        if (datas != null)
                        {
                            datas.FormData = FormData;
                            SaveModel.DetailListDataResult FormResult = new SaveModel.DetailListDataResult();
                            FormResult.optionType = SaveModel.MainOptionType.update;
                            FormResult.detailType = typeof(FormCollectionObject);
                            FormResult.DetailData.Add(JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(datas)));
                            saveModel.DetailListData.Add(FormResult);


                            List<FormCollectionObject> formList = new List<FormCollectionObject>();
                            formList.Add(datas);
                            repository.DapperContext.BeginTransaction((r) =>
                            {
                                DBServerProvider.SqlDapper.UpdateRange(formList, x => new { x.FormData });
                                return true;
                            }, (ex) => { throw new Exception(ex.Message); });
                        }
                        #endregion

                        #region  cmc_pdms_project_task  start_date /end_date /approve_status欄位
                        Data.start_date = start_date;
                        Data.end_date = end_date;
                        Data.approve_status = status;
                        List<cmc_pdms_project_task> List = new List<cmc_pdms_project_task>();
                        List.Add(Data);
                        repository.DapperContext.BeginTransaction((r) =>
                        {
                            DBServerProvider.SqlDapper.UpdateRange(List, x => new { x.start_date, x.end_date, x.approve_status });
                            return true;
                        }, (ex) => { throw new Exception(ex.Message); });
                        #endregion
                    }


                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "主工作計劃執行，表單->暫存按鈕 ，新增：FormCollectionObject 表  或  修改 cmc_pdms_project_task  FormCollectionId/FormData 欄位，view_cmc_plan_exec_ganttService 文件-->UpdateRange：" + DateTime.Now + ":" + ex.Message);
                    ResponseContent.Error(ex.Message);
                }
            }



            return ResponseContent.OK();
        }

        public SaveModel AnalysisData(SaveModel saveModel)
        {
            var TaskIds = "";
            if (saveModel.MainData.ContainsKey("checkVal"))
            {
                var str = saveModel.MainData["checkVal"].ToString();
                JArray jarry = JArray.Parse(str);
                TaskIds = string.Join("''", jarry);
            }
            else 
            {
                TaskIds = saveModel.MainData["project_task_id"].ToString();
            }
            string sql = $@"select ptask.project_task_id,ptask.task_id,ptask.start_date,ptask.end_date,ptask.approve_status,
                  ops.FormId,ops.FormCode,ops.FormOptions,
                  obj.FormCollectionId,obj.FormData ,task.flow_code,epl.part_taker_id from  cmc_pdms_project_task  ptask
                 left join  cmc_pdms_project_epl epl on ptask.epl_id=epl.epl_id
                 left join  cmc_common_task task  on ptask.task_id=task.task_id
                 left join  FormDesignOptions  ops on ptask.FormId=ops.FormId
                 LEFT JOIN  FormCollectionObject  obj on ptask.FormCollectionId=obj.FormCollectionId
                 where project_task_id in('{TaskIds}')";
            var list = repository.DapperContext.QueryList<view_cmc_plan_exec_gantt>(sql, null);
            saveModel.MainDatas = JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(JsonConvert.SerializeObject(list));

            return saveModel;
        }


        //雙擊甘特圖任務：設置重點項目
        public WebResponseContent setAuditKey(string project_task_id = "",string is_audit_key="")
        {
            if (!string.IsNullOrEmpty(project_task_id))
            {
                try
                {
                    var Ptask_id = Guid.Parse(project_task_id);
                    List<cmc_pdms_project_task> List = new List<cmc_pdms_project_task>();
                    var temp = repository.DbContext.Set<cmc_pdms_project_task>().Where(x => x.project_task_id == Ptask_id).FirstOrDefault();
                    if (temp != null)
                    {
                        if (!string.IsNullOrEmpty(is_audit_key) && is_audit_key=="0")
                        {
                            temp.is_audit_key = "0";
                        }
                        else
                        {
                            temp.is_audit_key = "1";
                        }               
                    }
                    List.Add(temp);
                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.UpdateRange(List, x => new { x.is_audit_key });
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改執行 cmc_pdms_project_task 表，view_cmc_plan_exec_ganttService 文件-->setAuditKey：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error(ex.Message);
                }

            }
            return ResponseContent.OK();
        }


        //拖動甘特圖調整時間
        public WebResponseContent UpdateTaskDate(SaveModel saveModel)
        {
            var project_task_id =Guid.Parse(saveModel.MainData["project_task_id"].ToString());
            var start_date = Convert.ToDateTime(saveModel.MainData["start_date"].ToString());
            var end_date = Convert.ToDateTime(saveModel.MainData["end_date"].ToString());
            var approve_status = saveModel.MainData["approve_status"].ToString();
            try
            {
                List<cmc_pdms_project_task> taskList = new List<cmc_pdms_project_task>();
                var temp = repository.DbContext.Set<cmc_pdms_project_task>().Where(x => x.project_task_id == project_task_id).FirstOrDefault();
                temp.start_date = start_date;
                temp.end_date = end_date;
                taskList.Add(temp);
                repository.DapperContext.BeginTransaction((r) =>
                {
                    DBServerProvider.SqlDapper.UpdateRange(taskList, x => new { x.start_date, x.end_date });
                    return true;
                }, (ex) => { throw new Exception(ex.Message); });
            }
            catch (Exception ex)
            {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改執行 cmc_pdms_project_task 表，cmc_common_task_templateService 文件-->UpdateTaskDate：" + DateTime.Now + ":" + ex.Message);

                return ResponseContent.Error();

            }
            return ResponseContent.OK();
        }


        //表單彈窗 保存並提交按鈕
        public WebResponseContent SaveAndSubmit(SaveModel saveModel, string status)
        {
            string TempStatus = "";
            if (saveModel.MainData.ContainsKey("status"))
            {
                TempStatus = saveModel.MainData["status"].ToString();
            }
            if (TempStatus == "02")
            {
                #region  寫入子專案工作計劃歷史表cmc_pdms_project_task_hist
                  ResponseContent = Insert_task_hist(saveModel);
                #endregion

                #region 新增一筆數據 FormCollectionObject  ,更新 cmc_pdms_project_task.FormCollectionId
                ResponseContent = FormCollectionObject(saveModel);
                #endregion               
            }
            #region 新增一筆cmc_pdms_wf_master 數據，cmc_pdms_wf_epl_task_form子專案工作計劃-任務審核
            var Temp = saveModel.MainDatas;
            var list = Temp.GroupBy(x => x["flow_code"]).ToList();
            SaveModel ModelOne = new SaveModel();
            //审批通道1
            List<Dictionary<string, object>> ChannelOne = new List<Dictionary<string, object>>();
            //审批通道2
            List<Dictionary<string, object>> ChannelTwo = new List<Dictionary<string, object>>();
            Sys_User user = new Sys_User();
            foreach (var item in list)
            {
                foreach (var info in item)
                {
                    switch (item.Key)
                    {
                        case "1":
                            ChannelOne.Add(info);
                            break;
                        case "2":
                            ChannelTwo.Add(info);           
                            break;
                        default:
                            break;
                    }
                }         
            }
            ModelOne.MainData = saveModel.MainData;
            if (ChannelOne.Count != 0)
            {
                //通道1
                ModelOne.MainDatas = ChannelOne;
                ResponseContent = cmc_pdms_wf_masterService.Instance.MasterUpdate(ModelOne, "01", "04", null);
            }
            if (ChannelTwo.Count != 0)
            {
                //通道2
                ModelOne.MainDatas = ChannelTwo;
                var part_taker_id = ChannelTwo[0]["part_taker_id"].ToString();
                user = repository.DbContext.Set<Sys_User>().Where(x => x.User_Id == Convert.ToInt32(part_taker_id)).FirstOrDefault();
                ResponseContent = cmc_pdms_wf_masterService.Instance.MasterUpdate(ModelOne, "01", "04", user);
            }         
            #endregion

            return ResponseContent.OK();
        }


        //新增一筆數據 FormCollectionObject  
        public WebResponseContent FormCollectionObject(SaveModel saveModel)
        {
            //MainDatas 批量提交
            var TempList = saveModel.MainDatas;
            if (TempList.Count == 0)
            {
                //表單單筆提交
                TempList[0] = saveModel.MainData;
            }
            try
            {
                //新增
                List<FormCollectionObject> objList = new List<FormCollectionObject>();
                //修改
                List<cmc_pdms_project_task> taskList = new List<cmc_pdms_project_task>();
                foreach (var item in TempList)
                {
                    var FormCollectionIds = Guid.NewGuid();
                    FormCollectionObject obj = new FormCollectionObject();
                    obj.FormCollectionId = FormCollectionIds;
                    obj.FormId = Guid.Parse(item["FormId"].ToString());
                    obj.Title = item["title"].ToString();
                    obj.FormData = item["FormData"].ToString();
                    objList.Add(obj);

                    //查出當前那筆數據
                    var task = repository.DbContext.Set<cmc_pdms_project_task>().Where(x => x.project_task_id == Guid.Parse(item["project_task_id"].ToString())).FirstOrDefault();
                    task.FormCollectionId = FormCollectionIds;
                    taskList.Add(task);
                }

                //批量新增FormCollectionObject
                repository.DapperContext.BeginTransaction((r) =>
                {
                    DBServerProvider.SqlDapper.BulkInsert(objList, "FormCollectionObject");
                    return true;
                }, (ex) => { throw new Exception(ex.Message); });

                //批量修改
                repository.DapperContext.BeginTransaction((r) =>
                {
                    DBServerProvider.SqlDapper.UpdateRange(taskList, x => new { x.FormCollectionId });
                    return true;
                }, (ex) => { throw new Exception(ex.Message); });
            }
            catch (Exception ex)
            {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量新增、修改執行 FormCollectionObject、cmc_pdms_project_task 表，view_cmc_plan_exec_ganttService 文件-->先BulkInsert、UpdateRange：" + DateTime.Now + ":" + ex.Message);
            }
         


            return ResponseContent.OK();
        }

        //寫入子專案工作計劃歷史表cmc_pdms_project_task_hist
        public WebResponseContent Insert_task_hist(SaveModel saveModel)
        {
            var TempList = saveModel.MainDatas;
            if (TempList.Count == 0)
            {
                //表單單筆提交
                TempList[0] = saveModel.MainData;
            }
            List<cmc_pdms_project_task_hist> task_List = new List<cmc_pdms_project_task_hist>();
            try
            {
                foreach (var item in TempList)
                {
                    var project_task_id =Guid.Parse(item["project_task_id"].ToString());
                    var ptask = repository.DbContext.Set<cmc_pdms_project_task>().Where(x => x.project_task_id == project_task_id).FirstOrDefault();
                    task_List.Add(new cmc_pdms_project_task_hist
                    {
                        project_task_his_id = Guid.NewGuid(),
                        project_task_id = project_task_id,
                        epl_id = ptask.epl_id,
                        approve_status = ptask.approve_status,
                        done_status = ptask.done_status,
                        check_flag = ptask.check_flag,
                        template_id = ptask.template_id,
                        task_id = ptask.task_id,
                        FormCode = ptask.FormCode,
                        FormId = ptask.FormId,
                        FormCollectionId = ptask.FormCollectionId,
                        start_date = ptask.start_date,
                        end_date = ptask.end_date,
                        order_no = ptask.order_no,
                        pre_task_id = ptask.pre_task_id,
                        rule_id = ptask.rule_id,
                        is_eo = ptask.is_eo,
                        is_part_handle = ptask.is_part_handle,
                        is_delete_able = ptask.is_delete_able,
                        is_audit_key = ptask.is_audit_key,
                        warn = ptask.warn,
                        warn_leader = ptask.warn_leader,
                        action_type = ptask.action_type,
                        data_source ="01"
                    }); 
                }

                repository.DapperContext.BeginTransaction((r) =>
                {
                    DBServerProvider.SqlDapper.BulkInsert(task_List, "cmc_pdms_project_task_hist");
                    return true;
                }, (ex) => { throw new Exception(ex.Message); });
            }
            catch (Exception ex)
            {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量新增執行 cmc_pdms_project_task_hist 表，view_cmc_plan_exec_ganttService 文件-->Insert_task_hist-->BulkInsert:" + DateTime.Now + ":" + ex.Message);
                return ResponseContent.Error();
            }
            return ResponseContent.OK();
        }

    }
}
