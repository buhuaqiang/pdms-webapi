/*
 *所有关于view_wk_mine_submit类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_wk_mine_submitService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using System.Net;
using Newtonsoft.Json;
using PDMS.Core.DBManager;

namespace PDMS.WorkFlow.Services
{
    public partial class view_wk_mine_submitService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_wk_mine_submitRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public view_wk_mine_submitService(
            Iview_wk_mine_submitRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
        }
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        public WebResponseContent ResponseContent = new WebResponseContent();

        public WebResponseContent callBack(SaveModel saveModel)
        {//拿回
            var mainDatas = saveModel.MainDatas;
           
            if (mainDatas.Count != 0)
            {
                try
                {
                    foreach (var item in mainDatas)
                    {
                        var applyType = item["apply_type"].ToString();
                        SaveModel Model = new SaveModel();
                        Model.MainData = item;

                        switch (applyType)
                        {
                            case "01"://部門變更
                                callBackEplOrg(Model);
                                break;
                            case "02"://成本編列
                                callBackEplFs(Model);
                                break;
                            case "03"://主工作計劃管理
                                      //待完善
                                break;
                            case "04"://任務表單
                                callBackTaskExec(Model); 
                                break;
                            default:
                                break;
                        }
                    }

                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "提交拿回，view_wk_mine_submitService 文件-->ApproveData：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error(ex.Message);
                }
            }
            return ResponseContent.OK();
        }
        //部門變更拿回
        public WebResponseContent callBackEplOrg(SaveModel saveModel) {
            try {
                var wf_master_id = saveModel.MainData["wf_master_id"].ToString();
                cmc_pdms_wf_master master = new cmc_pdms_wf_master();//存取申請主表
                List<cmc_pdms_wf_epl_org> eplOrgList = new List<cmc_pdms_wf_epl_org>();//存取查詢的cmc_pdms_wf_epl_org
                List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();//存取cmc_pdms_project_epl
                List<string> eplOrgIds = new List<string>();//cmc_pdms_wf_epl_org 所有數據的id集合
                List<string> eplIds = new List<string>();//cmc_pdms_wf_epl_org 的epl_id集合


               var  masterList = repository.DbContext.Set<cmc_pdms_wf_master>().Where(x => x.wf_master_id == Guid.Parse(wf_master_id)).ToList();
                if (masterList.Count()!=0)
                {
                    var lists = JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(JsonConvert.SerializeObject(masterList))[0];
                    saveModel.MainData = lists;

                    ResponseContent = cmc_pdms_wf_masterService.Instance.MasterUpdate(saveModel, "04", "", null, false);
                }
                

                //查詢出申請明細
                eplOrgList = repository.DbContext.Set<cmc_pdms_wf_epl_org>().Where(x => x.wf_master_id == Guid.Parse(wf_master_id)).ToList();

                //獲取明細的id
                eplOrgIds = EPPlusHelper.GetSingleString(eplOrgList, x => new { x.wf_epl_org_id }).ToList();
                //獲取明細的數據
                var tempList = eplOrgList.Where(x => eplOrgIds.Contains(x.wf_epl_org_id.ToString()));
                //獲取明細的epl_id
                eplIds = EPPlusHelper.GetSingleString(tempList, x => new { x.epl_id });
                //根據明細epl_id查詢出cmc_pdms_project_epl對應的明細
                var projectEplList = repository.DbContext.Set<cmc_pdms_project_epl>().Where(x => eplIds.Contains(x.epl_id.ToString())).ToList();
                //循環更新cmc_pdms_project_epl的數據狀態
                projectEplList.ForEach(item =>
                {
                    item.org_change_approve_status = "00";//調整提交狀態
                });


                //執行數據庫變更cmc_pdms_project_epl狀態為待提交
                if (projectEplList.Count() != 0)
                {
                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.UpdateRange(projectEplList, x => new { x.org_change_approve_status });
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }




            }
            catch (Exception ex) {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量執行部門變更審批拿回 cmc_pdms_project_epl/cmc_pdms_wf_master 表，view_wk_mine_submitService 文件-->callBackEplOrg：" + DateTime.Now + ":" + ex.Message);
                return ResponseContent.Error(ex.Message);
            }
            

            return ResponseContent.OK();
        }

        public WebResponseContent callBackEplFs(SaveModel saveModel) {
            try {
                var wf_master_id = saveModel.MainData["wf_master_id"].ToString();
                cmc_pdms_wf_master master = new cmc_pdms_wf_master();//存取申請主表
                List<cmc_pdms_wf_epl_fs> eplFsList = new List<cmc_pdms_wf_epl_fs>();//存取查詢的cmc_pdms_wf_epl_fs
                List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();//存取cmc_pdms_project_epl
                List<string> eplFsIds = new List<string>();//cmc_pdms_wf_epl_fs 所有數據的id集合
                List<string> eplIds = new List<string>();//cmc_pdms_wf_epl_fs 的epl_id集合


                var masterList = repository.DbContext.Set<cmc_pdms_wf_master>().Where(x => x.wf_master_id == Guid.Parse(wf_master_id)).ToList();
                if (masterList.Count() != 0)
                {
                    var lists = JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(JsonConvert.SerializeObject(masterList))[0];
                    saveModel.MainData = lists;

                    ResponseContent = cmc_pdms_wf_masterService.Instance.MasterUpdate(saveModel, "04", "", null, false);
                }


                //查詢出申請明細
                eplFsList = repository.DbContext.Set<cmc_pdms_wf_epl_fs>().Where(x => x.wf_master_id == Guid.Parse(wf_master_id)).ToList();

                //獲取明細的id
                eplFsIds = EPPlusHelper.GetSingleString(eplFsList, x => new { x.wf_epl_fs_id }).ToList();
                //獲取明細的數據
                var tempList = eplFsList.Where(x => eplFsIds.Contains(x.wf_epl_fs_id.ToString()));
                //獲取明細的epl_id
                eplIds = EPPlusHelper.GetSingleString(tempList, x => new { x.epl_id });
                //根據明細epl_id查詢出cmc_pdms_project_epl對應的明細
                var projectEplList = repository.DbContext.Set<cmc_pdms_project_epl>().Where(x => eplIds.Contains(x.epl_id.ToString())).ToList();
                //循環更新cmc_pdms_project_epl的數據狀態
                projectEplList.ForEach(item =>
                {
                    item.fs_approve_status = "00";//調整提交狀態
                });


                //執行數據庫變更cmc_pdms_project_epl狀態為待提交
                if (projectEplList.Count() != 0)
                {
                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.UpdateRange(projectEplList, x => new { x.fs_approve_status });
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }


            }
            catch (Exception ex) {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量執行fs成本編列審批拿回 cmc_pdms_project_epl/cmc_pdms_wf_master  表，view_wk_mine_submitService 文件-->callBackEplFs：" + DateTime.Now + ":" + ex.Message);
                return ResponseContent.Error(ex.Message);
            }

            return ResponseContent.OK();
        }

        //表單任務
        public WebResponseContent callBackTaskExec(SaveModel saveModel)
        {
            try
            {
                var wf_master_id = saveModel.MainData["wf_master_id"].ToString();
                List<cmc_pdms_wf_epl_task_form> TaskFromList = new List<cmc_pdms_wf_epl_task_form>();//存取查詢的cmc_pdms_wf_epl_task_form
                List<cmc_pdms_project_task> project_taskList = new List<cmc_pdms_project_task>();//存取cmc_pdms_project_epl
                List<string> project_task_idIds = new List<string>();//cmc_pdms_wf_epl_fs 所有數據的id集合
                var masterList = repository.DbContext.Set<cmc_pdms_wf_master>().Where(x => x.wf_master_id == Guid.Parse(wf_master_id)).ToList();
                if (masterList.Count() != 0)
                {
                    var lists = JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(JsonConvert.SerializeObject(masterList))[0];
                    saveModel.MainData = lists;
                    ResponseContent = cmc_pdms_wf_masterService.Instance.MasterUpdate(saveModel, "04", "", null, false);
                }
                //查詢出申請明細--> cmc_pdms_wf_epl_task_form
                TaskFromList = repository.DbContext.Set<cmc_pdms_wf_epl_task_form>().Where(x => x.wf_master_id == Guid.Parse(wf_master_id)).ToList();
                //獲取明細的id --> project_task_id
                project_task_idIds = EPPlusHelper.GetSingleString(TaskFromList, x => new { x.project_task_id }).ToList();

                //查詢業務表明細--> cmc_pdms_project_task
                project_taskList = repository.DbContext.Set<cmc_pdms_project_task>().Where(x => project_task_idIds.Contains(x.project_task_id.ToString())).ToList();


                //執行數據庫變更 cmc_pdms_project_task 狀態為待提交
                if (project_taskList.Count() != 0)
                {
                    project_taskList.ForEach(item =>
                    {
                        item.approve_status = "04";//調整提交狀態//拿回 就改為待提交
                    });
                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.UpdateRange(project_taskList, x => new { x.approve_status });
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }
            }
            catch (Exception ex)
            {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量執行 任務表單 審批拿回 cmc_pdms_project_task/cmc_pdms_wf_master  表，view_wk_mine_submitService 文件-->callBackTaskExec：" + DateTime.Now + ":" + ex.Message);
                return ResponseContent.Error(ex.Message);
            }

            return ResponseContent.OK();
        }



    }
}
