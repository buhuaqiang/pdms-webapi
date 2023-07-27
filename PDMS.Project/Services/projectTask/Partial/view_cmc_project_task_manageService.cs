/*
 *所有关于view_cmc_project_task_manage类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_cmc_project_task_manageService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
*/
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using PDMS.Core.Extensions;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using PDMS.Project.IRepositories;
using PDMS.Project.IServices;
using PDMS.Core.DBManager;
using System.Text.Json;
using Newtonsoft.Json.Linq;
using Microsoft.AspNetCore.Mvc;
using SkiaSharp;

namespace PDMS.Project.Services
{
    public partial class view_cmc_project_task_manageService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_cmc_project_task_manageRepository _repository;//访问数据库
        WebResponseContent ResponseContent = new WebResponseContent();
        private readonly Icmc_pdms_project_eplService _cmc_pdms_project_eplService;
        private readonly Icmc_pdms_project_eplRepository _cmc_pdms_project_eplRepository;

        [ActivatorUtilitiesConstructor]
        public view_cmc_project_task_manageService(
            Iview_cmc_project_task_manageRepository dbRepository,
            IHttpContextAccessor httpContextAccessor,
            Icmc_pdms_project_eplService cmc_Pdms_Project_Epl,
            Icmc_pdms_project_eplRepository cmc_pdms_project_eplRepository
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }
       
        public WebResponseContent setPartTaker(SaveModel saveModel, Dictionary<string, object> mainData)
        {
            var MainData = saveModel.MainData;
            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            string[] eplidList = JsonSerializer.Deserialize<string[]>((string)mainData["epl_id"]);
            //string json = JsonSerializer.Serialize(MainData);
            var userId = MainData["User_Id"];
            if (MainData.Count != 0)
            {
                try
                {
                    foreach (var item in eplidList)
                    {
                        cmc_pdms_project_epl epl = new cmc_pdms_project_epl();
                        epl = repository.DbContext.Set<cmc_pdms_project_epl>().Where(x => x.epl_id == Guid.Parse(item.ToString())).FirstOrDefault();
                        if (epl != null)
                        {
                            epl.part_taker_id = (int?)userId;
                        }
                        eplList.Add(epl);
                    }
                }
                catch (Exception)
                {
                    return ResponseContent.Error();
                }
                try
                {
                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.UpdateRange(eplList, x => new { x.submit_status });
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
            var MainDatas = saveModel.MainDatas;
            List<cmc_pdms_project_task> projectTaskLisk = new List<cmc_pdms_project_task>();
            Console.WriteLine("");
            if (MainDatas.Count != 0)
            {
                try
                {
                    foreach (var item in MainDatas)
                    {
                        cmc_pdms_project_task pTask = new cmc_pdms_project_task();
                        pTask = repository.DbContext.Set<cmc_pdms_project_task>().Where(x => x.epl_id == Guid.Parse(item["epl_id"].ToString())).FirstOrDefault();

                        if (pTask != null)
                        {
                            if (item["start_date"] != null && item["end_date"] != null) 
                            {
                                pTask.start_date = (DateTime?)item["start_date"];
                                pTask.end_date = (DateTime?)item["end_date"];
                            }
                            /*if (item["end_date"] != null)
                            {
                                pTask.end_date = (DateTime?)item["end_date"];
                                //pTask.end_date = item["end_date"] == null ? "" : item["end_date"];
                            }*/
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
                        DBServerProvider.SqlDapper.UpdateRange(projectTaskLisk, x => new {  x.start_date,x.end_date });
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
            //1.檢查此epl是否已經有選擇過模板、任務
            int count = 0;
            string sql = $@"SELECT  epl_id , template_id , count(task_id) AS task_count FROM cmc_pdms_project_task
                            WHERE epl_id='" + epl_id + "'";
            count = Convert.ToInt32(repository.DapperContext.ExecuteScalar(sql, null));

            List<cmc_pdms_project_task> addList = new List<cmc_pdms_project_task>();
            List<cmc_pdms_project_task> existTaskList = new List<cmc_pdms_project_task>();
            List<view_template_task_mapping> frontEndTaskLisk = new List<view_template_task_mapping>();

            string sql2 = $@"SELECT  *  FROM  cmc_pdms_project_task WHERE epl_id ='" + epl_id + "' AND template_id = '" + template_id + "";
            existTaskList = repository.DapperContext.QueryList<cmc_pdms_project_task>(sql, null);


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
                            pTask.epl_id = (Guid?)epl_id;
                            pTask.template_id = (Guid?)item["template_id"];
                            pTask.task_id = (Guid?)item["task_id"];
                            pTask.action_type = "add";
                            pTask.approve_status = "00";
                            pTask.is_part_handle = item["is_part_handle"].ToString();
                            pTask.is_delete_able = item["is_delete_able"].ToString();
                            pTask.FormId = (Guid?)item["FormId"];
                            pTask.FormCode = item["FormCode"].ToString();
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

    }
}
