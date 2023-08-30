/*
 *所有关于view_wk_approval_pending类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_wk_approval_pendingService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using Newtonsoft.Json;
using PDMS.Core.ManageUser;
using System.Net;
using PDMS.Core.DBManager;
using System.Collections.Generic;
using System.Reflection;
using OfficeOpenXml.FormulaParsing.Excel.Functions.Text;
using System.Xml.Linq;
using Newtonsoft.Json.Linq;

namespace PDMS.WorkFlow.Services
{
    public partial class view_wk_approval_pendingService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_wk_approval_pendingRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public view_wk_approval_pendingService(
            Iview_wk_approval_pendingRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }

        WebResponseContent WebResponse = new WebResponseContent();
        private static readonly Object custApply = new object();

        //获取待审核列表
        public PageGridData<view_wk_approval_pending> GetApproveDataByTaskExec(PageDataOptions pageData)
        {
            PageGridData<view_wk_approval_pending> pageGridData = new PageGridData<view_wk_approval_pending>();
            string approve_status = "";
            string wf_epl_task_form_id = "";
            string wf_master_id = "";
            /*解析查询条件*/
            List<SearchParameters> searchParametersList = new List<SearchParameters>();
            if (!string.IsNullOrEmpty(pageData.Wheres))
            {
                searchParametersList = pageData.Wheres.DeserializeObject<List<SearchParameters>>();
                if (searchParametersList != null && searchParametersList.Count > 0)
                {

                    foreach (SearchParameters sp in searchParametersList)
                    {
                        if (sp.Name.ToLower() == "approve_status".ToLower())
                        {
                            approve_status = sp.Value;
                            continue;
                        }

                        if (sp.Name.ToLower() == "wf_master_id".ToLower())
                        {
                            wf_master_id = sp.Value;
                            continue;
                        }
                        //
                        if (sp.Name.ToLower() == "wf_epl_task_form_id".ToLower())
                        {
                            wf_epl_task_form_id = string.Format("'{0}'", sp.Value.Replace(",", "','"));
                            continue;
                        }
                    }
                }
            }
            if (string.IsNullOrEmpty(pageData.Sort))
            {
                pageData.Sort = "epl.part_no";
            }
            if (string.IsNullOrEmpty(pageData.Order))
            {
                pageData.Order = "asc";
            }
            QuerySql = @$"        	
	select   ROW_NUMBER()over(order by {pageData.Sort} {pageData.Order}) as rowId,
  epl.part_no,epl.part_name,tsk.task_name,ptask.FormId,ptask.FormCollectionId,wftask.wf_epl_task_form_id
,master.wf_master_id,master.apply_type,ptask.project_task_id,ptask.task_id,ptask.start_date,ptask.end_date,(case when tsk.form_type='0' then 'FormSubmit' else  tsk.form_url end) as form_url,tsk.form_type
	from  cmc_pdms_wf_epl_task_form  wftask
	left join cmc_pdms_wf_master  master  on wftask.wf_master_id=master.wf_master_id
	left join cmc_pdms_project_task  ptask  on ptask.project_task_id=wftask.project_task_id
	left join cmc_pdms_project_epl  epl  on ptask.epl_id=epl.epl_id
	left join cmc_common_task  tsk on ptask.task_id=tsk.task_id   where 1=1   and   master.approve_status='01'  ";
            if (string.IsNullOrEmpty(approve_status) == false)
            {
                QuerySql += @$" and wftask.approve_status='{approve_status}'";
            }

            if (string.IsNullOrEmpty(wf_master_id) == false)
            {
                QuerySql += @$" and wftask.wf_master_id in ('{wf_master_id}')";
            }
            if (string.IsNullOrEmpty(wf_epl_task_form_id) == false)
            {
                QuerySql += @$" and wftask.wf_epl_task_form_id not in({wf_epl_task_form_id})  ";
            }

            string sql = "select count(1) from (" + QuerySql + ") a";


            pageGridData.total = repository.DapperContext.ExecuteScalar(sql, null).GetInt();

            sql = @$"select * from (" +
                QuerySql + $" ) as s where s.rowId between {((pageData.Page - 1) * pageData.Rows + 1)} and {pageData.Page * pageData.Rows} ";
            pageGridData.rows = repository.DapperContext.QueryList<view_wk_approval_pending>(sql, null);
            return pageGridData;

        }


        //批量審核
        public WebResponseContent BatchApproveData(SaveModel saveModel)
        {
            SaveModel Model = new SaveModel();
            Dictionary<string, object> dic = new Dictionary<string, object>();
            var apply_typeJarray = JsonConvert.DeserializeObject<List<string>>(saveModel.MainData["apply_type"].ToString());
            var wf_master_idJarray = JsonConvert.DeserializeObject<List<string>>(saveModel.MainData["wf_master_id"].ToString());
            var approve_status = saveModel.MainData["approve_status"].ToString();
            var remark= saveModel.MainData["remark"].ToString();
            for (int i = 0; i < apply_typeJarray.Count; i++)
            {
                dic = new Dictionary<string, object>();
                dic.Add("wf_master_id", wf_master_idJarray[i]);
                dic.Add("apply_type", apply_typeJarray[i]);
                dic.Add("approve_status", approve_status);
                dic.Add("remark", remark);
                Model.MainData = dic;
                WebResponse = ApproveData(Model);
            }
            return WebResponse.OK();
        }


        //總審批流程
        public WebResponseContent ApproveData(SaveModel saveModel)
        {
            lock (custApply)
            {
                if (!saveModel.MainData.ContainsKey("apply_type"))
                {
                    saveModel.MainData["apply_type"] = "";
                }
                string Apply_Type = saveModel.MainData["apply_type"].ToString();
                try
                {
                    switch (Apply_Type)
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
                            ApprovePlanExec(saveModel);
                            break;
                        default:
                            break;
                    }
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "總審批流程，申請類型：Apply_Type=" + Apply_Type + "，view_wk_approval_pendingService 文件-->ApproveData：" + DateTime.Now + ":" + ex.Message);
                    return WebResponse.Error(ex.Message);
                }
                return WebResponse.OK();
            }

     
        }


        //表單任務所用 方法
        public WebResponseContent ApprovePlanExec(SaveModel saveModel)
        {
            try
            {
                var wf_master_id = saveModel.MainData["wf_master_id"].ToString();
                List<string> task_form_idlist = new List<string>();//wf_epl_task_form_id 集合
                List<string> Agreetask_idlist = new List<string>();//project_task_id 同意集合
                List<string> Rejecttask_idlist = new List<string>();//project_task_id 同意集合
                List<cmc_pdms_wf_epl_task_form> task_formlist = new List<cmc_pdms_wf_epl_task_form>();
                if (!saveModel.MainData.ContainsKey("Reject_wf_epl_task_form_id"))
                {
                    saveModel.MainData["Reject_wf_epl_task_form_id"] = "";
                }    
                var Reject_wf_epl_task_form_id = saveModel.MainData["Reject_wf_epl_task_form_id"].ToString();
                var approve_status = saveModel.MainData["approve_status"].ToString();
                //在外層主頁面 點擊審核 是無非獲取到wf_epl_task_form_id,故根據wf_master_id去查詢,排除拒絕的總數據
                task_formlist = repository.DbContext.Set<cmc_pdms_wf_epl_task_form>().Where(x => x.wf_master_id == Guid.Parse(wf_master_id)).ToList();
               
                var taskRejectTemp = new List<string>();
                if (approve_status == "03")
                {
                    taskRejectTemp = GetSingleString(task_formlist, x => new { x.wf_epl_task_form_id }).ToList(); ;
                }
                else
                {
                    //將拒絕列表轉成List<string>集合
                    taskRejectTemp = string.IsNullOrEmpty(Reject_wf_epl_task_form_id) ? new List<string>() : JsonConvert.DeserializeObject<List<string>>(Reject_wf_epl_task_form_id);
                }   
                #region  數據包裝         
                //wf_epl_task_form_id 同意集合
                task_form_idlist = GetSingleString(task_formlist, x => new { x.wf_epl_task_form_id }).Except(taskRejectTemp).ToList();
                //project_task_id 同意集合
                var AgreeTemp = task_formlist.Where(x => task_form_idlist.Contains(x.wf_epl_task_form_id.ToString()));

                Agreetask_idlist = GetSingleString(AgreeTemp, x => new { x.project_task_id });

                //project_task_id 拒絕集合
                Rejecttask_idlist = GetSingleString(task_formlist.Where(x=> taskRejectTemp.Contains(x.wf_epl_task_form_id.ToString())).ToList(), x => new { x.project_task_id }).ToList();
                #endregion
                var task_form_idTemp = task_form_idlist;
                var taskAgreeTemp = Agreetask_idlist;

                #region //更新Master表和Approvelog 表 ，後續補充郵件隊列

                WebResponse = cmc_pdms_wf_masterService.Instance.MasterUpdate(saveModel, approve_status, "", null, false);

                #endregion

                #region 任務表單的業務邏輯
                //獲取所有cmc_pdms_wf_epl_task_form 需要調整為拒絕的內容
                var task_formList = repository.DbContext.Set<cmc_pdms_wf_epl_task_form>().Where(x => !task_form_idTemp.Contains(x.wf_epl_task_form_id.ToString()) && x.wf_master_id== Guid.Parse(wf_master_id)).ToList();
                task_formList.ForEach(item =>
                {
                    item.approve_status = "0";
                });

                //獲取所有cmc_pdms_project_task 需要調整為同意的內容
                var AgreeList = repository.DbContext.Set<cmc_pdms_project_task>().Where(x => taskAgreeTemp.Contains(x.project_task_id.ToString())).ToList();
                AgreeList.ForEach(item =>
                {
                    item.approve_status = "02";
                });

                //獲取所有cmc_pdms_project_task 需要調整為拒絕的內容
                var RejectList = repository.DbContext.Set<cmc_pdms_project_task>().Where(x => Rejecttask_idlist.Contains(x.project_task_id.ToString())).ToList();
                RejectList.ForEach(item =>
                {
                    item.approve_status = "03";
                });

                if (task_formList.Count() != 0)
                {
                    //cmc_pdms_wf_epl_task_form.approve_status="0" 拒絕
                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.UpdateRange(task_formList, x => new { x.approve_status});
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }

                if (AgreeList.Count() != 0)
                {

                    //cmc_pdms_project_task.approve_status="02" 通過
                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.UpdateRange(AgreeList, x => new { x.approve_status });
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }
                if (RejectList.Count() != 0)
                {
                    //cmc_pdms_project_task.approve_status="03"拒絕
                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.UpdateRange(RejectList, x => new { x.approve_status });
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }
                #endregion
            }
            catch (Exception ex)
            {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改執行 cmc_pdms_wf_epl_task_form/cmc_pdms_project_task 表，view_wk_approval_pendingService 文件-->ApprovePlanExec：" + DateTime.Now + ":" + ex.Message);
                return WebResponse.Error(ex.Message);
            }
            return WebResponse.OK();
        }

        //實體映射，獲取某個屬性的全部數據 轉換成List<string>
        public List<string> GetSingleString<T>(IEnumerable<T> List, Expression<Func<T, object>> SelectFileds = null)
        {
            List<string> temp = new List<string>();
            string[] arr = null;
            if (List.Count() != 0)
            {
                var templist = JsonConvert.DeserializeObject<List<T>>(JsonConvert.SerializeObject(List));
                if (SelectFileds != null)
                {
                    arr = SelectFileds.GetExpressionToArray();
                    if (arr.Length != 0)
                    {
                        foreach (var item in arr)
                        {
                            var thisvalue = templist.Select(p => p.GetType().GetProperty(item).GetValue(p)).Distinct().ToList();
                            temp = JsonConvert.DeserializeObject<List<string>>(JsonConvert.SerializeObject(thisvalue));
                        }
                    }
                }        
            }   
            return temp;
        }


    }
}
