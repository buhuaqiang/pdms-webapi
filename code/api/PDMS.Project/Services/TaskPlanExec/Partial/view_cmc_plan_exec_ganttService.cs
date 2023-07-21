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

        public List<view_cmc_plan_exec_gantt> GetGanttInfo(SaveModel saveModel)
        {
            List<view_cmc_plan_exec_gantt> info = new List<view_cmc_plan_exec_gantt>();
            var data = saveModel.MainData;
            string status = data["status"] == null ? "" : data["status"].ToString();
            string part_no = data["part_no"] == null ? "" : data["part_no"].ToString();
            string start_date = data["start_date"] == null ? "" : data["start_date"].ToString();
            string end_date = data["end_date"] == null ? "" : data["end_date"].ToString();
            string gate_code = data["gate_code"] == null ? "" : data["gate_code"].ToString();
            string set_value = data["set_value"] == null ? "" : data["set_value"].ToString();
            string task_name = data["task_name"] == null ? "" : data["task_name"].ToString();

            string sql= @$"SELECT 
task.task_id,
task.task_name,
sl2.DicValue as set_value,
sl2.DicName as set_name,
sl3.DicValue as gate_code,
sl3.DicName as gate_name,
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
set_id in (SELECT set_id from cmc_common_task_template_set where template_id=(SELECT main_plan_id from cmc_pdms_project_epl where part_no='{part_no}'))
left join cmc_common_task_template_set sets on map.set_id=sets.set_id
left join Sys_DictionaryList sl2 ON ( sl2.DicValue= sets.set_value AND sl2.Dic_ID = ( SELECT Dic_ID FROM Sys_Dictionary WHERE DicNo = sets.set_type ))
left join cmc_common_task_template_set parent on sets.parent_set_id=parent.set_id
left join Sys_DictionaryList sl3 ON ( sl3.DicValue= parent.set_value AND sl3.Dic_ID = ( SELECT Dic_ID FROM Sys_Dictionary WHERE DicNo = parent.set_type ))
left join cmc_pdms_project_gate  gate on gate.gate_code=sl3.DicValue  and gate.project_id=(SELECT project_id from cmc_pdms_project_epl where part_no='{part_no}')
left join Sys_User  users on users.User_id=(SELECT dev_taker_id from cmc_pdms_project_epl where part_no='{part_no}')
where tsk.epl_id=(SELECT epl_id from cmc_pdms_project_epl where part_no='{part_no}')";

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
                sql += @$" and gate.gate_code='{gate_code}' ";
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

            return info;
        }




        public List<GanttInfo> BindGanttInfo(SaveModel saveModel)
        {
            List<GanttInfo> info = new List<GanttInfo>();
            //先查出數據
            List<view_cmc_plan_exec_gantt> getinfo= GetGanttInfo(saveModel);
            //再組裝數據
            if (getinfo.Count != 0)
            {
               var GateInfo = getinfo.GroupBy(x=>new {x.gate_code,x.gate_name,x.gate_start_date,x.gate_end_date }).ToList();
               var SetInfo = getinfo.GroupBy(x => new { x.set_value, x.set_name });
               var taskInfo = getinfo.GroupBy(x => new { x.task_id, x.task_name });
               foreach (var item in GateInfo)
               {
               
               }


            }
         

            return info;
        }


        public class GanttInfo {

            //主ID
            public int id { get; set; }

            //父级ID
            public int parent { get; set; }

            //名称
            public string task_name { get; set; }

            //开始时间
            public Date start_date { get; set; }

            //结束时间
            public Date end_date { get; set; }

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


        }
  }
}
