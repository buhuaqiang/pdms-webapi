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

            string sql= @$"SELECT 
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
users.User_Id,
gate.gate_start_date,
gate.gate_end_date
from cmc_pdms_project_task tsk
left join cmc_common_task  task on tsk.task_id=task.task_id
left join cmc_common_template_mapping map on map.task_id=tsk.task_id and 
set_id in (SELECT set_id from cmc_common_task_template_set where template_id=(SELECT main_plan_id from cmc_pdms_project_epl where part_no='{part_no}' and company_code is null  and  epl_phase='02'))
left join cmc_common_task_template_set sets on map.set_id=sets.set_id
left join Sys_DictionaryList sl2 ON ( sl2.DicValue= sets.set_value AND sl2.Dic_ID = ( SELECT Dic_ID FROM Sys_Dictionary WHERE DicNo = sets.set_type ))
left join cmc_common_task_template_set parent on sets.parent_set_id=parent.set_id
left join Sys_DictionaryList sl3 ON ( sl3.DicValue= parent.set_value AND sl3.Dic_ID = ( SELECT Dic_ID FROM Sys_Dictionary WHERE DicNo = parent.set_type ))
left join cmc_pdms_project_gate  gate on gate.gate_code=sl3.DicValue  and gate.project_id=(SELECT project_id from cmc_pdms_project_epl where part_no='{part_no}' and company_code is null  and  epl_phase='02')
left join Sys_User  users on users.User_id=(SELECT dev_taker_id from cmc_pdms_project_epl where part_no='{part_no}' and company_code is null  and  epl_phase='02')
where tsk.epl_id=(SELECT epl_id from cmc_pdms_project_epl where part_no='{part_no}' and company_code is null  and  epl_phase='02')";

            if (!string.IsNullOrEmpty(start_date))
            {
                sql += @$" and tsk.start_date>='{start_date}' ";
            }
            if (!string.IsNullOrEmpty(part_no))
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
            info= repository.DapperContext.QueryList<view_cmc_plan_exec_gantt>(sql, null);

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
                var SetInfo = getinfo.GroupBy(x => new { x.set_value, x.set_name,x.gate_code }).ToList();
                var taskInfo = getinfo.GroupBy(x => new { x.task_id, x.task_name,x.approve_status,x.FormId,x.FormCode,x.FormCollectionId,x.set_value,x.start_date,x.end_date,x.project_task_id }).ToList();

                var gateIndex = 0;
                var SetIndex = 1;
                var taskIndex =2;

                List<Dictionary<string, object>> GetaobjList = new List<Dictionary<string, object>>();
                List<Dictionary<string, object>> SetobjList = new List<Dictionary<string, object>>();

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
                    data.task_name= item.Key.gate_name;
                    data.start_date = item.Key.gate_start_date.ToString("yyyy-MM-dd");
                    data.end_date= item.Key.gate_end_date.ToString("yyyy-MM-dd");
                    data.open = true;
                    data.type = "project";
                    data.status = "project";
                    data.StatusInfo = "";
                    info.Add(data);

                    Dictionary<string, object> obj = new Dictionary<string, object>();
                    obj.Add(item.Key.gate_code, gateIndex);
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
                        if (temp.Keys.Contains(item.Key.gate_code))
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
                    data.type = "project";
                    data.status = "phase";
                    info.Add(data);

                    Dictionary<string, object> obj = new Dictionary<string, object>();
                    obj.Add(item.Key.set_value, SetIndex);
                    SetobjList.Add(obj);


                }
                //任务装箱
                foreach (var item in taskInfo)
                {
                    taskIndex++;
                    var index = 0;
                    //大日程的index
                    foreach (var temp in SetobjList)
                    {
                        if (temp.Keys.Contains(item.Key.set_value))
                        {
                            index = Convert.ToInt32(temp[item.Key.set_value]);
                            break;
                        }
                    }

                   //var task_id = item.Key.task_id;
                   //var task_name = item.Key.task_name;
                   //var approve_status = item.Key.approve_status;
                   //var FormId = item.Key.FormId;
                   //var FormCode = item.Key.FormCode;
                   //var FormCollectionId = item.Key.FormCollectionId;

                    GanttInfo data = new GanttInfo();
                    data.id = taskIndex;
                    data.task_name= item.Key.task_name;
                    data.start_date = item.Key.start_date.ToString("yyyy-MM-dd");
                    data.end_date = item.Key.end_date.ToString("yyyy-MM-dd");
                    data.parent = index;
                    data.type = "task";
                    data.status = "task";
                    data.approve_status = item.Key.approve_status;
                    data.StatusInfo = GetStatusText(item.Key.approve_status);
                    data.task_id = item.Key.task_id.ToString();
                    data.FormCollectionId = item.Key.FormCollectionId==null?"": item.Key.FormCollectionId.ToString();
                    data.FormCode = item.Key.FormCode == null ? "" : item.Key.FormCode.ToString();
                    data.FormId = item.Key.FormId == null ? "" : item.Key.FormId.ToString();
                    data.project_task_id = item.Key.FormCode == null ? "" : item.Key.project_task_id.ToString();
                    info.Add(data);
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






        }



        //表單彈窗 保存並提交按鈕
        public WebResponseContent SaveAndSubmit(SaveModel saveModel, string status)
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

            if (status == "02")
            {
                //var dd = repository.DbContext.Set<Cmc_pdms_wf_master>();
            }
            else
            { 
            
            }

            return ResponseContent.OK();
        }






        //表單彈窗 暫存和保存按鈕， 暫存status="00" 草稿,保存 status="04" 待提交
        public WebResponseContent TsSave(SaveModel saveModel,string status="")
        {
            var FormData = saveModel.MainData["FormData"].ToString();
            var FormId = saveModel.MainData["FormId"].ToString();
            var FormCollectionId = saveModel.MainData["FormCollectionId"]==null?"": saveModel.MainData["FormCollectionId"].ToString();
            var project_task_id = saveModel.MainData["project_task_id"].ToString();
            var task_id = saveModel.MainData["task_id"].ToString();
            var title = saveModel.MainData["title"].ToString();
            var start_date =Convert.ToDateTime(saveModel.MainData["start_date"].ToString());
            var end_date = Convert.ToDateTime(saveModel.MainData["end_date"].ToString());
            var approve_status = saveModel.MainData["approve_status"].ToString();
            
            var Data = repository.DbContext.Set<cmc_pdms_project_task>().Where(x=>x.project_task_id==Guid.Parse( project_task_id)).FirstOrDefault();

            if (Data != null)
            {
                try
                {
                    var isnull = Data.FormCollectionId;
                    if (isnull == null)
                    {
                        var guid = Guid.NewGuid();

                        #region  新增 FormCollectionObject
                        FormCollectionObject ListTemp = new FormCollectionObject();
                        ListTemp.FormCollectionId = guid;
                        ListTemp.FormId = Guid.Parse(FormId);
                        ListTemp.FormData = FormData;
                        ListTemp.Title = title;
                        SaveModel.DetailListDataResult queueResult = new SaveModel.DetailListDataResult();
                        queueResult.optionType = SaveModel.MainOptionType.add;
                        queueResult.detailType = typeof(FormDesignOptions);
                        queueResult.DetailData.Add(JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(ListTemp)));
                        saveModel.DetailListData.Add(queueResult);

                        #endregion

                        #region   修改 cmc_pdms_project_task  FormCollectionId 欄位

                        Data.FormCollectionId = guid;
                        SaveModel.DetailListDataResult FormResult = new SaveModel.DetailListDataResult();
                        FormResult.optionType = SaveModel.MainOptionType.update;
                        FormResult.detailType = typeof(cmc_pdms_project_task);
                        FormResult.DetailData.Add(JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(Data)));
                        saveModel.DetailListData.Add(FormResult);

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
                        }
                        #endregion

                        #region  cmc_pdms_project_task  start_date /end_date /approve_status欄位
                        Data.start_date = start_date;
                        Data.end_date = end_date;
                        Data.approve_status = status;
                        SaveModel.DetailListDataResult taskResult = new SaveModel.DetailListDataResult();
                        taskResult.optionType = SaveModel.MainOptionType.update;
                        taskResult.detailType = typeof(cmc_pdms_project_task);
                        taskResult.DetailData.Add(JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(Data)));
                        saveModel.DetailListData.Add(taskResult);
                        #endregion
                    }

                    ResponseContent = base.CustomBatchProcessEntity(saveModel);
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "主工作計劃執行，表單->暫存按鈕 ，新增：FormCollectionObject 表  或  修改 cmc_pdms_project_task  FormCollectionId/FormData 欄位，view_cmc_plan_exec_ganttService 文件-->UpdateRange：" + DateTime.Now + ":" + ex.Message);
                    ResponseContent.Error(ex.Message);
                }
            }

         
   
            return ResponseContent.OK();
        }

  }
}
