/*
 *所有关于cmc_pdms_project_eo_epl类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*cmc_pdms_project_eo_eplService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using System.Text;
using OfficeOpenXml.FormulaParsing.Excel.Functions.Text;
using System.Collections.Generic;
using PDMS.Core.DBManager;
using System.Xml.Linq;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using static PDMS.Core.Utilities.EPPlusHelper;
using PDMS.Entity.DomainModels.eoEpl;
using System.Security.AccessControl;
using Microsoft.AspNetCore.SignalR;
using static Dapper.SqlMapper;
using System;
using static System.Reflection.Metadata.BlobBuilder;
using ExpressionType = PDMS.Core.Utilities.ExpressionType;
using System.Collections;
using Dapper;
using PDMS.Project.Repositories;

namespace PDMS.Project.Services
{
    public partial class cmc_pdms_project_eo_eplService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Icmc_pdms_project_eo_eplRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public cmc_pdms_project_eo_eplService(
            Icmc_pdms_project_eo_eplRepository dbRepository,
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
        public WebResponseContent dealEoData(string date)
        {
            if (string.IsNullOrEmpty(date))
            {
                return ResponseContent.Error("請確定要處理的EO日期");
            }
            try
            {
                #region   先将 YTECH/YTECS/YTECB 写入对应的表
                //ResponseContent = ImportEOData();
                #endregion

                #region  根據當前時間查詢，當天的所有變更EO，中轉站處理,最後寫入cmc_pdms_eo_project
                //根據當前時間查詢，當天的所有變更EO

                var List = repository.DbContext.Set<YTECH>().Where(x => x.EC_DATE ==Convert.ToDateTime(date)).ToList();
                //將查出的數據，放進中轉站處理,最後寫入cmc_pdms_eo_project
                ResponseContent = GetStrData(List);
                #endregion
                #region 將數據寫入eo清冊，cmc_pdms_project_eo_epl表
                if (ResponseContent.Status)
                {
                   ResponseContent = insertYTECS(date);
                }
                if (ResponseContent.Status)
                { 
                   ResponseContent = insertYTECB(date);
                }
                #endregion

                #region 將EO清冊的數據寫入開發清冊
                if (ResponseContent.Status)
                {
                    ResponseContent = insertProjectEPL(date);
                }
                    
                #endregion
            }
            catch (Exception ex)
            {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "处理EO数据，cmc_pdms_project_eo_eplService 文件：dealEoData：" + DateTime.Now + ":" + ex.Message);
                return ResponseContent.Error();
            }
           
            return ResponseContent.OK();
        }

        public WebResponseContent insertProjectEPL(string date)
        {
            try
            {
                string getEplData = $@"select * from cmc_pdms_project_eo_epl where ec_date='{date}' and ai_type in (SELECT DicValue FROM Sys_DictionaryList WHERE Dic_ID=(SELECT Dic_ID FROM Sys_Dictionary WHERE DicNo='eo_ai_type_1'))";
                List<cmc_pdms_project_eo_epl> list= repository.DapperContext.QueryList<cmc_pdms_project_eo_epl>(getEplData, null);
                if(list!=null&& list.Count()>0)
                {
                    List<cmc_pdms_project_epl> updatelist = new List<cmc_pdms_project_epl>();
                    List<cmc_pdms_project_epl> addlist = new List<cmc_pdms_project_epl>();
                    List<cmc_pdms_project_task> taskList=new List<cmc_pdms_project_task>();

                    //查詢任務
                    string getTask = @$"SELECT top 1 * FROM cmc_common_task where is_eo='1' ORDER BY CreateDate desc";
                    cmc_pdms_project_task taskData = repository.DapperContext.QueryList<cmc_pdms_project_task>(getTask, null).FirstOrDefault();
                    list.ForEach(x =>
                    {
                        if(x!=null)
                        {
                            cmc_pdms_project_epl epl=new cmc_pdms_project_epl();
                            if (!string.IsNullOrEmpty(x.epl_id.ToString()))
                            {
                                epl.epl_id = Guid.Parse(x.epl_id.ToString());
                            }
                            epl.project_id = x.project_id;
                            epl.org_code=x.org_code;
                            epl.new_org_code = x.org_code;
                            epl.action_type= x.action_type;
                            epl.part_name=x.part_name;
                            epl.part_no=x.part_no;
                            epl.epl_phase = "02";//01：專案建立；02：專案啟動
                            epl.epl_source = "04";//01：手工上傳；02：CMS；03：PLM；04：EO
                            epl.is_eo = "1";
                            epl.del_flag = "0";
                            if (x.action_type == "delete" && !string.IsNullOrEmpty(x.epl_id.ToString()))
                            {
                                updatelist.Add(epl);
                            }else if(x.action_type == "add")
                            {
                                addlist.Add(epl);
                            }else if (x.action_type == "modify")
                            {
                                cmc_pdms_project_task project_Task=new cmc_pdms_project_task();
                                project_Task.project_task_id=Guid.NewGuid();
                                project_Task.start_date = x.ec_date;
                                project_Task.end_date = x.task_end_date;
                                project_Task.epl_id=x.epl_id;
                                project_Task.is_eo="1";
                                project_Task.eo_gate_id = x.eo_gate_id;
                               
                                if (taskData != null)
                                {
                                    project_Task.task_id= taskData.task_id;
                                    taskList.Add(project_Task);
                                }
                                
                            }
                        }
                    });

                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        if (addlist.Count() > 0)
                        {
                            DBServerProvider.SqlDapper.BulkInsert(addlist, "cmc_pdms_project_epl");
                        }
                        if (updatelist.Count() > 0)
                        {
                            DBServerProvider.SqlDapper.UpdateRange(updatelist, x => new { x.action_type });
                        }
                        if (taskList.Count() > 0)
                        {
                            DBServerProvider.SqlDapper.BulkInsert(taskList, "cmc_pdms_project_task");
                        }
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });

                    
                   
                }
            }
            catch (Exception ex)
            {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "將cmc_pdms_project_eo_epl表數據查詢寫入 cmc_pdms_project_epl 表，cmc_pdms_project_eo_eplService 文件-->insertProjectEPL：" + DateTime.Now + ":" + ex.Message);
                return ResponseContent.Error(ex.Message);
            }
            return ResponseContent.OK();
        }
           
        public WebResponseContent insertYTECB(string date)
        {
            try
            {
                string getYtecbData = @$"SELECT   pro.project_id,ch.ec_date,cs.AI_TYPE,cs.AI_CL,cb.* from YTECB cb
                            LEFT join YTECH ch on cb.EC_NO=ch.EC_NO
                            left join YTECS cs on cs.EC_NO= cb.EC_NO
                            left join cmc_pdms_eo_project pro on pro.ec_no=ch.EC_NO
                            WHERE ch.EC_DATE='{date}' 
														AND cs.ai_type in (SELECT DicValue FROM Sys_DictionaryList WHERE Dic_ID=(SELECT Dic_ID FROM Sys_Dictionary WHERE DicNo='eo_ai_type_1'))
                            and cb.ACTION='D'";
                List<YTECB_QUERY> list = repository.DapperContext.QueryList<YTECB_QUERY>(getYtecbData, null);
                //查询出所有已存在的零件编号
                string existPartList = @$"select  * from cmc_pdms_project_epl where  epl_phase='02' and kd_type like 'D*%' 
								order by CreateID desc";
                List<cmc_pdms_project_epl> existList = repository.DapperContext.QueryList<cmc_pdms_project_epl>(existPartList, null);
                if (list!=null && list.Count()>0)
                {
                    List<cmc_pdms_project_eo_epl> eoEplList = new List<cmc_pdms_project_eo_epl>();
                    list.ForEach(x =>
                    {
                        if (x != null)
                        {
                            cmc_pdms_project_eo_epl EPL = new cmc_pdms_project_eo_epl();
                            EPL.eo_id = Guid.NewGuid();
                            EPL.part_name = x.B_ITEM_NAME;
                            EPL.part_no = x.B_ITEM;
                            EPL.project_id = x.project_id;
                            EPL.eo_status = "1";//默認為已分發狀態
                            EPL.part_version = x.AI_CL;
                            EPL.ai_type = x.AI_TYPE;
                            EPL.ec_date = x.EC_DATE;
                            EPL.ec_no = x.EC_NO;
                            EPL.org_code = x.DEPT_ID;
                            if (x.DEPT_ID == "D146")
                            {
                                EPL.org_code = "D157";
                            }
                            EPL.action_type = "delete";
                            if (x.project_id != null)
                            {
                                cmc_pdms_project_epl exist = existList.Where(a =>(a.project_id==x.project_id && a.part_no==x.EC_AI)).FirstOrDefault();
                           
                                if (exist != null)
                                {
                                    EPL.epl_id = exist.epl_id;
                                }
                            }                            
                            eoEplList.Add(EPL);
                        }
                    });
                    if (eoEplList.Count() > 0)
                    {
                        repository.DapperContext.BeginTransaction((r) =>
                        {
                            DBServerProvider.SqlDapper.BulkInsert(eoEplList, "cmc_pdms_project_eo_epl");
                            return true;
                        }, (ex) => { throw new Exception(ex.Message); });
                    }
                }
            }
            catch (Exception ex) {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "將YTECB表數據查詢寫入 cmc_pdms_project_eo_epl 表，cmc_pdms_project_eo_eplService 文件-->insertYTECB：" + DateTime.Now + ":" + ex.Message);
                return ResponseContent.Error(ex.Message);
            }
            return ResponseContent.OK();
        }

        public WebResponseContent insertYTECS(string date)
        {
            try
            {
                string getYtecsData = @$"SELECT   pro.project_id, ch.DEPT_ID,ch.EC_DATE,ch.PRIORITY,CS.* from YTECS cs
                LEFT join YTECH ch on cs.EC_NO=ch.EC_NO
                left join cmc_pdms_eo_project pro on pro.ec_no=ch.EC_NO
                WHERE EC_DATE='{date}'";
                List<YTECS_QUERY> csList = repository.DapperContext.QueryList<YTECS_QUERY>(getYtecsData, null);
                string getRelatedType = "SELECT DicValue FROM Sys_DictionaryList WHERE Dic_ID=(SELECT Dic_ID FROM Sys_Dictionary WHERE DicNo='eo_ai_type_1')";
                List<string> relatedType = repository.DapperContext.QueryList<string>(getRelatedType, null);

                //查询出所有已存在的零件编号
                string existPartList = @$"select  * from cmc_pdms_project_epl where  epl_phase='02' and kd_type like 'D*%' 
								order by CreateID desc";
                List<cmc_pdms_project_epl> existList = repository.DapperContext.QueryList<cmc_pdms_project_epl>(existPartList, null);

                //查询出所有gate
                string allGate=@$"SELECT sl.DicName,* from cmc_pdms_project_gate gate 
					left join Sys_DictionaryList sl on gate.gate_code=sl.DicValue and sl.Dic_ID = (SELECT Dic_ID from Sys_Dictionary where DicNo='gate')";
                List< gate_query> gateList=repository.DapperContext.QueryList<gate_query>(allGate, null);

                if (csList != null && csList.Count > 0)
                {
                    List<cmc_pdms_project_eo_epl> eoEplList = new List<cmc_pdms_project_eo_epl>();
                    csList.ForEach(x =>
                    {
                        if (x != null)
                        {
                            cmc_pdms_project_eo_epl EPL = new cmc_pdms_project_eo_epl();
                            EPL.eo_id = Guid.NewGuid();
                            EPL.part_name = x.AI_NAME;
                            EPL.part_no = x.EC_AI;
                            EPL.project_id = x.project_id;
                            EPL.eo_status = "1";//默認為已分發狀態
                            EPL.part_version = x.AI_CL;
                            EPL.ai_type = x.AI_TYPE;
                            EPL.ec_date = x.EC_DATE;
                            EPL.ec_no = x.EC_NO;
                            EPL.org_code = x.DEPT_ID;
                           
                            if (x.DEPT_ID == "D146")
                            {
                                EPL.org_code = "D157";
                            }
                            if (relatedType.Contains(EPL.ai_type))//開發清冊相關
                            {
                                if(x.project_id!=null)
                                {
                                    
                                    cmc_pdms_project_epl exist = existList.Where(a => (a.project_id == x.project_id && a.part_no == x.EC_AI)).FirstOrDefault();
                                    if (exist != null)
                                    {
                                        EPL.epl_id = exist.epl_id;
                                        EPL.action_type = "modify";

                                        //設置結束時間
                                        if (!string.IsNullOrEmpty(x.PRIORITY))
                                        {
                                            string gate = x.PRIORITY.Split('.')[0];
                                            if (!string.IsNullOrEmpty(gate))
                                            {

                                                gate_query gateData =gateList.Where(a=>(a.project_id==x.project_id && a.gateName==gate)).FirstOrDefault();
                                                if (gateData != null)
                                                {
                                                    EPL.task_end_date = Convert.ToDateTime(gateData.gate_end_date).AddDays(-1);
                                                    EPL.eo_gate_id = gateData.gate_id;
                                                }
                                            }
                                        }


                                    }
                                    else
                                    {//如果是新件，那這裡定義一個epl主鍵id，並寫入epl表，方便日後做關聯查詢
                                        EPL.epl_id = Guid.NewGuid();
                                        EPL.action_type = "add";
                                    }
                                }
                                
                            }
                            else
                            {
                                if (string.IsNullOrEmpty(x.AI_TYPE))
                                {
                                    //為空時給類型設置一個值，這樣是為了方便後續查詢SQL,拼接where語句，ai_type in(查詢對應數據字典)，默認null是無法用in查詢出來的
                                    EPL.ai_type = "-1";

                                }
                            }
                            eoEplList.Add(EPL);
                        }
                    });
                    if (eoEplList.Count() > 0)
                    {
                        repository.DapperContext.BeginTransaction((r) =>
                        {
                            DBServerProvider.SqlDapper.BulkInsert(eoEplList, "cmc_pdms_project_eo_epl");
                            return true;
                        }, (ex) => { throw new Exception(ex.Message); });
                    }

                }
            }
            catch (Exception ex)
            {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "將YTECS表數據查詢寫入 cmc_pdms_project_eo_epl 表，cmc_pdms_project_eo_eplService 文件-->insertYTECS：" + DateTime.Now + ":" + ex.Message);
                return ResponseContent.Error(ex.Message);
            }
            return ResponseContent.OK();
        }

        public WebResponseContent ImportEOData()
        {
            string date = DateTime.Now.ToString("yyyyMMdd");
            string localPath = $"E:/data/YTECB_1.xlsx".MapPath();
            string localPath2 = $"e:/data/YTECH_1.xlsx".MapPath();
            string localPath3 = $"e:/data/YTECS_1.xlsx".MapPath();
            try
            { 
                DataTable Data = EPPlusHelper.ReadExcel(localPath);
                var list = DtToList<YTECB>.ConvertToModel(Data);
               

                DataTable Data2 = EPPlusHelper.ReadExcel(localPath2);
                var list2 = DtToList<YTECH>.ConvertToModel(Data2);
               

                DataTable Data3 = EPPlusHelper.ReadExcel(localPath3);
                var list3 = DtToList<YTECS>.ConvertToModel(Data3);
                repository.DapperContext.BeginTransaction((r) =>
                {
                    DBServerProvider.SqlDapper.BulkInsert(list2, "YTECH");
                    DBServerProvider.SqlDapper.BulkInsert(list, "YTECB");
                    DBServerProvider.SqlDapper.BulkInsert(list3, "YTECS");
                    return true;
                }, (ex) => { throw new Exception(ex.Message); });


            }
            catch (Exception ex)
            {

                throw;
            }
            finally
            {
                //if (File.Exists(localPath))
                //{
                //    File.Delete(localPath);
                //}
                //if (File.Exists(localPath2))
                //{
                //    File.Delete(localPath2);
                //}
                //if (File.Exists(localPath3))
                //{
                //    File.Delete(localPath3);
                //}
            }
            return ResponseContent.OK();
        }



        //車型|年型|仕向地 分別寫入List<string>,並裝箱
        public WebResponseContent GetStrData(List<YTECH> list)
        {
            List<List<string>> dicData = new List<List<string>>();
            var model_type = "";
            var model_year = "";
            var model_dest = "";
            List<cmc_pdms_eo_project> projects = new List<cmc_pdms_eo_project>();
            List<cmc_pdms_project_main> MainList = new List<cmc_pdms_project_main>();
            List<cmc_pdms_project_main> Result = new List<cmc_pdms_project_main>();
            try
            {
                if (list.Count() > 0)
                {
                    var project_mainList = repository.DbContext.Set<cmc_pdms_project_main>().Where(x => (x.project_status == "01" || x.project_status == "02" || x.project_status == "03")).ToList();
                    var Groups = list.GroupBy(x => new { x.EC_NO, x.MODEL_YEAR }).ToList();
  
                    foreach (var item in Groups)
                    {
                        if (item.Key.MODEL_YEAR.IndexOf(",") != -1)
                        {
                            var Arr = item.Key.MODEL_YEAR.Split(",");
                            foreach (var ArrItem in Arr)
                            {
                                if (ArrItem.IndexOf("|") != -1)
                                {
                                    var arrs = ArrItem.Split("|");
                                    if (!arrs[0].Contains("ALL") && !arrs[0].Contains("---"))
                                        model_type=(arrs[0]);
                                    if (!arrs[1].Contains("ALL") && !arrs[1].Contains("---"))
                                        model_year=(arrs[1]);
                                    if (!arrs[2].Contains("ALL") && !arrs[2].Contains("---"))
                                        model_dest=(arrs[2]);
                                     MainList = GetList(model_type, model_year, model_dest, project_mainList);
                                     Result = Result.Union(MainList).ToList<cmc_pdms_project_main>(); //剔除重复项                
                                }
                            }
                        }
                        else if (item.Key.MODEL_YEAR.IndexOf("|") != -1)
                        {
                            var arrs = item.Key.MODEL_YEAR.Split("|");
                            if (!arrs[0].Contains("ALL") && !arrs[0].Contains("---"))
                                model_type=(arrs[0]);
                            if (!arrs[1].Contains("ALL") && !arrs[1].Contains("---"))
                                model_year=(arrs[1]);
                            if (!arrs[2].Contains("ALL") && !arrs[2].Contains("---"))
                                model_dest=(arrs[2]);
                            Result = GetList(model_type, model_year, model_dest, project_mainList);
                        }                   
                        var project_idList = EPPlusHelper.GetSingleString(Result, x => new { x.project_id }).ToList();
                        foreach (var id in project_idList)
                        {
                            projects.Add(new cmc_pdms_eo_project
                            {
                                ec_no = item.Key.EC_NO,
                                project_id = Guid.Parse(id)
                            });
                        }
                    }
                    if (projects.Count() > 0)
                    {
                        repository.DapperContext.BeginTransaction((r) =>
                        {
                            DBServerProvider.SqlDapper.BulkInsert(projects, "cmc_pdms_eo_project");
                            return true;
                        }, (ex) => { throw new Exception(ex.Message); });
                    }
                    //释放实体
                    Result = null;
                }
            }
            catch (Exception ex)
            {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改執行 cmc_pdms_eo_project 表，cmc_pdms_project_eo_eplService 文件-->BulkInsert：" + DateTime.Now + ":" + ex.Message);
                return ResponseContent.Error(ex.Message);
            }
            return ResponseContent.OK();
        }

        //拼接Lamada 表达式并查询数据
        public List<cmc_pdms_project_main> GetList(string model_type,string model_year,string model_dest,List<cmc_pdms_project_main> TempList)
        {
            List<cmc_pdms_project_main> MainList = new List<cmc_pdms_project_main>();
            //1.定义对象，传入泛型
            var oLamadaExtention = new LamadaExtention<cmc_pdms_project_main>();
            if (!string.IsNullOrEmpty(model_type))
            {
                oLamadaExtention.GetExpression("model_type", model_type, ExpressionType.Equal);
            }
            if (!string.IsNullOrEmpty(model_year))
            {
                oLamadaExtention.GetExpression("model_year", model_year, ExpressionType.Equal);
            }
            if (!string.IsNullOrEmpty(model_dest))
            {
                oLamadaExtention.GetExpression("model_dest", model_dest, ExpressionType.Equal);
            }
            var lamada = (oLamadaExtention.GetLambda());
            MainList = TempList.Where(lamada.Compile()).ToList();

            return MainList;
        }
    }
}
