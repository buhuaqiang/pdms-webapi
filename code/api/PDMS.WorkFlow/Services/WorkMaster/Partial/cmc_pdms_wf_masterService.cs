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
        public WebResponseContent MasterUpdate(SaveModel saveModel, string status, string apply_type,Sys_User apprverUser)
        {
            lock (custApply)
            {
                #region  更新cmc_pdms_wf_master 數據
                if (apprverUser == null)
                {
                    apprverUser = GetApproveManager();//根據當前登錄人的user_code尋找上級
                }
                var wf_master_ids = Guid.NewGuid();
                if (!saveModel.MainData.ContainsKey("wf_master_id"))
                {
                    saveModel.MainData.Add("wf_master_id", "");
                }
                string Smaster_id = saveModel.MainData["wf_master_id"].ToString();
                Sys_User userEntity = SysUserData();
                if (string.IsNullOrEmpty(Smaster_id))
                {
                    saveModel.MainData["apply_type"] = apply_type;
                    saveModel.MainData["wf_master_id"] = wf_master_ids;
                    saveModel.MainData["status"] = status;
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
                        saveModel.MainData["approved_date"] = DateTime.Now;
                        saveModel.MainData["approval_username"] = apprverUser.UserTrueName;
                        saveModel.MainData["approval_user"] = apprverUser.User_Id;
                        //cmc_pdms_wf_master masterEntiy = JsonConvert.DeserializeObject<cmc_pdms_wf_master>(JsonConvert.SerializeObject(saveModel.MainData));
                        //InsertApproveLog(saveModel, bidMastDBID.ToString(), status == "01" ? "05" : status, userEntity, "", 0);
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
                    cmc_pdms_wf_master master = getMasterByDBID(Smaster_id);
                    master.approve_status = status;
                    if (!status.Equals("00"))
                    {
                        master.approved_date = DateTime.Now;
                        master.approve_user_id = apprverUser.User_Id;
                        master.org_code = GetOrgCode();
                        //InsertApproveLog(saveModel, Smaster_id.ToString(), status == "01" ? "05" : status, userEntity, "", 0);
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

                switch (apply_type)
                {
                    case "01"://部門變更
                        //此處實現具體方法
                        break;
                    case "02"://成本編列
                              //此處實現具體方法
                        break;
                    case "03"://主工作計劃管理
                        //此處實現具體方法
                        break;
                    case "04"://任務
                        Insert_task_form(saveModel, wf_master_ids);
                        break;
                    default:
                        break;
                }
            }
            return base.CustomBatchProcessEntity(saveModel);

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
        public Sys_User GetApproveManager()
        {
            Sys_User user_Info = new Sys_User();
            UserInfo info = UserContext.Current.UserInfo;
            //獲取當前登錄人的user_code
            string user_code = info.user_code;
            //再根据user_code取CMC人事系统抓取 下一个审批人


            //再根據主管的user_code 獲取PDMS系統的user_id
            user_code = "";
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
            //cmc_pdms_wf_approve_log approveEntiy = new cmc_pdms_wf_approve_log()
            //{
            //    wf_log_id = Guid.NewGuid(),
            //    wf_master_id = new Guid(wf_master_id),
            //    approve_user_id = userEntity.User_Id,
            //    status= status,
            //    remark= Conmment,
            //    comment = Conmment    //审批意见从前台传递过来
            //};
            //if (status.Equals("01"))
            //{
            //    approveEntiy.approve_status = "03";
            //}
            //else
            //{
            //    approveEntiy.approve_status = status;
            //}
            ////if (type > 0)
            ////{
            ////    approveEntiy.grade = type;
            ////}
            //logResult.optionType = SaveModel.MainOptionType.add;
            //logResult.detailType = typeof(cmc_pdms_wf_approve_log);
            //logResult.DetailData.Add(JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(approveEntiy)));
            //saveModel.DetailListData.Add(logResult);
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
    }
}
