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

        public override WebResponseContent Add(SaveModel saveDataModel)
        {
            // 在保存数据库前的操作，所有数据都验证通过了，这一步执行完就执行数据库保存

            //把畫面上數據都寫入數據庫
            var info = _cmc_pdms_project_mainService.Add(saveDataModel);
            
            //獲取專案project_id
            var glno = saveDataModel.MainData["glno"].ToString();
            string selectstr1 = $@"SELECT project_id FROM cmc_pdms_project_main WHERE glno= '{glno}'";
            List<cmc_pdms_project_main> pidResult = _repository.DapperContext.QueryList<cmc_pdms_project_main>(selectstr1, null);
            var pid = pidResult[0].project_id;

            //改專案 發佈狀態 為草稿01
            string releaseStatus = $@"UPDATE cmc_pdms_project_main  set release_status='01' WHERE project_id='{pid}'";
            var succReleaseStatus = repository.DapperContext.ExcuteNonQuery(releaseStatus, null);
            
            return info;
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
                                screenGateVersion = screen["version"].ToString();
                            }
                            else
                            {
                                screenGateVersion = newVersion.ToString();
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
                                version,
                                action_type)
                                values
                                (NEWID(),
                                '{screenGateId}',
                                '{screenProjectId}',
                                '{screenGateCode}',
                                '{screenGateStartDate}',
                                '{screenGateEndDate}',
                                '{screenGateVersion}',
                                '{actype}'
                                )";
                                var sccGateHis = repository.DapperContext.ExcuteNonQuery(sqlGateHis, null);                                
                                //var screenGateId = screen["gate_id"].ToString();
                                string sqlGate = $@"insert into cmc_pdms_project_gate (
                                gate_id,
                                project_id,
                                gate_code,
                                gate_start_date,
                                gate_end_date,
                                version,
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
                                '{screenGateVersion}',
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
                                var oldVersion = str1.version.ToString();

                                if ((screen["gate_start_date"].ToString() != str1.gate_start_date.ToString())|| (screen["gate_end_date"].ToString() != str1.gate_end_date.ToString()))
                                {
                                    actype = "modify";
                                    delflag = "0";
                                    gateModList.Add(oldGateId);
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

            if (path == "/view_cmc_project_pm")//
            {
                QuerySql = @" SELECT  pm.project_id,pm.entity,pm.glno,pm.project_name,pm.project_type,pm.project_reg_date,pm.start_date,
	                            pm.end_date,pm.project_gate_date,pm.project_budget,pm.project_purpose,pm.project_describe,pm.project_status,
	                            pm.release_status,pm.model_type,pm.model_year, pm.model_dest,pm.epl_load_date,
                                ( SELECT MAX ( version ) FROM cmc_pdms_project_gate WHERE project_id = pm.project_id GROUP BY project_id ) AS version ,
	                            pm.CreateID,pm.Creator,pm.CreateDate,pm.ModifyID,pm.Modifier,pm.ModifyDate 
                            FROM cmc_pdms_project_main AS pm
	                        LEFT OUTER JOIN cmc_pdms_project_org AS po ON pm.project_id= po.project_id where 1=1  ";
                QuerySql += where;
            }
            if (path == "/view_cmc_project_start")
            { //專案啟動部車型窗口查詢
                string code = " and  po.user_id='" + userCode + "'";
                QuerySql = @" SELECT distinct pm.project_id,pm.entity,pm.glno,pm.project_name,pm.project_type,pm.project_reg_date,pm.start_date,
	                            pm.end_date,pm.project_gate_date,pm.project_budget,pm.project_purpose,pm.project_describe,pm.project_status,
	                            pm.release_status,pm.model_type,pm.model_year, pm.model_dest,pm.epl_load_date,
                                ( SELECT MAX ( version ) FROM cmc_pdms_project_gate WHERE project_id = pm.project_id GROUP BY project_id ) AS version ,
	                            pm.CreateID,pm.Creator,pm.CreateDate,pm.ModifyID,pm.Modifier,pm.ModifyDate 
                            FROM cmc_pdms_project_main AS pm
	                        LEFT OUTER JOIN cmc_pdms_project_org AS po ON pm.project_id= po.project_id where 1=1  
                        ";
                QuerySql += code;
                QuerySql += where;

            }
            if (path == "/view_cmc_project_group_start")
            { //專案啟動組車型窗口查詢
                string orgCode = " and  epl.group_code='" + departMentCode + "'";
                QuerySql = @"  SELECT  distinct pm.project_id,pm.entity,pm.glno,pm.project_name,pm.project_type,pm.project_reg_date,pm.start_date,
	                            pm.end_date,pm.project_gate_date,pm.project_budget,pm.project_purpose,pm.project_describe,pm.project_status,
	                            pm.release_status,pm.model_type,pm.model_year, pm.model_dest,pm.epl_load_date,
                                ( SELECT MAX ( version ) FROM cmc_pdms_project_gate WHERE project_id = pm.project_id GROUP BY project_id ) AS version ,
	                            pm.CreateID,pm.Creator,pm.CreateDate,pm.ModifyID,pm.Modifier,pm.ModifyDate 
                            FROM cmc_pdms_project_main AS pm
	                         left  join cmc_pdms_project_epl epl on epl.project_id=pm.project_id  where 1=1 
                        ";
                QuerySql += orgCode;
                QuerySql += where;

            }
            if (path == "/view_cmc_project_book")
            { //開發清冊
                string devTaker = " and  epl.dev_taker_id='" + userId + "'";
                QuerySql = @"  SELECT distinct pm.project_id,pm.entity,pm.glno,pm.project_name,pm.project_type,pm.project_reg_date,pm.start_date,
	                            pm.end_date,pm.project_gate_date,pm.project_budget,pm.project_purpose,pm.project_describe,pm.project_status,
	                            pm.release_status,pm.model_type,pm.model_year, pm.model_dest,pm.epl_load_date,
                                ( SELECT MAX ( version ) FROM cmc_pdms_project_gate WHERE project_id = pm.project_id GROUP BY project_id ) AS version ,
	                            pm.CreateID,pm.Creator,pm.CreateDate,pm.ModifyID,pm.Modifier,pm.ModifyDate 
                            FROM cmc_pdms_project_main AS pm
	                        LEFT OUTER JOIN cmc_pdms_project_epl AS epl ON pm.project_id= epl.project_id where 1=1 
                        ";
                QuerySql += devTaker;
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
                org.user_role_name = "系統工程師";

                cmc_pdms_project_org org1 = new cmc_pdms_project_org();
                org1.org_code = "D148";
                org1.upg_id = "956125";
                org1.user_id = "775928";
                org1.user_name = "林敏男";
                org1.user_role_id = "A2582";
                org1.user_role_name = "系統工程師";
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
    }


}
