/*
 *所有关于view_cmc_project_pm类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_cmc_project_pmService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using PDMS.Project.IServices;
using PDMS.Core.ManageUser;
using System.Collections.Generic;
using System.Security.Cryptography;
using System;
using OfficeOpenXml.FormulaParsing.Excel.Functions.DateTime;
using OfficeOpenXml.FormulaParsing.Excel.Functions.Information;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory;
using Newtonsoft.Json;
using PDMS.Core.DBManager;
using OfficeOpenXml.FormulaParsing.Excel.Functions.Math;
using Newtonsoft.Json.Linq;
using OfficeOpenXml.FormulaParsing.Excel.Functions.Text;

namespace PDMS.Project.Services
{
    public partial class view_cmc_project_pmService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_cmc_project_pmRepository _repository;//访问数据库
        WebResponseContent webResponse = new WebResponseContent();

        private readonly Icmc_pdms_project_mainService _cmc_pdms_project_mainService;
        private readonly Icmc_pdms_project_mainRepository _cmc_pdms_project_mainRepository;
        private readonly Icmc_pdms_project_eplService _cmc_pdms_project_eplService;

        [ActivatorUtilitiesConstructor]
        public view_cmc_project_pmService(
            Iview_cmc_project_pmRepository dbRepository,
            IHttpContextAccessor httpContextAccessor,
            Icmc_pdms_project_mainService cmc_pdms_project_mainService,
            Icmc_pdms_project_eplService cmc_pdms_project_eplService,
            Icmc_pdms_project_mainRepository cmc_pdms_project_mainRepository
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            _cmc_pdms_project_mainService = cmc_pdms_project_mainService;
            _cmc_pdms_project_mainRepository = cmc_pdms_project_mainRepository;
            _cmc_pdms_project_eplService= cmc_pdms_project_eplService;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }
        List<string> gateModList = new List<string>();

        //isGlnoRepeated
        public int isGlnoRepeated(String glno)
        {
            int count;
            string isUniq = $@"SELECT count(*) FROM cmc_pdms_project_main WHERE glno= '{glno}'";
            count = Convert.ToInt32(repository.DapperContext.ExecuteScalar(isUniq, null));            
            return count;
        }
        public override WebResponseContent Add(SaveModel saveDataModel)
        {
            // 在保存数据库前的操作，所有数据都验证通过了，这一步执行完就执行数据库保存           
            var glno = saveDataModel.MainData["glno"].ToString();
            int count = isGlnoRepeated(glno);

            //把畫面上數據都寫入數據庫
            if (count == 0)
            {
                var info = _cmc_pdms_project_mainService.Add(saveDataModel);
                string selectstr1 = $@"SELECT project_id FROM cmc_pdms_project_main WHERE glno= '{glno}'";
                List<cmc_pdms_project_main> pidResult = _repository.DapperContext.QueryList<cmc_pdms_project_main>(selectstr1, null);
                var pid = pidResult[0].project_id;

                //改專案 發佈狀態 為草稿01
                string releaseStatus = $@"UPDATE cmc_pdms_project_main  set release_status='01' WHERE project_id='{pid}'";
                var succReleaseStatus = repository.DapperContext.ExcuteNonQuery(releaseStatus, null);
                string pStatus = $@"UPDATE cmc_pdms_project_main  set project_status='01' WHERE project_id='{pid}'";
                var projStatus = repository.DapperContext.ExcuteNonQuery(pStatus, null);
                return info;
            }
            else
            {
                return webResponse.Error("專案編號不可重複!");
            }
        }
        public override WebResponseContent Update(SaveModel saveModel)
        {
            //var d1 = saveModel.Details[0].Data[0];
            //獲取點選專案的大日程
            UserInfo userList = UserContext.Current.UserInfo;
            var CreateID = userList.User_Id;
            var Creator = userList.UserTrueName;
            var pid = saveModel.MainData["project_id"].ToString();       
            //List<cmc_pdms_project_gate> gateModList = new List<cmc_pdms_project_gate>();
            string newVersionStr = $@"SELECT REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR, GETDATE(), 120), '-', ''), ':', ''), ' ', ''), ',', '') AS current_datetime;";
            var newVersion = repository.DapperContext.ExecuteScalar(newVersionStr, null);
            //var gateid2 = saveModel.Details[0].Data[0]["gate_id"].ToString();
            //var gateId = saveModel.MainData["gate_id"].ToString();


            var pageGateData = saveModel.Details[0].Data;//畫面上大日程數據pageGateData

            //查出資料庫大日程數據addset
            string selectSet = $@"SELECT * FROM cmc_pdms_project_gate WHERE project_id= '{pid}'";
            List<cmc_pdms_project_gate> addset = _repository.DapperContext.QueryList<cmc_pdms_project_gate>(selectSet, null);
            string selectreleaseStatus = $@"SELECT main.release_status FROM cmc_pdms_project_main main WHERE project_id= '{pid}'";
            List<cmc_pdms_project_main> result = _repository.DapperContext.QueryList<cmc_pdms_project_main>(selectreleaseStatus, null);
            var releaseStatus = result[0].release_status;
                if (releaseStatus == "02")
                { 
                bool changed = false;
                string actype = "";
                string delflag = "";
                if (addset.Count != 0)
                {
                    //List<cmc_pdms_project_gate> setList = new List<cmc_pdms_project_gate>();
                    try
                    {
                        foreach (var screen in pageGateData)//畫面上數據
                        {
                            string screenGateId = "";
                            string screenGateVersion = "";
                            if (screen.ContainsKey("gate_id"))
                            {
                                screenGateId = screen["gate_id"].ToString();
                            }
                            else {
                                string newID = $@"SELECT NEWID()";
                                var ID = repository.DapperContext.ExecuteScalar(newID, null);
                                screenGateId = ID.ToString();
                            }

                            var screenProjectId = pid;
                            var screenGateCode = screen["gate_code"].ToString();
                            var screenGateStartDate = screen["gate_start_date"].ToString();
                            var screenGateEndDate = screen["gate_end_date"].ToString();
                            if (screen.ContainsKey("version"))
                            {
                                if (screen["version"]==null)
                                {
                                    //screenGateVersion = newVersion.ToString();
                                }
                                else
                                {
                                    screenGateVersion = screen["version"].ToString();
                                }
                                
                            }
                            else
                            {
                                //screenGateVersion = newVersion.ToString();
                            }

                            //兩邊數據交集
                            var str1 = addset.Where(x => x.gate_id.ToString() == screenGateId).FirstOrDefault();
                           

                            if (str1 == null)//增加
                            {
                                actype = "add";
                                delflag = "0";
                                gateModList.Add(screenGateId);
                                string sqlGateHis = $@"insert into cmc_pdms_project_gate_his (
                                gate_his_id,
                                gate_id,
                                project_id,
                                gate_code,
                                gate_start_date,
                                gate_end_date,
                                
                                action_type)
                                values
                                (NEWID(),
                                '{screenGateId}',
                                '{screenProjectId}',
                                '{screenGateCode}',
                                '{screenGateStartDate}',
                                '{screenGateEndDate}',
                                
                                '{actype}'
                                )";
                                var sccGateHis = repository.DapperContext.ExcuteNonQuery(sqlGateHis, null);                                
                                
                                string sqlGate = $@"insert into cmc_pdms_project_gate (
                                gate_id,
                                project_id,
                                gate_code,
                                gate_start_date,
                                gate_end_date,
                                
                                CreateID,
                                Creator,
                                CreateDate,
                                del_flag)
                                values
                                ('{screenGateId}',
                                '{screenProjectId}',
                                '{screenGateCode}',
                                '{screenGateStartDate}',
                                '{screenGateEndDate}',
                                
                                '{CreateID}',
                                '{Creator}',
                                GETDATE(),
                                '{delflag}'
                                )";
                                var sccGate = repository.DapperContext.ExcuteNonQuery(sqlGate, null);
                                if (changed==false)
                                {
                                    changed = true;
                                }
                            }
                            else//修改
                            {
                                var oldGateId = str1.gate_id.ToString();
                                var oldPid = str1.project_id.ToString();
                                var oldGateCode = str1.gate_code.ToString();
                                var oldGateStartDate = str1.gate_start_date.ToString();
                                var oldGateEndDate = str1.gate_end_date.ToString();
                                string oldVersion = "";
                               // if (str1.version!=null)
                               // {
                                    oldVersion = str1.version.ToString();
                                //}
                                

                                if ((screen["gate_start_date"].ToString() != str1.gate_start_date.ToString())|| (screen["gate_end_date"].ToString() != str1.gate_end_date.ToString())||(screen["gate_code"].ToString() != str1.gate_code.ToString()))
                                {
                                    actype = "modify";
                                    delflag = "0";
                                    gateModList.Add(oldGateId);
                                    if (oldVersion != "")
                                    {
                                        string sqlGateHis = $@"insert into cmc_pdms_project_gate_his (
                                        gate_his_id,
                                        gate_id,
                                        project_id,
                                        gate_code,
                                        gate_start_date,
                                        gate_end_date,
                                        version,
                                        action_type)
                                        values
                                        (NEWID(),
                                        '{oldGateId}',
                                        '{oldPid}',
                                        '{oldGateCode}',
                                        '{oldGateStartDate}',
                                        '{oldGateEndDate}',
                                        '{oldVersion}',
                                        '{actype}'
                                    )";
                                        var sccGateHis = repository.DapperContext.ExcuteNonQuery(sqlGateHis, null);
                                    }

                                    string sqlGate = $@"UPDATE cmc_pdms_project_gate set gate_code='{screenGateCode}', gate_start_date='{screenGateStartDate}', gate_end_date='{screenGateEndDate}' WHERE gate_id='{screenGateId}'";
                                    var sccGate = repository.DapperContext.ExcuteNonQuery(sqlGate, null);
                                    if (changed == false)
                                    {
                                        changed = true;
                                    }
                                }


                            }

                        }

                        foreach (var a in addset)
                        {
                            
                            var str2 = pageGateData.Where(x => x["gate_id"].ToString() == a.gate_id.ToString()).FirstOrDefault();
                            var oldGateId = a.gate_id.ToString();
                            var oldPid = a.project_id.ToString();
                            var oldGateCode = a.gate_code.ToString();
                            var oldGateStartDate = a.gate_start_date.ToString();
                            var oldGateEndDate = a.gate_end_date.ToString();
                            var oldVersion = a.version.ToString();
                            if (str2 == null)//刪除
                            {
                                actype = "delete";                                
                                string delHis = $@"insert into cmc_pdms_project_gate_his (
                                        gate_his_id,
                                        gate_id,
                                        project_id,
                                        gate_code,
                                        gate_start_date,
                                        gate_end_date,
                                        version,
                                        action_type)
                                        values
                                        (NEWID(),
                                        '{oldGateId}',
                                        '{oldPid}',
                                        '{oldGateCode}',
                                        '{oldGateStartDate}',
                                        '{oldGateEndDate}',
                                        '{oldVersion}',
                                        '{actype}'
                                    )";
                                var sccDelGateHis = repository.DapperContext.ExcuteNonQuery(delHis, null);

                                string delStr = $@"DELETE FROM cmc_pdms_project_gate WHERE gate_id='{oldGateId}'";
                                var sccDelGate = repository.DapperContext.ExcuteNonQuery(delStr, null);
                                if (changed == false)
                                {
                                    changed = true;
                                }
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改前的裝箱 cmc_common_task_template_set 表，cmc_common_task_templateService 文件-->" + DateTime.Now + ":" + ex.Message);
                    }


                }
                
                if (changed)//如果有改動就改狀態為03調整中
                {
                    string adjustStatusStr = $@"UPDATE cmc_pdms_project_main  set release_status='03' WHERE project_id='{pid}'";
                    var adjustStatus = repository.DapperContext.ExcuteNonQuery(adjustStatusStr, null);
                }

            }
            else
            {
                return _cmc_pdms_project_mainService.Update(saveModel);
            }

            return  webResponse.OK();
        }
        //public override WebResponseContent Del(object[] keys, bool delList = true)
        //{
        //    return _cmc_pdms_project_mainService.Del(keys, delList);
        //}

        public WebResponseContent saveRelease(SaveModel saveModel)
        {//保存並發佈
            var mains = saveModel;

            var info = new WebResponseContent();
            var glno = saveModel.MainData["glno"].ToString();
            var isRep = isGlnoRepeated(glno);
          
                if (!saveModel.MainData.ContainsKey("project_id"))
                {
                    saveModel.MainData.Add("project_id", "");
                }
            if (!saveModel.MainData.ContainsKey("release_status"))
            {
                saveModel.MainData.Add("release_status", null);
            }


            string project_id = saveModel.MainData["project_id"].ToString();
            string selectreleaseStatus = "";
            var getReleaseStatus = "";
            List<cmc_pdms_project_main> presult = new List<cmc_pdms_project_main>();
            if (!string.IsNullOrEmpty(project_id)) //project_id有值
            {
                selectreleaseStatus = $@"SELECT main.release_status FROM cmc_pdms_project_main main WHERE project_id= '{project_id}'";
                presult = _repository.DapperContext.QueryList<cmc_pdms_project_main>(selectreleaseStatus, null);
                getReleaseStatus = presult[0].release_status;
                string orgStr = $@"SELECT * FROM cmc_pdms_project_org WHERE project_id= '{project_id}'";
                List<cmc_pdms_project_org> orgOld = _repository.DapperContext.QueryList<cmc_pdms_project_org>(orgStr, null);
                var orgNow = saveModel.Details[1].Data;

                if (orgOld.Count > 2)
                {
                    orgNow.Clear();
                }
            }
            




            string newVersionStr = $@"SELECT REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR, GETDATE(), 120), '-', ''), ':', ''), ' ', ''), ',', '') AS current_datetime;";
                var newVersion = repository.DapperContext.ExecuteScalar(newVersionStr, null);
                var gateDates = saveModel.Details[0].Data;//獲取當前頁面大日程數據

                if (string.IsNullOrEmpty(project_id))
                {//第一次新增時直接保存並發佈
                    if (isRep != 0)
                    {
                        return webResponse.Error("專案編號不可重複!");
                    }
                    saveModel.MainData["release_status"] = "02";
                    saveModel.MainData["project_status"] = "01";
                    gateDates.ForEach(x =>
                    {
                        x["version"] = newVersion.ToString();
                    });

                    info = _cmc_pdms_project_mainService.Add(saveModel);
                }
                else if (getReleaseStatus == "01")
                {
                    saveModel.MainData["release_status"] = "02";
                    gateDates.ForEach(x =>
                    {
                        x["version"] = newVersion.ToString();
                    });
                    info = _cmc_pdms_project_mainService.Update(saveModel);
                }
                else {//修改後保存並發佈

                    // saveModel.Details[0]["version"] = newVersion;
                    Guid projectID = Guid.Parse(saveModel.MainData["project_id"].ToString());
                    var projectStatus = saveModel.MainData["project_status"].ToString();


                    //獲取變更前的大日程數據
                    var oldGates = repository.DbContext.Set<cmc_pdms_project_gate>().Where(x => x.project_id == projectID).ToList();

                    List<cmc_pdms_project_gate_his> gateHis = new List<cmc_pdms_project_gate_his>();

                //將格式轉換成list實體類格式
                var newDateList = JsonConvert.DeserializeObject<List<cmc_pdms_project_gate_his>>(JsonConvert.SerializeObject(gateDates));
                    if (saveModel.MainData["release_status"]!="02")
                    {
                        saveModel.MainData["release_status"] = "02";//狀態設為發佈    
                    }
                    
                    gateDates.ForEach(date =>
                    {
                        cmc_pdms_project_gate_his his = new cmc_pdms_project_gate_his();
                        
                        if (!date.ContainsKey("gate_id")|| date["version"]==null)
                        {//若為新增加上版本號
                            date["version"] = newVersion.ToString();
                            his.gate_his_id = Guid.NewGuid();
                            his.project_id = projectID;
                            his.gate_id = Guid.NewGuid();
                            his.gate_code = date["gate_code"].ToString();
                            his.gate_start_date = Convert.ToDateTime(date["gate_start_date"]);
                            his.gate_end_date = Convert.ToDateTime(date["gate_end_date"]);
                            his.version = newVersion.ToString();
                            his.action_type = "add";
                            gateHis.Add(his);
                            
                        }
                        else {
                            var oldGate = oldGates.Where(x => x.gate_id == Guid.Parse(date["gate_id"].ToString())).FirstOrDefault();//獲取變更前對應的大日程
                            if (!oldGate.IsNullOrEmpty())
                            {
                                if ((date["gate_start_date"].ToString() != oldGate.gate_start_date.ToString()) || (date["gate_end_date"].ToString() != oldGate.gate_end_date.ToString()) || (date["gate_code"].ToString() != oldGate.gate_code.ToString()))
                                {//若為修改變更版本號

                                    his.gate_his_id = Guid.NewGuid();
                                    his.project_id = oldGate.project_id;
                                    his.gate_id = oldGate.gate_id;
                                    his.gate_code = oldGate.gate_code;
                                    his.gate_start_date = oldGate.gate_start_date;
                                    his.gate_end_date = oldGate.gate_end_date;
                                    his.version = oldGate.version;
                                    his.action_type = "modify";
                                    gateHis.Add(his);

                                    date["version"] = newVersion.ToString();
                                }
                            }
                        }
                    });

                    //info = _cmc_pdms_project_mainService.Update(saveModel);//更新保存數據


                    
                    try
                    {

                        foreach (var gateDate in gateDates)//循環頁面大日程數據
                        {
                            cmc_pdms_project_gate_his his = new cmc_pdms_project_gate_his();

                            if (!gateDate.ContainsKey("gate_id") || gateDate["gate_id"].ToString().IndexOf("0000") >= 0)//明細中不存在gate_id字段，則該大日程為新增
                            {
                                var gateCode = gateDate["gate_code"].ToString();
                                cmc_pdms_project_gate gate = repository.DbContext.Set<cmc_pdms_project_gate>().Where(x => x.gate_code == gateCode && x.project_id == projectID).FirstOrDefault();
                                //將數據寫入歷史表
                                //his.gate_his_id = Guid.NewGuid();
                                //his.project_id = gate.project_id;
                                //his.gate_id = gate.gate_id;
                                //his.gate_code = gate.gate_code;
                                //his.gate_start_date = gate.gate_start_date;
                                //his.gate_end_date = gate.gate_end_date;
                                //his.version = newVersion.ToString();
                                //his.action_type = "add";
                                //gateHis.Add(his);
                            }
                            else
                            {//明細表中存在date_id字段，判斷大日程是否修改

                                var oldGate = oldGates.Where(x => x.gate_id == Guid.Parse(gateDate["gate_id"].ToString())).FirstOrDefault();//獲取變更前對應的大日程
                                if (!oldGate.IsNullOrEmpty()) {
                                    if ((gateDate["gate_start_date"].ToString() != oldGate.gate_start_date.ToString()) || (gateDate["gate_end_date"].ToString() != oldGate.gate_end_date.ToString()) || (gateDate["gate_code"].ToString() != oldGate.gate_code.ToString()))
                                    { //存在變更，將變更寫入歷史表
                                        //his.gate_his_id = Guid.NewGuid();
                                        //his.project_id = Guid.Parse(oldGate.project_id.ToString());
                                        //his.gate_id = Guid.Parse(oldGate.gate_id.ToString());
                                        //his.gate_code = oldGate.gate_code.ToString();
                                        //his.gate_start_date = Convert.ToDateTime(oldGate.gate_start_date.ToString());
                                        //his.gate_end_date = Convert.ToDateTime(oldGate.gate_end_date.ToString());
                                        //his.version = oldGate.version.ToString();
                                        //his.action_type = "modify";
                                        //gateHis.Add(his);
                                    }
                                }

                            }

                        }
                        foreach (var oldGateDate in oldGates) { //循環修改前的大日程數據
                            cmc_pdms_project_gate_his his = new cmc_pdms_project_gate_his();
                            var oldGate = newDateList.Where(x => x.gate_id == Guid.Parse(oldGateDate.gate_id.ToString())).FirstOrDefault();//查詢大日程是否存在新的列表中

                            if (oldGate == null)
                            {
                                his.gate_his_id = Guid.NewGuid();
                                his.project_id = Guid.Parse(oldGateDate.project_id.ToString());
                                his.gate_id = Guid.Parse(oldGateDate.gate_id.ToString());
                                his.gate_code = oldGateDate.gate_code.ToString();
                                his.gate_start_date = Convert.ToDateTime(oldGateDate.gate_start_date.ToString());
                                his.gate_end_date = Convert.ToDateTime(oldGateDate.gate_end_date.ToString());
                                his.version = oldGateDate.version.ToString();
                                his.action_type = "delete";
                                gateHis.Add(his);
                            }

                        }

                    }
                    catch (Exception ex)
                    {
                        Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "保存並發佈前装箱 cmc_pdms_project_gate_his 表，cmc_pdms_project_gate_his 文件-->foreach：" + DateTime.Now + ":" + ex.Message);

                        return webResponse.Error(ex.Message);
                    }

                    try
                    {
                        if (gateHis.Count != 0) {
                            repository.DapperContext.BeginTransaction((r) =>
                            {
                                DBServerProvider.SqlDapper.BulkInsert(gateHis, "cmc_pdms_project_gate_his");
                                return true;
                            }, (ex) => { throw new Exception(ex.Message); });
                        }
                        info = _cmc_pdms_project_mainService.Update(saveModel);//更新保存數據
                    }
                    catch (Exception ex)
                    {
                        Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量新增執行 cmc_pdms_project_gate_his 表，cmc_pdms_project_gate_his 文件-->UpdateRange：" + DateTime.Now + ":" + ex.Message);

                        return webResponse.Error();
                    }

                }

           // return info;
            return webResponse.OK();
        }



            public WebResponseContent release(SaveModel saveModel)
        {
            //UserInfo userList = UserContext.Current.UserInfo;
            //var CreateID = userList.User_Id;
            //var Creator = userList.UserTrueName;
            var pid = saveModel.DetailData[0]["project_id"].ToString();
            string gateId = "";
            //List<cmc_pdms_project_gate> gateList = new List<cmc_pdms_project_gate>();

            string selectSet = $@"SELECT * FROM cmc_pdms_project_gate WHERE project_id= '{pid}'";
            List<cmc_pdms_project_gate> addset = _repository.DapperContext.QueryList<cmc_pdms_project_gate>(selectSet, null);

            //初始化大日程版本
            string newVersionStr = $@"SELECT REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR, GETDATE(), 120), '-', ''), ':', ''), ' ', ''), ',', '') AS current_datetime;";
            var newVersion = repository.DapperContext.ExecuteScalar(newVersionStr, null);
            string newGateVersion = $@"UPDATE cmc_pdms_project_gate  set version='{newVersion}' WHERE project_id='{pid}'";
            

            //改專案發佈狀態為已發佈02
            string releaseStatus = $@"UPDATE cmc_pdms_project_main  set release_status='02' WHERE project_id='{pid}'";
            

            string selectreleaseStatus = $@"SELECT main.release_status FROM cmc_pdms_project_main main WHERE project_id= '{pid}'";
            List<cmc_pdms_project_main> result = _repository.DapperContext.QueryList<cmc_pdms_project_main>(selectreleaseStatus, null);
            var reStatus = result[0].release_status;
            if (reStatus == "01")
            {
                var succReleaseStatus = repository.DapperContext.ExcuteNonQuery(releaseStatus, null);
                var succGate = repository.DapperContext.ExcuteNonQuery(newGateVersion, null);
            }else 
            {
                if (reStatus != "02")
                {
                    var succReleaseStatus = repository.DapperContext.ExcuteNonQuery(releaseStatus, null);//發布狀態改發布02
                }                    
                foreach (var m in gateModList) //版本給新的
                {                      
                    gateId = m;
                    string updateGateVersion = $@"UPDATE cmc_pdms_project_gate  set version='{newVersion}' WHERE gate_id='{gateId}'";
                    var succUpGateVersion = repository.DapperContext.ExcuteNonQuery(updateGateVersion, null);
                }
                
            }

            return webResponse.OK();
        }

        public override WebResponseContent DownLoadTemplate()
        {
            return _cmc_pdms_project_eplService.DownLoadTemplateByFlag("1");
        }

        public override WebResponseContent Upload(List<IFormFile> files)
        {
            string project_id = Core.Utilities.HttpContext.Current.Request("project_id");
            return _cmc_pdms_project_eplService.UploadEpl(files, "1", project_id);
        }

        public override PageGridData<view_cmc_project_pm> GetPageData(PageDataOptions options)
        {
            string project_name = "";
            string glno = "";
            string project_type = "";
            string project_status = "";
            string path = "";
            string departMentCode = "";
            string userCode = "";
            string where = " ";
            UserInfo userInfo = UserContext.Current.UserInfo;
            departMentCode = userInfo.DepartmentCode;
            userCode = userInfo.user_code;
           int  userId = userInfo.User_Id;
            List<SearchParameters> searchParametersList = new List<SearchParameters>();
            if (!string.IsNullOrEmpty(options.Wheres))
            {
                searchParametersList = options.Wheres.DeserializeObject<List<SearchParameters>>();
                if (searchParametersList != null && searchParametersList.Count > 0)
                {
                    foreach (SearchParameters sp in searchParametersList)
                    {
                        if (sp.Name.ToLower() == "project_name".ToLower())
                        {
                            project_name = sp.Value;
                            if (!string.IsNullOrEmpty(project_name))
                            {
                                where += " and pm.project_name like '%" + project_name + "%'";
                            }
                            continue;
                        }
                        if (sp.Name.ToLower() == "glno".ToLower())
                        {
                            glno = sp.Value;
                            if (!string.IsNullOrEmpty(glno))
                            {
                                where += " and pm.glno like '%" + glno + "%'";
                            }
                            continue;
                        }
                        if (sp.Name.ToLower() == "project_type".ToLower())
                        {
                            project_type = sp.Value;
                            if (!string.IsNullOrEmpty(project_type))
                            {
                                where += " and pm.project_type like '%" + project_type + "%'";
                            }
                            continue;
                        }
                        if (sp.Name.ToLower() == "project_status".ToLower())
                        {
                            project_status = sp.Value;
                            if (!string.IsNullOrEmpty(project_status))
                            {
                                where += " and pm.project_status='" + project_status + "'";
                            }
                            continue;
                        }
                        if (sp.Name.ToLower() == "path".ToLower())
                        {
                            path = sp.Value;
                            continue;
                        }
                    }
                }

            }
            QuerySql = @" SELECT distinct pm.project_id,pm.entity,pm.glno,pm.project_name,pm.project_type,pm.project_reg_date,pm.start_date,
	                        pm.end_date,pm.project_gate_date,pm.project_budget,pm.project_purpose,pm.project_describe,pm.project_status,
	                        pm.release_status,pm.model_type,pm.model_year, pm.model_dest,pm.epl_load_date,
                            ( SELECT MAX ( version ) FROM cmc_pdms_project_gate WHERE project_id = pm.project_id GROUP BY project_id ) AS version ,
	                        pm.CreateID,pm.Creator,pm.CreateDate,pm.ModifyID,pm.Modifier,pm.ModifyDate,pm.eo_fee  
                        FROM cmc_pdms_project_main AS pm  ";
	                      

                if (path == "/view_cmc_project_pm")//
            {
                string code = " and  pm.CreateID='" + userId + "'";
                QuerySql += " LEFT OUTER JOIN cmc_pdms_project_org AS po ON pm.project_id= po.project_id where 1=1  ";
                QuerySql += code;
                QuerySql += where;
            }
            if (path == "/view_cmc_project_start")
            { //專案啟動部車型窗口查詢
                string code = " and  po.user_id='" + userCode + "'";
                QuerySql += " LEFT OUTER JOIN cmc_pdms_project_org AS po ON pm.project_id= po.project_id where 1=1  ";
                QuerySql += code;
                QuerySql += where;

            }
            if (path == "/view_cmc_project_group_start")
            { //專案啟動組車型窗口查詢
                string groupCode = " and  epl.group_code='" + departMentCode + "'";
                QuerySql += " left  join cmc_pdms_project_epl epl on epl.project_id=pm.project_id  where 1=1 ";
                QuerySql += groupCode;
                QuerySql += where;

            }
            if (path == "/view_cmc_project_book")
            { //開發清冊
                string devTaker = " and  epl.dev_taker_id='" + userId + "'";
                QuerySql += "  LEFT OUTER JOIN cmc_pdms_project_epl AS epl ON pm.project_id= epl.project_id where 1=1 ";
                if (userId!=1)
                {
                    QuerySql += devTaker;
                }                
                QuerySql += where;
            }

            return base.GetPageData(options);
        }



       public WebResponseContent getProjectInfoFromCMS(string glno)
        {
            view_cmc_project_pm pm=new view_cmc_project_pm();
            if(!string.IsNullOrEmpty(glno))
            {
                if (glno == "GL123456")
                {
                    return webResponse.Error("查询不到信息");
                }
                pm.project_name= "專案名稱"+new Random().Next(100, 999);
                pm.start_date= DateTime.Now;
                pm.end_date= DateTime.Now;
                return webResponse.OKData(pm);
            }
            else
            {
                return webResponse.Error("请输入GLNO");
            }

            return webResponse.OK("");
        }

        public WebResponseContent getEPLFromCMS(string proid)
        {
            return _cmc_pdms_project_eplService.getEPLFromCMS(proid);
        }

        public WebResponseContent getProjectOrgFromCMS(string glno)
        {
            List < cmc_pdms_project_org > list=new List<cmc_pdms_project_org>();
            if (!string.IsNullOrEmpty(glno))
            {
                if (glno == "GL123456")
                {
                    return webResponse.Error("查询不到信息");
                }
                cmc_pdms_project_org org=new cmc_pdms_project_org();
                org.org_code = "D157";
                org.upg_id = "956125";
                org.user_id = "201995";
                org.user_name = "鄧宇柯";
                org.user_role_id = "A1551";
                org.user_role_name = "系統工程師ss1200";

                cmc_pdms_project_org org1 = new cmc_pdms_project_org();
                org1.org_code = "D148";
                org1.upg_id = "956125";
                org1.user_id = "775928";
                org1.user_name = "林敏男";
                org1.user_role_id = "A2582";
                org1.user_role_name = "系統工程師ss1200";
                list.Add(org1);
                list.Add(org);
                return webResponse.OKData(list);
            }
            else
            {
                return webResponse.Error("请输入GLNO");
            }

            return webResponse.OK("");
        }


        public int isCompletion(Object obj)//結案判斷
        {
            int count = 0;
            var data = JObject.Parse(obj.ToString());
            var projectId = data["projectId"].ToString();
          
            string sql = $@"select  count(*) from cmc_pdms_project_main main 
							left  join cmc_pdms_project_epl epl on epl.project_id=main.project_id
							left join cmc_pdms_project_task task on task.epl_id= epl.epl_id
							where (task.task_completion!=100 or task.task_completion is null ) and main.project_id='" + projectId + "'";

            count = Convert.ToInt32(repository.DapperContext.ExecuteScalar(sql, null));
            return count;
        }

    }


}
