/*
 *所有关于cmc_pdms_wf_master类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*cmc_pdms_wf_masterService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using PDMS.WorkFlow.IRepositories;
using PDMS.Core.ManageUser;
using Newtonsoft.Json;
using System.Collections.Generic;
using PDMS.Core.DBManager;
using System.Net;

namespace PDMS.WorkFlow.Services
{
    public partial class cmc_pdms_wf_masterService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Icmc_pdms_wf_masterRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public cmc_pdms_wf_masterService(
            Icmc_pdms_wf_masterRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }
        private static readonly Object custApply = new object();
        WebResponseContent ResponseContent = new WebResponseContent();
        public WebResponseContent MasterUpdate(SaveModel saveModel, string status, string apply_type,Sys_User apprverUser,bool UpdateFlag=true )
        {
            lock (custApply)
            {
                #region  更新cmc_pdms_wf_master/InsertApproveLog/Email队列數據
                if (apprverUser == null)
                {
                    apprverUser = GetApproveManager(apply_type);//根據當前登錄人的user_code尋找上級
                }
                var wf_master_ids = Guid.NewGuid();
                if (!saveModel.MainData.ContainsKey("wf_master_id"))
                {
                    saveModel.MainData.Add("wf_master_id", "");
                }
                if (!saveModel.MainData.ContainsKey("remark"))
                {
                    saveModel.MainData.Add("remark", "");
                }
                string Smaster_id = saveModel.MainData["wf_master_id"].ToString();
                string remark = saveModel.MainData["remark"].ToString();//審核意見
                Sys_User userEntity = SysUserData();
                if (string.IsNullOrEmpty(Smaster_id))
                {
                    saveModel.MainData["apply_type"] = apply_type;
                    saveModel.MainData["wf_master_id"] = wf_master_ids;
                    saveModel.MainData["approve_status"] = status;
                    saveModel.MainData["org_code"] = GetOrgCode();
                    saveModel.MainData["master_no"] = GetMaster_no(apply_type);
                    if (!status.Equals("00"))
                    {
                        if (!saveModel.MainData.ContainsKey("project_id"))
                        {
                            saveModel.MainData.Add("project_id", null);
                        }
                        if (!saveModel.MainData.ContainsKey("epl_id"))
                        {
                            saveModel.MainData.Add("epl_id", null);
                        }
                        //saveModel.MainData["approved_date"] = DateTime.Now;
                        //saveModel.MainData["approval_username"] = apprverUser.UserTrueName;
                        saveModel.MainData["approve_user_id"] = apprverUser.User_Id;
                        cmc_pdms_wf_master masterEntiy = JsonConvert.DeserializeObject<cmc_pdms_wf_master>(JsonConvert.SerializeObject(saveModel.MainData));
                        InsertApproveLog(saveModel, wf_master_ids.ToString(), status : status, userEntity, "", 0);
                        //FlowEmail(saveModel, apprverUser.UserName, "", masterEntiy);
                    }
                    //增加master数据
                    SaveModel.DetailListDataResult masterResult = new SaveModel.DetailListDataResult();
                    masterResult.DetailData.Add(saveModel.MainData);
                    masterResult.optionType = SaveModel.MainOptionType.add;
                    masterResult.detailType = typeof(cmc_pdms_wf_master);
                    saveModel.DetailListData.Add(masterResult);
                }
                else
                {
                    ////根據主鍵取得master數據,只更新狀態
                    Smaster_id = saveModel.MainData["wf_master_id"].ToString();
                    remark = saveModel.MainData["remark"].ToString();//審核意見
                    cmc_pdms_wf_master master = getMasterByDBID(Smaster_id);
                    master.approve_status = status=="03"?"02": status;
                    if (!status.Equals("00"))
                    {
                        master.approved_date = DateTime.Now;
                        master.approve_user_id = apprverUser.User_Id;
                        master.org_code = GetOrgCode();
                        InsertApproveLog(saveModel, Smaster_id.ToString(), status, userEntity, remark, 0);
                        //FlowEmail(saveModel, apprverUser.UserName, "", master);
                    }
                    //修改master数据
                    SaveModel.DetailListDataResult masterResult = new SaveModel.DetailListDataResult();
                    masterResult.DetailData.Add(JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(master)));
                    masterResult.optionType = SaveModel.MainOptionType.update;
                    masterResult.detailType = typeof(cmc_pdms_wf_master);
                    saveModel.DetailListData.Add(masterResult);
                }
                #endregion
                //若只更改Maseter表和 Approvelog表 則不需要對業務表做新增操作
                if (UpdateFlag)
                {
                    switch (apply_type)
                    {
                        case "01"://部門變更
                                  //此處實現具體方法
                            Insert_epl_org(saveModel, wf_master_ids);
                            break;
                        case "02"://成本編列
                                  //此處實現具體方法
                            Insert_cost(saveModel, wf_master_ids);
                            break;
                        case "03"://主工作計劃管理
                            Insert_epl_task_define(saveModel, wf_master_ids);
                            break;
                        case "04"://任務
                            Insert_task_form(saveModel, wf_master_ids);
                            break;
                        default:
                            break;
                    }
                }
          
            }
            ResponseContent= base.CustomBatchProcessEntity(saveModel);
            if (saveModel.DetailListData!=null && saveModel.DetailListData.Count() > 0)
            {
                saveModel.DetailListData = new List<SaveModel.DetailListDataResult>();
            }
            return ResponseContent;

        }


        //寫入數據到EPL成本編列審核表中
        public void Insert_cost(SaveModel saveModel, Guid wf_master_ids)
        {
            var TempList = saveModel.MainDatas;
            if (TempList.Count > 0)
            {
                try
                {
                    List<cmc_pdms_wf_epl_fs> eplFsList = new List<cmc_pdms_wf_epl_fs>();
                    foreach (var item in TempList)
                    {
                        cmc_pdms_wf_epl_fs eplFs = new cmc_pdms_wf_epl_fs();

                        eplFs.wf_epl_fs_id = Guid.NewGuid();
                        eplFs.wf_master_id = wf_master_ids;
                        eplFs.epl_id = Guid.Parse(item["epl_id"].ToString());
                        eplFs.approve_status = "1";//默认给1 通过
                        eplFs.fs_1 = Convert.ToInt32(item["fs_1"]);
                        eplFs.fs_2 = Convert.ToInt32(item["fs_2"]);
                        eplFs.fs_3 = Convert.ToInt32(item["fs_3"]);
                        eplFs.currency = item["currency"] == null ? "" : item["currency"].ToString();
                        eplFs.exchange_rate = Convert.ToInt32(item["exchange_rate"]);
                        eplFs.fs_1_ntd = Convert.ToInt32(item["fs_1_ntd"]);
                        eplFs.fs_2_ntd = Convert.ToInt32(item["fs_2_ntd"]);
                        eplFs.fs_1_rate = Convert.ToInt32(item["fs_1_rate"]);
                        eplFs.fs_2_rate = Convert.ToInt32(item["fs_2_rate"]);
                        eplFs.fs_remark = item["fs_remark"] == null ? "" : item["fs_remark"].ToString();

                        eplFsList.Add(eplFs);
                    }
                    if (eplFsList.Count != 0)
                    {//寫入數據到數據庫
                        repository.DapperContext.BeginTransaction((r) =>
                        {
                            DBServerProvider.SqlDapper.BulkInsert(eplFsList, "cmc_pdms_wf_epl_fs");
                            return true;
                        }, (ex) => { throw new Exception(ex.Message); });
                    }
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量寫入執行 cmc_pdms_wf_epl_fs 表，cmc_pdms_wf_masterService 文件-->Insert_epl_org-->BulkInsert：" + DateTime.Now + ":" + ex.Message);
                }

            }

        }


        //寫入數據到EPL部門變更審核表中
        public void Insert_epl_org(SaveModel saveModel, Guid wf_master_ids)
        {
            var TempList = saveModel.MainDatas;
            if (TempList.Count > 0) {
                try
                {
                    List<cmc_pdms_wf_epl_org> eplOrgs = new List<cmc_pdms_wf_epl_org>();
                    foreach (var item in TempList)
                    {
                        cmc_pdms_wf_epl_org eplOrg = new cmc_pdms_wf_epl_org();
                        eplOrg.wf_epl_org_id = Guid.NewGuid();
                        eplOrg.wf_master_id = wf_master_ids;
                        eplOrg.approve_status = "1";//默认给1 通过
                        eplOrg.epl_id = Guid.Parse(item["epl_id"].ToString());
                        eplOrg.original_org_code = item["org_code"].ToString();
                        eplOrg.current_org_code = item["new_org_code"].ToString();
                        eplOrgs.Add(eplOrg);
                    }
                    if (eplOrgs.Count != 0)
                    {
                        repository.DapperContext.BeginTransaction((r) =>
                        {
                            DBServerProvider.SqlDapper.BulkInsert(eplOrgs, "cmc_pdms_wf_epl_org");
                            return true;
                        }, (ex) => { throw new Exception(ex.Message); });
                    }
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量寫入執行 cmc_pdms_wf_epl_org 表，cmc_pdms_wf_masterService 文件-->Insert_epl_org-->BulkInsert：" + DateTime.Now + ":" + ex.Message);
                }

            }

        }


        //寫入數據到子專案工作計畫審核表中 cmc_pdms_wf_epl_task_define
        public void Insert_epl_task_define(SaveModel saveModel, Guid wf_master_ids)
        {
            var MainData = saveModel.MainData;
            var epl_id = MainData["epl_id"].ToString();
            try
             {
                var task = repository.DbContext.Set<cmc_pdms_project_task>()
                                                                        .Where(x => x.epl_id == Guid.Parse(epl_id))
                                                                        .OrderByDescending(x => x.CreateDate) // 以 CreateDate 遞減排序
                                                                        .FirstOrDefault(); // 取第一筆，即最新的記錄

                var taskList = repository.DbContext.Set<cmc_pdms_project_task>()
                                                .Where(x => x.epl_id == Guid.Parse(epl_id) && x.template_id == task.template_id)
                                                .Select(x => new Dictionary<string, object>
                                                {
                                                    { "epl_id", x.epl_id },
                                                    { "project_task_id", x.project_task_id },
                                                    { "action_type", x.action_type },
                                                    { "approve_status", x.approve_status },
                                                    { "done_status", x.done_status },
                                                    { "check_flag", x.check_flag },
                                                    { "template_id", x.template_id },
                                                    { "task_id", x.task_id },
                                                    { "FormCode", x.FormCode },
                                                    { "FormId", x.FormId },
                                                    { "FormCollectionId", x.FormCollectionId },
                                                    { "start_date", x.start_date },
                                                    { "end_date", x.end_date },
                                                    { "order_no", x.order_no },
                                                    { "pre_task_id", x.pre_task_id },
                                                    { "rule_id", x.rule_id },
                                                    { "is_eo", x.is_eo },
                                                    { "is_part_handle", x.is_part_handle },
                                                    { "is_delete_able", x.is_delete_able },
                                                    { "is_audit_key", x.is_audit_key },
                                                    { "warn", x.warn },
                                                    { "warn_leader", x.warn_leader },
                                                }).ToList();
                List<cmc_pdms_wf_epl_task_define> taskDefine = new List<cmc_pdms_wf_epl_task_define>();
                 foreach (var item in taskList)
                 {
                    cmc_pdms_wf_epl_task_define define = new cmc_pdms_wf_epl_task_define();
                    define.wf_epl_task_define_id = Guid.NewGuid();
                    define.wf_master_id = wf_master_ids;
                    define.epl_id = Guid.Parse(item["epl_id"].ToString());
                    //這邊要判斷
                    var latestTask = repository.DbContext.Set<cmc_pdms_wf_epl_task_define>()
                                                .Where(x => x.project_task_id == Guid.Parse(item["project_task_id"].ToString()))
                                                .OrderByDescending(x => x.CreateDate) // 根據 CreateDate 降冪排序
                                                .FirstOrDefault(); // 取得第一筆，即最新的一筆資料
                    if (latestTask != null)
                    {
                        switch (latestTask.action_type)
                        {
                            case "add":
                                define.action_type = "modify";
                                break;
                            case "modify":
                                define.action_type = "modify";
                                break;
                            case "delete":
                                var hisRecord = repository.DbContext.Set<cmc_pdms_project_task_hist>()
                                                .Where(x => x.project_task_id == Guid.Parse(item["project_task_id"].ToString()))
                                                .OrderByDescending(x => x.CreateDate) // 根據 CreateDate 降冪排序
                                                .FirstOrDefault(); // 取得第一筆，即最新的一筆資料
                                if (hisRecord != null)
                                {
                                    define.action_type = "delete";
                                }
                                else 
                                {
                                    define.action_type = "skip";
                                }
                                break;
                            default:
                                define.action_type = "";
                                break;
                        }
                    }
                    else
                    {
                        define.action_type = "add";
                    }
                    if (define.action_type == "skip")
                    {
                        continue;
                    }
                    define.approve_status = "02"; // 00草稿 01待審批 02通過 03拒絕 04待提交
                    define.done_status = item["done_status"]?.ToString();
                    define.check_flag = item["check_flag"]?.ToString();
                    define.template_id = item["template_id"] == null ? null : Guid.Parse(item["template_id"].ToString());
                    define.project_task_id =  Guid.Parse(item["project_task_id"].ToString());
                    define.task_id = item["task_id"] == null ? null : Guid.Parse(item["task_id"].ToString());
                    define.FormCode = item["FormCode"]?.ToString();
                    define.FormId = item["FormId"] == null ? null : Guid.Parse(item["FormId"].ToString());
                    define.FormCollectionId = item["FormCollectionId"] == null ? null : Guid.Parse(item["FormCollectionId"].ToString());
                    define.start_date = Convert.ToDateTime(item["start_date"]?.ToString());
                    define.end_date = Convert.ToDateTime(item["end_date"]?.ToString());
                    define.order_no = (int?)item["order_no"];
                    define.pre_task_id = item["pre_task_id"] == null ? null : Guid.Parse(item["pre_task_id"].ToString());
                    define.rule_id = item["rule_id"] == null ? null : Guid.Parse(item["rule_id"].ToString());
                    define.is_eo = item["is_eo"]?.ToString();
                    define.is_part_handle = item["is_part_handle"]?.ToString();
                    define.is_delete_able = item["is_delete_able"]?.ToString();
                    define.is_audit_key = item["is_audit_key"]?.ToString();
                    define.warn = (int?)item["warn"];
                    define.warn_leader = (int?)item["warn_leader"];
                    taskDefine.Add(define);
                 }
                 if (taskDefine.Count != 0)
                 {
                     repository.DapperContext.BeginTransaction((r) =>
                     {
                         DBServerProvider.SqlDapper.BulkInsert(taskDefine, "cmc_pdms_wf_epl_task_define");
                         return true;
                     }, (ex) => { throw new Exception(ex.Message); });
                 }
             }
             catch (Exception ex)
             {
                 Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量寫入執行 cmc_pdms_wf_epl_task_define 表，cmc_pdms_wf_masterService 文件-->Insert_task_define-->BulkInsert：" + DateTime.Now + ":" + ex.Message);
             }
        }

        //新增一筆 cmc_pdms_wf_epl_task_form子專案工作計劃-任務審核
        public void Insert_task_form(SaveModel saveModel, Guid wf_master_ids)
        {
            //MainDatas 批量提交
            var TempList = saveModel.MainDatas;
            if (TempList.Count == 0)
            {
                //表單-->單筆提交
                TempList[0] = saveModel.MainData;
            }
            try
            {
                List<cmc_pdms_wf_epl_task_form> taskForm = new List<cmc_pdms_wf_epl_task_form>();
                foreach (var item in TempList)
                {
                    cmc_pdms_wf_epl_task_form form = new cmc_pdms_wf_epl_task_form();
                    form.wf_epl_task_form_id = Guid.NewGuid();
                    form.wf_master_id = wf_master_ids;
                    form.FormId = Guid.Parse(item["FormId"].ToString());
                    form.FormCollectionId = Guid.Parse(item["FormCollectionId"].ToString());
                    form.project_task_id = Guid.Parse(item["project_task_id"].ToString());
                    form.task_id = Guid.Parse(item["task_id"].ToString());
                    form.FormCode = item["FormCode"].ToString();
                    form.approve_status = "1";//默认给1 通过
                    form.start_date = Convert.ToDateTime(item["start_date"].ToString());
                    form.end_date = Convert.ToDateTime(item["end_date"].ToString());
                    taskForm.Add(form);
                }
                if (taskForm.Count != 0)
                {
                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.BulkInsert(taskForm, "cmc_pdms_wf_epl_task_form");
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }
            }
            catch (Exception ex)
            {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量寫入執行 cmc_pdms_wf_epl_task_form 表，cmc_pdms_wf_masterService 文件-->Insert_task_form-->BulkInsert：" + DateTime.Now + ":" + ex.Message);
            }
        }


        public Sys_User SysUserData(string User_Code = "")
        {
            List<Sys_User> userList = new List<Sys_User>();
            if (!string.IsNullOrEmpty(User_Code))
            {
                userList = repository.DbContext.Set<Sys_User>().Where(x => x.user_code.Equals(User_Code)).ToList();
            }
            else
            {
                UserInfo userInfo = UserContext.Current.UserInfo;
                userList = repository.DbContext.Set<Sys_User>().Where(x => x.User_Id.Equals(userInfo.User_Id)).ToList();
            }
            return userList[0];
        }


        //获取零品承办
        public string GetPartTaker(Guid? epl_id)
        {
            string str = "";
            string sql = $@"Select part_taker_id  from  cmc_pdms_project_epl  where  epl_id='{epl_id}'";
            var approve_user_id = repository.DapperContext.ExecuteScalar(sql, null);
            if (approve_user_id == null)
                str = "";
            else
                str = approve_user_id.ToString();
            return str;
        }


        //获取下一个审批人
        public Sys_User GetApproveManager(string apply_type)
        {
            Sys_User user_Info = new Sys_User();
            UserInfo info = UserContext.Current.UserInfo;
            string user_code = "";
            switch (apply_type)
            {
                case "01":
                    //獲取當前登錄人的user_code
                    user_code = info.user_code;
                    //再根据user_code取CMC人事系统抓取 下一个审批人
                    break;
                case "02":
                    //獲取當前登錄人的user_code
                    user_code = info.user_code;
                    //再根据user_code取CMC人事系统抓取 下一个审批人
                    break;
                case "03":
                    //獲取當前登錄人的user_code
                    user_code = info.user_code;
                    //再根据user_code取CMC人事系统抓取 下一个审批人
                    break;
                case "04":
                    //任務表單審核只有一級，所以只需獲取當前登錄人的信息
                    user_code = "";
                    break;
                default:
                    break;
            }
            //再根據主管的user_code 獲取PDMS系統的user_id
            user_Info = SysUserData(user_code);
            return user_Info;
        }

        //获取發起崗所屬機構
        public string GetOrgCode()
        {
            UserInfo userList = UserContext.Current.UserInfo;
            var User_Id = userList.User_Id;
            string org_code = "";
            string sql = $@"select  pm.DepartmentCode  from  Sys_UserDepartment up left join Sys_Department pm on up.DepartmentId=pm.DepartmentId   where up.userId='{User_Id}'";
            var str = repository.DapperContext.ExecuteScalar(sql, null);
            if (str != null)
                org_code = str.ToString();
            else
                org_code = "";
            return org_code;
        }


        #region  關於審核日誌


        //获取审批日志
        public int ApproveLogData(string wf_master_id)
        {

            //Guid mast = new Guid(wf_master_id);
            //var approve = repository.DbContext.Set<cmc_pdms_wf_approve_log>().Where(x => x.bidmast_dbid == mast).ToList();
            //return approve.Count() > 0 ? 1 : 0;
            return 0;
        }

        //写入审批日志
        public void InsertApproveLog(SaveModel saveModel, string wf_master_id, string status, Sys_User userEntity, string Conmment, int type)
        {
            SaveModel.DetailListDataResult logResult = new SaveModel.DetailListDataResult();
            cmc_pdms_wf_approve_log approveEntiy = new cmc_pdms_wf_approve_log()
            {
                wf_log_id = Guid.NewGuid(),
                wf_master_id = new Guid(wf_master_id),
                approve_user_id = userEntity.User_Id,
                status = status,
                remark = Conmment,  //审批意见从前台传递过来
            };
            if (status.Equals("01"))
            {
                approveEntiy.status = "03";//已提交
            }
            else if(status.Equals("02"))
            {
                approveEntiy.status = "01";//同意       
            }
            else if (status.Equals("03"))
            {
                approveEntiy.status = "02";//拒絕       
            }
            else
                approveEntiy.status = status;
            //if (type > 0)
            //{
            //    approveEntiy.grade = type;
            //}
            logResult.optionType = SaveModel.MainOptionType.add;
            logResult.detailType = typeof(cmc_pdms_wf_approve_log);
            logResult.DetailData.Add(JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(approveEntiy)));
            saveModel.DetailListData.Add(logResult);
        }

        #endregion

        #region 流程到下一崗,或者部門需要發送郵件通知

        /// <summary>
        /// 
        /// </summary>
        /// <param name="saveModel"></param>
        /// <param name="UserName">審批人</param>
        /// <param name="Approver">審批部門</param>
        public void FlowEmail(SaveModel saveModel, string UserName, string Approver, cmc_pdms_wf_master masterEntiy)
        {
            SaveModel.DetailListDataResult queueResult = new SaveModel.DetailListDataResult();
            if (!string.IsNullOrEmpty(Approver))
            {
                //List<Sys_User> userList = repository.DbContext.Set<Sys_User>().Where(x => x.profession_type == Approver).ToList();
                //if (userList.Count > 0)
                //{
                //    UserName = String.Join(";", userList.GroupBy(x => x.UserName).Select(x => x.First().UserName).ToArray());
                //}
            }
            UserInfo userInfo = UserContext.Current.UserInfo;
            //string custGroupName = "";
            //if (!string.IsNullOrEmpty(masterEntiy.cust_dbid.ToString()))
            //{
            //    Viat_com_cust cust = repository.DbContext.Set<Viat_com_cust>().Where(x => x.cust_dbid == masterEntiy.cust_dbid).First();
            //    custGroupName = cust.cust_name;
            //}
            //Viat_com_notify_template templateEntity = repository.DbContext.Set<Viat_com_notify_template>().Where(x => x.notify_id == "N006").First();
            //Viat_com_notify_queue queueEntity = new Viat_com_notify_queue()
            //{
            //    notifyqueue_dbid = Guid.NewGuid(),
            //    created_date = DateTime.Now,
            //    subject = String.Format(templateEntity.subject, ApplyType(masterEntiy.apply_type), masterEntiy.created_date == null ? DateTime.Now.ToString("yyyy-MM-dd") : ((DateTime)masterEntiy.created_date).ToString("yyyy-MM-dd"), masterEntiy.territory_id + " " + (string.IsNullOrEmpty(masterEntiy.created_username) ? userInfo.UserTrueName : masterEntiy.created_username), custGroupName),
            //    recipient = UserName,
            //    content = String.Format(templateEntity.content, masterEntiy.territory_id + " " + (string.IsNullOrEmpty(masterEntiy.created_username) ? userInfo.UserTrueName : masterEntiy.created_username), custGroupName, ApplyType(masterEntiy.apply_type), masterEntiy.bid_no),
            //    send_state = 0
            //};
            //queueResult.optionType = SaveModel.MainOptionType.add;
            //queueResult.detailType = typeof(Viat_com_notify_queue);
            //queueResult.DetailData.Add(JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(queueEntity)));
            //saveModel.DetailListData.Add(queueResult);
        }

        /// <summary>
        /// 審批結束郵件通知
        /// </summary>
        /// <param name="saveModel"></param>
        /// <param name="masterEntiy"></param>
        /// <param name="ApprovalProcess">審批狀態</param>
        /// <param name="approvalConmment">審批意見</param>
        public void ApprovedMail(SaveModel saveModel, cmc_pdms_wf_master masterEntiy, string ApprovalProcess, string approvalConmment)
        {
            //List<Sys_User> CreateUser = repository.DbContext.Set<Sys_User>().Where(x => x.User_Id == masterEntiy.CreateID).ToList();
            //UserInfo userInfo = UserContext.Current.UserInfo;
            //SaveModel.DetailListDataResult queueResult = new SaveModel.DetailListDataResult();
            //Viat_com_notify_template templateEntity = new Viat_com_notify_template();
            //if (ApprovalProcess.Equal("03"))
            //{
            //    templateEntity = repository.DbContext.Set<Viat_com_notify_template>().Where(x => x.notify_id == "N007").First();
            //}
            //else
            //{
            //    templateEntity = repository.DbContext.Set<Viat_com_notify_template>().Where(x => x.notify_id == "N008").First();
            //}
            //string custGroupName = "";

            //approvalConmment = string.IsNullOrEmpty(approvalConmment) ? "無" : approvalConmment;
            //Viat_com_notify_queue queueEntity = new Viat_com_notify_queue()
            //{
            //    notifyqueue_dbid = Guid.NewGuid(),
            //    created_date = DateTime.Now,
            //    subject = String.Format(templateEntity.subject, ApplyType(masterEntiy.apply_type), masterEntiy.CreateDate == null ? DateTime.Now.ToString("yyyy-MM-dd") : ((DateTime)masterEntiy.CreateDate).ToString("yyyy-MM-dd"), masterEntiy.territory_id + " " + (CreateUser.Count() == 0 ? userInfo.UserTrueName : CreateUser[0].UserTrueName), custGroupName, ApprovalProcess.Equals("04") ? "Rejected" : "Agreed"),
            //    recipient = CreateUser.Count() == 0 ? userInfo.UserName : CreateUser[0].UserName,
            //    content = string.Format(templateEntity.content, masterEntiy.territory_id + " " + (CreateUser.Count() == 0 ? userInfo.UserTrueName : CreateUser[0].UserTrueName), masterEntiy.CreateDate == null ? DateTime.Now.ToString("yyyy-MM-dd") : ((DateTime)masterEntiy.CreateDate).ToString("yyyy-MM-dd"), custGroupName, ApplyType(masterEntiy.apply_type), masterEntiy.bid_no, ApprovalProcess.Equals("04") ? "Rejected" : "Agreed", approvalConmment),
            //    send_state = 0
            //};
            //queueResult.optionType = SaveModel.MainOptionType.add;
            //queueResult.detailType = typeof(Viat_com_notify_queue);
            //queueResult.DetailData.Add(JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(queueEntity)));
            //saveModel.DetailListData.Add(queueResult);
        }
        private string ApplyType(string applyId)
        {
            List<Sys_DictionaryList> dicList = repository.DbContext.Set<Sys_DictionaryList>().Where(x => x.Dic_ID == 129).ToList();
            if (dicList.Count > 0)
            {
                return dicList.Where(x => x.DicValue == applyId).First().DicName;
            }
            else
            {
                return "";
            }
        }
        #endregion

        /// <summary>
        /// 获取 master 审核信息
        /// </summary>
        /// <param name="wf_master_id"></param>
        /// <returns></returns>
        public cmc_pdms_wf_master getMasterByDBID(string wf_master_id)
        {
            string sSql = "select * from cmc_pdms_wf_master where wf_master_id='" + wf_master_id + "'";
            return _repository.DapperContext.QueryFirst<cmc_pdms_wf_master>(sSql, null);
        }


        //根据申请类型 获取最大Master_no
        public string GetMaster_no(string Apply_type)
        {

            string strType = "";
            switch (Apply_type)
            {
                case"01":
                    strType = "D";
                    break;
                case "02":
                    strType = "F";
                    break;
                case "03":
                    strType = "P";
                    break;
                case "04":
                    strType = "T";
                    break;
                default:
                    break;
            }

            string bid_no = "";
            string Time = DateTime.Now.ToString("yyyyMMdd");
            string newNum = "";
            try
            {
                //string sql = $@"select  MAX(bid_no) bid_no from  viat_wk_master  WHERE  bid_no like 'R%'   ";
                var List = repository.DbContext.Set<cmc_pdms_wf_master>().Where(x => x.master_no.Contains(strType)).OrderByDescending(x => x.master_no).FirstOrDefault();

                //var List = repository.DapperContext.QueryList<Viat_wk_master>(sql, null);
                if (List != null)
                {
                    bid_no = List.master_no;
                    string num = bid_no.Substring(1, 8);//20220915
                    if (Time == num)
                    {
                        string EndNum = bid_no.Substring(bid_no.Length - 5, 5);//00009
                        int temp = Convert.ToInt32(EndNum) + 1;

                        string tempNum = temp.ToString().Length == 1 ? "0000" + temp.ToString() : temp.ToString().Length == 2 ? "000" + temp.ToString() : "00" + temp.ToString();
                        newNum = strType + num + "-" + tempNum;
                    }
                    else
                    {
                        newNum = strType + Time + "-00001";
                    }
                }
                else
                {
                    newNum = strType + Time + "-00001";
                }
                return newNum;
            }
            catch (Exception)
            {

                newNum = "";
            }

            return newNum;
        }


        //public WebResponseContent ApprovalProcess(object saveModelData)
        //{
        //    try
        //    {
        //        ResponseContent = new WebResponseContent();
        //        List<Dictionary<string, object>> lst = JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(saveModelData.ToString());
        //        if (lst == null || lst.Count == 0)
        //        {
        //            return ResponseContent.Error("no data");
        //        }
        //        UserInfo userInfo = PDMS.Core.ManageUser.UserContext.Current.UserInfo;
        //        SaveModel saveModel = new SaveModel();
        //        saveModel.MainData = lst[0];
        //        string bidmast_dbid = saveModel.MainData["bidmast_dbid"].ToString();
        //        cmc_pdms_wf_master masterEntiy = getMasterByDBID(bidmast_dbid);
        //        //第一步查询人员职位
        //        Sys_User user = SysUserData();
        //        //审批意见和审批状态
        //        string approvalConmment = saveModel.MainData["approveComments"].ToString(), ApprovalProcess = saveModel.MainData["approveStatus"].ToString();
        //        //审批部门
        //        string approver = "";
        //        //下一个审批人
        //        Sys_User approvaUser = null;
        //        if (!ApprovalProcess.Equals("04"))
        //        {
        //            ApprovalProcess = "01";
        //            switch ("")
        //            {
        //                //case "FF":
        //                //case "SA":
        //                //    break;
        //                case "DSM":
        //                case "ASD":
        //                case "INVSA":
        //                    switch (masterEntiy.apply_type)
        //                    {
        //                        //costomer apply提交
        //                        case "01":
        //                        case "02":
        //                            ApprovalProcess = "03";
        //                            break;
        //                        //bid/order apply提交
        //                        case "03":
        //                            break;
        //                        //Inventory Allowance Apply 提交
        //                        case "05":                   
        //                            break;
        //                        //return Order
        //                        case "06":
        //                            // 获取上级ID
        //                            //approvaUser = GetLevelDetailEmpData((Guid)user.emp_dbid, userInfo.TerritoryId);
        //                            break;
        //                        case "07":
        //                            ApprovalProcess = "03";
        //                            break;
        //                    }
        //                    break;

        //                case "BU":
        //                    if (masterEntiy.apply_type.Equal("06"))
        //                    {
        //                        ApprovalProcess = "03";
        //                    }
        //                    break;
        //                case "Finance":
        //                    approver = "PD";
        //                    break;

        //                case "PD":
        //                    //直接结束，终审
        //                    ApprovalProcess = "03";
        //                    break;
        //            }
        //        }
        //        if ((ApprovalProcess.Equals("03") || ApprovalProcess.Equals("04")) && masterEntiy.apply_type.Equals("03"))
        //        {
        //            //if (masterEntiy.star == null)
        //            //{
        //            //    masterEntiy.start_date = DateTime.Today;
        //            //}
        //            //if (masterEntiy.end_date == null)
        //            //{
        //            //    masterEntiy.end_date = Convert.ToDateTime("2099-12-31");
        //            //}
        //            //if (ApprovalProcess.Equals("03") && masterEntiy.apply_type.Equals("03"))
        //            //{
        //            //    masterEntiy.pending_reason = PendingReasonData(masterEntiy);
        //            //}
        //        }
        //        masterEntiy.ModifyID = userInfo.User_Id;
        //        masterEntiy.Modifier = userInfo.UserTrueName;
        //        //MasterUpdate(saveModel, masterEntiy, approvaUser, status: ApprovalProcess, position: approver);
        //        int type = 0;
        //        if (masterEntiy.apply_type.Equals("03") && ApprovalProcess.Equals("03"))
        //        {
                   
        //        }
        //        if (ApprovalProcess.Equals("04") || ApprovalProcess.Equals("03"))
        //        {

        //                ApprovedMail(saveModel, masterEntiy, ApprovalProcess, approvalConmment);

        //        }
        //        else
        //        {
        //            //發送郵件
        //            FlowEmail(saveModel, approvaUser == null ? "" : approvaUser.UserName, approver, masterEntiy);
        //        }

        //        InsertApproveLog(saveModel, masterEntiy.wf_master_id.ToString(), status: ApprovalProcess, userEntity: user, Conmment: approvalConmment, type);
        //        base.CustomBatchProcessEntity(saveModel);
        //        string message = "";
        //        if (ApprovalProcess == "03" || ApprovalProcess == "04")
        //        {
        //            message = "End of the examination and approval!";
        //        }
        //        else
        //        {
        //            if (string.IsNullOrEmpty(approver))
        //            {
        //                message = "The next approver :" + approvaUser.UserName;
        //            }
        //            else
        //            {
        //                message = "The next department :" + approver;
        //            }
        //        }
        //        return ResponseContent.OK(message);
        //    }
        //    catch (Exception ex)
        //    {
        //        Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "审批错误信息:" + ex.Message);
        //        ResponseContent.Code = "-1";
        //        ResponseContent.Status = false;
        //        ResponseContent.Error(ex.Message);
        //        return ResponseContent;
        //    }
        //}
    }
}
