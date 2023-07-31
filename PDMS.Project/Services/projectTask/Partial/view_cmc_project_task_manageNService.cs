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
            QuerySql = @"SELECT *,ROW_NUMBER()over(order by glno  desc) as rowId  FROM view_cmc_project_task_manageN where 1=1  ";
            UserInfo userList = UserContext.Current.UserInfo;
            var User_Id = userList.User_Id;
            if (User_Id != 1)
            {
                QuerySql += @$" AND dev_taker_id='{User_Id}'";
            }
            return base.GetPageData(options);
        }
        public WebResponseContent submitReview(SaveModel saveModel)
        {
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
            string format1 = "yyyy/MM/dd HH:mm:ss";
            string format2 = "yyyy-MM-dd HH:mm:ss";
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
                            if (item["start_date"].ToString().Contains("/"))
                            {
                                DateTime dateTimeValue = DateTime.ParseExact(item["start_date"].ToString(), format1, CultureInfo.InvariantCulture);
                                string startDate = dateTimeValue.ToString("yyyy-MM-dd HH:mm:ss");
                                pTask.start_date = DateTime.ParseExact(startDate, format2, CultureInfo.InvariantCulture);
                            }
                            else
                            {
                                var sd = item["start_date"].ToString();
                                pTask.start_date = DateTime.ParseExact(sd, format2, CultureInfo.InvariantCulture);
                            }

                            if (item["end_date"].ToString().Contains("/"))
                            {
                                DateTime dateTimeValue = DateTime.ParseExact(item["end_date"].ToString(), format1, CultureInfo.InvariantCulture);
                                string endDate = dateTimeValue.ToString("yyyy-MM-dd HH:mm:ss");
                                pTask.end_date = DateTime.ParseExact(endDate, format2, CultureInfo.InvariantCulture);
                            }
                            else
                            {
                                var ed = item["end_date"].ToString();
                                pTask.end_date = DateTime.ParseExact(ed, format2, CultureInfo.InvariantCulture);
                            }
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
            Console.WriteLine("addMissionData");
            var MainDatas = saveModel.MainDatas;
            var epl_id = saveModel.Extra;
            var template_id = MainDatas[0]["template_id"];

            List<cmc_pdms_project_task> checkTemplate = new List<cmc_pdms_project_task>();
            List<cmc_pdms_project_task> addList = new List<cmc_pdms_project_task>();
            List<cmc_pdms_project_task> existTaskList = new List<cmc_pdms_project_task>();
            List<view_template_task_mapping> frontEndTaskLisk = new List<view_template_task_mapping>();

            //1.檢查此epl是否已經有選擇過模板,跟現在選的是否一樣
            string sql = $@"SELECT  epl_id , template_id  FROM cmc_pdms_project_task
                            WHERE epl_id='" + epl_id + "'";
            checkTemplate = repository.DapperContext.QueryList<cmc_pdms_project_task>(sql, null);
            bool templateExists = checkTemplate.Any(b => b.template_id.ToString() == template_id.ToString());
            //如果沒有相同模板 => 1.還沒選任務 2.選了不同模板的任務 故刪除舊有資料後面再新增
            if (!templateExists)
            {
                string deleteAction = @$"
                            DELETE FROM
	                            cmc_pdms_project_task 
                            WHERE
	                            epl_id ='{epl_id}' '";
                try
                {
                    var count = repository.DapperContext.ExcuteNonQuery(deleteAction, null);
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "子專案管理選擇模板任務  更換模板刪除舊模板 cmc_pdms_project_task 表 ，cmc_pdms_project_task 文件：addMissionData：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }
            }

            //把已選擇之任務挑出來
            string sql2 = $@"SELECT  *  FROM  cmc_pdms_project_task WHERE epl_id ='" + epl_id + "' AND template_id = '" + template_id + "";
            existTaskList = repository.DapperContext.QueryList<cmc_pdms_project_task>(sql2, null);

            if (MainDatas.Count != 0)
            {
                try
                {
                    foreach (var item in MainDatas)
                    {
                        //判斷此任務是否已經被選擇了
                        bool taskExists = existTaskList.Any(itemExist => itemExist.task_id.ToString() == item["task_id"].ToString());
                        if (taskExists)
                        {
                            cmc_pdms_project_task pTask = new cmc_pdms_project_task();
                            if (item["start_date"] != null && item["end_date"] != null)
                            {
                                pTask.start_date = (DateTime?)item["start_date"];
                                pTask.end_date = (DateTime?)item["end_date"];
                            }
                            pTask.epl_id = epl_id == null ? Guid.Parse("") : Guid.Parse(epl_id.ToString());
                            pTask.template_id = item["template_id"] == null ? Guid.Parse("") : Guid.Parse(item["template_id"].ToString());
                            pTask.task_id = item["task_id"] == null ? Guid.Parse("") : Guid.Parse(item["task_id"].ToString());
                            pTask.action_type = "add";
                            pTask.approve_status = "00";
                            pTask.is_part_handle = item["is_part_handle"] == null ? "" : item["is_part_handle"].ToString();
                            pTask.is_delete_able = item["is_delete_able"] == null ? "" : item["is_delete_able"].ToString();
                            pTask.FormId = item["FormId"] == null ? Guid.Parse("") : Guid.Parse(item["FormId"].ToString());
                            pTask.FormCode = item["FormCode"] == null ? "" : item["FormCode"].ToString();
                            addList.Add(pTask);
                        }
                    }
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量新增前装箱  cmc_pdms_project_task 表，view_cmc_pdms_project_task_manageService 文件：addList：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }
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
            return ResponseContent.OK();
        }

        public WebResponseContent deleteMissionData(SaveModel saveModel)
        {
            Console.WriteLine("deleteMissionData");
            var MainData = saveModel.MainData;
            string task_id = MainData["task_id"] == null ? "" : MainData["task_id"].ToString();
            string project_task_id = MainData["project_task_id"] == null ? "" : MainData["project_task_id"].ToString();

            string deleteAction = @$"
                DELETE FROM
	                cmc_pdms_project_task 
                WHERE
	                project_task_id ='{project_task_id}' AND task_id IN( '{task_id}')";
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
