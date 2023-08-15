/*
 *所有关于cmc_pdms_project_epl类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*cmc_pdms_project_eplService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using PDMS.Core.DBManager;
using OfficeOpenXml.FormulaParsing.Excel.Functions.Math;
using Microsoft.AspNetCore.Mvc.RazorPages;
using PDMS.Core.ManageUser;
using Newtonsoft.Json.Linq;
using OfficeOpenXml.ConditionalFormatting;
using Newtonsoft.Json;
using System.Collections.Generic;
using OfficeOpenXml.FormulaParsing.Excel.Functions.Text;
using System.Reflection;
using System;
using OfficeOpenXml.FormulaParsing.Excel.Functions.DateTime;
using System.Security.Cryptography;

namespace PDMS.Project.Services
{
    public partial class cmc_pdms_project_eplService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Icmc_pdms_project_eplRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public cmc_pdms_project_eplService(
            Icmc_pdms_project_eplRepository dbRepository,
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

        public override WebResponseContent Update(SaveModel saveModel)
        {
            var MainDatas = saveModel.MainDatas;
            var Extra = saveModel.Extra;
            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            if (MainDatas.Count != 0)
            {
                try
                {
                    foreach (var item in MainDatas)
                    {
                        cmc_pdms_project_epl epl = new cmc_pdms_project_epl();
                        epl = repository.DbContext.Set<cmc_pdms_project_epl>().Where(x => x.epl_id == Guid.Parse(item["epl_id"].ToString())).FirstOrDefault();

                        if (epl != null)
                        {
                            if (Extra.Equal("/view_cmc_project_epl_group"))
                            {//組窗口保存操作
                                epl.dev_taker_id = item["dev_taker_id"] == null ? null : item["dev_taker_id"].ToInt();

                            }
                            else
                            {//部車型窗口保存操作
                                if (item["org_code"] != null && item["org_code"].ToString() == item["new_org_code"].ToString())
                                {//變更kd、組別、繼承件號或者部門變回原部門
                                    epl.kd_type = item["kd_type"] == null ? "" : item["kd_type"].ToString();
                                    epl.new_org_code = item["new_org_code"] == null ? "" : item["new_org_code"].ToString();
                                    epl.group_code = item["group_code"] == null ? "" : item["group_code"].ToString();
                                    epl.original_part_no = item["original_part_no"] == null ? "" : item["original_part_no"].ToString();
                                    epl.submit_status = "0";
                                    epl.org_change_approve_status = item["org_change_approve_status"] == null ? "" : item["org_change_approve_status"].ToString();
                                }
                                else
                                {//變更了部門
                                    epl.kd_type = item["kd_type"] == null ? "" : item["kd_type"].ToString();
                                    epl.group_code = item["group_code"] == null ? "" : item["group_code"].ToString();
                                    epl.new_org_code = item["new_org_code"] == null ? "" : item["new_org_code"].ToString();
                                    epl.original_part_no = item["original_part_no"] == null ? "" : item["original_part_no"].ToString();
                                    epl.submit_status = "0";
                                    epl.org_change_approve_status = "00";
                                }
                            }


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
                    if (Extra.Equal("/view_cmc_project_epl_group"))
                    {
                        repository.DapperContext.BeginTransaction((r) =>
                        {
                            DBServerProvider.SqlDapper.UpdateRange(eplList, x => new { x.dev_taker_id });
                            return true;
                        }, (ex) => { throw new Exception(ex.Message); });
                    }
                    else
                    {
                        repository.DapperContext.BeginTransaction((r) =>
                        {
                            DBServerProvider.SqlDapper.UpdateRange(eplList, x => new { x.kd_type, x.group_code, x.new_org_code, x.original_part_no, x.submit_status, x.org_change_approve_status });
                            return true;
                        }, (ex) => { throw new Exception(ex.Message); });
                    }



                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改執行 cmc_pdms_project_epl 表，cmc_pdms_project_eplService 文件-->UpdateRange：" + DateTime.Now + ":" + ex.Message);

                    return ResponseContent.Error();
                }

            }
            return ResponseContent.OK();

        }


        public WebResponseContent saveAll(Object obj)//根據查詢結果進行批量維護
        {
            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            List<cmc_pdms_project_epl> eplLists = new List<cmc_pdms_project_epl>();
            var data = JObject.Parse(obj.ToString());
            var projectId = data["projectId"].ToString();
            var path = data["path"].ToString();
            var kdType = data["kdType"] == null ? "" : data["kdType"].ToString();
            var orgCode = data["orgCode"] == null ? "" : data["orgCode"].ToString();
            var groupCode = data["groupCode"] == null ? "" : data["groupCode"].ToString();
            var devTaker = data["devTaker"]?.ToInt();
            eplLists = getEpl(obj);

            if (eplLists.Count != 0)
            {
                try
                {
                    foreach (var item in eplLists)
                    {
                        cmc_pdms_project_epl epl = new cmc_pdms_project_epl();
                        epl = repository.DbContext.Set<cmc_pdms_project_epl>().Where(x => x.epl_id == Guid.Parse(item.epl_id.ToString())).FirstOrDefault();

                        if (epl != null)
                        {
                            if (path.Equal("/view_cmc_project_epl_group"))
                            {//組窗口保存操作
                                epl.dev_taker_id = devTaker;

                            }
                            if (path.Equal("/view_cmc_project_epl") || path.Equal("/view_cmc_project_epl_build"))
                            {//部車型窗口保存操作
                                if (item.org_code.ToString() == orgCode)
                                {
                                    epl.kd_type = kdType;
                                    epl.group_code = groupCode;
                                    epl.new_org_code = orgCode;
                                    epl.submit_status = "0";
                                    epl.org_change_approve_status = "02";
                                }
                                else
                                {
                                    epl.kd_type = kdType;
                                    epl.group_code = groupCode;
                                    epl.new_org_code = orgCode;
                                    epl.submit_status = "0";
                                    epl.org_change_approve_status = "00";
                                }
                            }

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
                    if (path.Equal("/view_cmc_project_epl_group"))
                    {
                        repository.DapperContext.BeginTransaction((r) =>
                        {
                            DBServerProvider.SqlDapper.UpdateRange(eplList, x => new { x.dev_taker_id });
                            return true;
                        }, (ex) => { throw new Exception(ex.Message); });
                    }
                    if (path.Equal("/view_cmc_project_epl") || path.Equal("/view_cmc_project_epl_build"))
                    {
                        repository.DapperContext.BeginTransaction((r) =>
                        {
                            DBServerProvider.SqlDapper.UpdateRange(eplList, x => new { x.kd_type, x.group_code, x.new_org_code, x.submit_status, x.org_change_approve_status });
                            return true;
                        }, (ex) => { throw new Exception(ex.Message); });
                    }
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改執行 cmc_pdms_project_epl 表，cmc_pdms_project_eplService 文件-->UpdateRange：" + DateTime.Now + ":" + ex.Message);

                    return ResponseContent.Error();
                }

            }
            return ResponseContent.OK();

        }


            public List<cmc_pdms_project_epl> getEpl(Object obj)//根據條件查詢epl
        {
            var data = JObject.Parse(obj.ToString());
            var projectId = data["projectId"].ToString();
            var path = data["path"] == null ? "" : data["path"].ToString();
            var upgId = data["upgId"] == null ? "" : data["upgId"].ToString();
            var partNo = data["partNo"] == null ? "" : data["partNo"].ToString();
            var submitStatus = data["submitStatus"] == null ? "" : data["submitStatus"].ToString();
            var projectStatus = data["projectStatus"] == null ? "" : data["projectStatus"].ToString();
            UserInfo userInfo = UserContext.Current.UserInfo;
            String departmentCode = userInfo.DepartmentCode;
            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();


            string where = "";
            if (!string.IsNullOrEmpty(projectId))
            {
                where += " and project_id='" + projectId + "'";
            }
            if (!string.IsNullOrEmpty(upgId))
            {
                where += " and upg_id like '%" + upgId + "%'";
            }
            if (!string.IsNullOrEmpty(partNo))
            {
                where += " and part_no like '%" + partNo + "%'";
            }
            if (!string.IsNullOrEmpty(submitStatus))
            {
                where += " and submit_status='" + submitStatus + "'";
            }

            if (path == "/view_cmc_project_epl" )
            {//專案部車型窗口
                string sql = "";
                if (projectStatus == "01")
                {//專案啟動
                    sql += @$"select  * from  cmc_pdms_project_epl where epl_phase='01' and action_type!='delete' and org_code='" + departmentCode + "'";
                }
                else {
                    sql += @$"select  * from  cmc_pdms_project_epl where epl_phase='02' and action_type!='delete' and org_code='" + departmentCode + "'";
                }
                sql += where;
                eplList = repository.DapperContext.QueryList<cmc_pdms_project_epl>(sql, null);
            }
            if (path == "/view_cmc_project_epl_group")
            {//組窗口維護
                string sql = "";
                if (projectStatus == "01")
                {
                     sql += @$"select  * from  cmc_pdms_project_epl where epl_phase='01' and action_type!='delete'  and group_code='" + departmentCode + "'";
                }
                else {
                    sql += @$"select  * from  cmc_pdms_project_epl where epl_phase='02' and action_type!='delete'  and group_code='" + departmentCode + "'";
                }
              
                sql += where;
                eplList = repository.DapperContext.QueryList<cmc_pdms_project_epl>(sql, null);
            }
            return eplList;
        }



        public WebResponseContent submit(SaveModel saveModel)
        {

            var MainDatas = saveModel.MainDatas;
            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            if (MainDatas.Count != 0)
            {
                try
                {
                    foreach (var item in MainDatas)
                    {
                        cmc_pdms_project_epl epl = new cmc_pdms_project_epl();
                        epl = repository.DbContext.Set<cmc_pdms_project_epl>().Where(x => x.epl_id == Guid.Parse(item["epl_id"].ToString())).FirstOrDefault();

                        if (epl != null)
                        {
                            if (epl.org_code == epl.new_org_code)
                            {
                                epl.submit_status = "1";
                                epl.org_change_approve_status = item["org_change_approve_status"] == null ? "" : item["org_change_approve_status"].ToString();
                            }
                            else
                            { //部門變更邏輯待完善
                                epl.submit_status = item["submit_status"] == null ? "" : item["submit_status"].ToString();
                                epl.org_change_approve_status = "01";
                            }
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
                        DBServerProvider.SqlDapper.UpdateRange(eplList, x => new { x.submit_status,x.org_change_approve_status });
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


        public WebResponseContent editEo(Guid project_id, String project_status, decimal new_eo_fee, decimal old_eo_fee)
        {//修改EO百分比，调整EO对应的数据
            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            List<cmc_pdms_project_epl> eplLists = new List<cmc_pdms_project_epl>();
            eplLists = getCostList(project_id, project_status);
            decimal newEoFee = new_eo_fee;
            decimal oldEoFee = old_eo_fee;

            if (eplLists.Count != 0)
            {
                try
                {
                    foreach (var item in eplLists)
                    {
                        cmc_pdms_project_epl epl = new cmc_pdms_project_epl();
                        epl = repository.DbContext.Set<cmc_pdms_project_epl>().Where(x => x.epl_id == Guid.Parse(item.epl_id.ToString())).FirstOrDefault();

                        if (epl != null)
                        {
                            if (epl.fs_1 != null && epl.fs_1 != 0)
                            {
                                //計算調整比例前EO設變費按照比例的數值
                                var eoCost = Math.Round(((Convert.ToDecimal(epl.fs_1) * oldEoFee) / 100), 2);
                                if (eoCost == epl.fs_3 || epl.fs_3.IsNullOrEmpty())
                                {//判斷EO設變費是否手動調整過，若手動調整過則不必根據新比例重新計算
                                    epl.fs_3 = Math.Round(((Convert.ToDecimal(epl.fs_1) * newEoFee) / 100), 2);
                                }
                            }
                        }
                        eplList.Add(epl);
                    }
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "調整EO百分比後批量修改EO設變費装箱  cmc_pdms_project_epl 表，cmc_pdms_project_eplService 文件：eplList：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }

                try
                {
                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.UpdateRange(eplList, x => new { x.fs_3 });
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "調整EO百分比後批量修改EO設變費装箱 cmc_pdms_project_epl 表，cmc_pdms_project_eplService 文件-->UpdateRange：" + DateTime.Now + ":" + ex.Message);

                    return ResponseContent.Error();
                }
            }

            return ResponseContent.OK();
        }
        public List<cmc_pdms_project_epl> getCostList(Guid project_id, String project_status)//根據條件查詢epl
        {


            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            string projectStatus = project_status;

            var projectId = project_id;

            string sql = "";
            if (projectStatus == "01")
            {//專案建立獲取開發清冊數據
                sql += @$"select  * from  cmc_pdms_project_epl where epl_phase='01' and project_id='" + projectId + "' and Final_version_status='2' and kd_type like 'D*%' ";
            }
            else
            {//專案啟動獲取開發清冊數據
                sql += @$"select  * from  cmc_pdms_project_epl where epl_phase='02' and project_id='" + projectId + "'  and Final_version_status='2'  and kd_type like 'D*%' ";
            }

            eplList = repository.DapperContext.QueryList<cmc_pdms_project_epl>(sql, null);

            return eplList;
        }


        public WebResponseContent addEpl(Guid project_id, String glno)
        {

            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            if (1 == 2)
            {//從plm系統抓取到數據做邏輯處理

            }
            else
            {//從plm系統未抓取到數據，取最終版的假版epl數據形成一個正式版epl
                var List = repository.DbContext.Set<cmc_pdms_project_epl>().Where(x => x.project_id == project_id && x.epl_phase == "01").ToList();
                foreach (var item in List)
                {
                    try
                    {
                        cmc_pdms_project_epl epl = new cmc_pdms_project_epl();
                        epl.epl_id = Guid.NewGuid();
                        epl.project_id = item.project_id;
                        epl.main_plan_id = item.main_plan_id;
                        epl.epl_source = item.epl_source;
                        epl.epl_phase = "02";
                        epl.upg_id = item.upg_id;
                        epl.level = item.level;
                        epl.part_no = item.part_no;
                        epl.part_name = item.part_name;
                        epl.company_code = item.company_code;
                        epl.kd_type = item.kd_type;
                        epl.org_code = item.org_code;
                        epl.new_org_code = item.new_org_code;
                        epl.group_code = item.group_code;
                        epl.dev_taker_id = item.dev_taker_id;
                        epl.part_taker_id = item.part_taker_id;
                        epl.fs_1 = item.fs_1;
                        epl.fs_2 = item.fs_2;
                        epl.fs_3 = item.fs_3;
                        epl.fs_remark = item.fs_remark;
                        epl.is_eo = item.is_eo;
                        epl.submit_status = item.submit_status;
                        epl.original_part_no = item.original_part_no;
                        epl.del_flag = item.del_flag;
                        epl.currency = item.currency;
                        epl.action_type = item.action_type;
                        eplList.Add(epl);
                    }
                    catch (Exception ex)
                    {
                        Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量新增前装箱 cmc_pdms_project_epl 表，cmc_pdms_project_eplService 文件-->foreach：" + DateTime.Now + ":" + ex.Message);

                        return ResponseContent.Error(ex.Message);
                    }

                }
            }

            try
            {
                repository.DapperContext.BeginTransaction((r) =>
                {
                    DBServerProvider.SqlDapper.BulkInsert(eplList, "cmc_pdms_project_epl");
                    return true;
                }, (ex) => { throw new Exception(ex.Message); });
            }
            catch (Exception ex)
            {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改執行 cmc_pdms_project_epl 表，cmc_pdms_project_eplService 文件-->UpdateRange：" + DateTime.Now + ":" + ex.Message);

                return ResponseContent.Error();
            }

            return ResponseContent.OK();
        }



        public  WebResponseContent DownLoadTemplateByFlag(string flag)
        {
            if (flag == "1")
            {//假EPL阶段
                DownLoadTemplateColumns = x => new { x.upg_id, x.level, x.part_no, x.part_name };
            }
            
            return base.DownLoadTemplate();
        }
        /// <summary>
        /// 上传epl
        /// </summary>
        /// <param name="files"></param>
        /// <param name="flag"></param>
        /// <param name="project_id"></param>
        /// <returns></returns>

        public WebResponseContent UploadEpl(List<IFormFile> files, string flag, string project_id)
        {
            if (flag == "1")//和模版下载设置一致
            {//假EPL阶段
                DownLoadTemplateColumns = x => new { x.upg_id, x.level, x.part_no, x.part_name };
            }
            //解析Excel中的数据
            WebResponseContent Response = ImportList(files);
            List<cmc_pdms_project_epl> list = Response.Data as List<cmc_pdms_project_epl>;
            return UploadEplVali(list, "1", project_id);           
        }
        public WebResponseContent getEPLFromCMS(string project_id)
        {
            DownLoadTemplateColumns = x => new { x.upg_id, x.level, x.part_no, x.part_name };
            List<cmc_pdms_project_epl> list = new List<cmc_pdms_project_epl>();
            //todo
            //通過接口查詢到數據,接口參數glno和date，返回的是base64的文件
            string filePath = "C:\\Source\\PDMS\\code\\code\\AEPL模版.xlsx";
            WebResponseContent Response=EPPlusHelper.ReadToDataTable<cmc_pdms_project_epl>(filePath, DownLoadTemplateColumns);
            list = Response.Data as List<cmc_pdms_project_epl>;

            return UploadEplVali(list, "2", project_id);
        }

        public string[] getKDByPartNO(string part_no)
        {
            string[] result= new string[2];
            
            result[0]="D*";
            result[1] = "廠商A";
            return result;
        }
        
        /// <summary>
        /// 處理EPL寫入邏輯
        /// </summary>
        /// <param name="list"></param>
        /// <param name="flag"></param>flag=1 假EPL手動上傳，flag=2 從成本系統取得epl ，flag=3 從PLM取得epl 
        /// <param name="project_id"></param>
        /// <returns></returns>
        public WebResponseContent UploadEplVali(List<cmc_pdms_project_epl> list, string flag, string project_id)
        {
           
            if (list!=null && list.Count > 0)
            {
                //查詢是否有舊數據，用於判斷是否需要寫曆史表
                string sqlExist = $@"select count(0) from cmc_pdms_project_epl where project_id='{project_id}'";
                object obj = _repository.DapperContext.ExecuteScalar(sqlExist, null);
             
                List<cmc_pdms_project_epl> addList = new List<cmc_pdms_project_epl>();
                List<cmc_pdms_project_epl> updateList = new List<cmc_pdms_project_epl>();
                DateTime now = DateTime.Now;
                List<string> strings = new List<string>();
                //查詢部門編碼
                List<string> upg_ids = new List<string>();
                //只获取upg_id集合
                var templist = list.Select(x => new { upg_id = x.upg_id }).ToList();
                //根据映射关系，获取到对应的值
                PropertyInfo[] PropertyList = templist[0].GetType().GetProperties();
                foreach (PropertyInfo item in PropertyList)
                {
                    string name = item.Name;
                    var thisvalue = templist.Select(p => p.GetType().GetProperty(name).GetValue(p))
                                    .Distinct().ToList();
                    upg_ids = JsonConvert.DeserializeObject<List<string>>(JsonConvert.SerializeObject(thisvalue));
                }
                string upgids = string.Join("','", upg_ids);
                string getDeptCode = $@"SELECT	DepartmentCode,UpgID from Sys_Department where UpgID IN ('{upgids}')";
                var temp = repository.DapperContext.QueryList<Sys_Department>(getDeptCode, null);

                //UpgID做KEY,Sys_Department做值
                //Dictionary<string, Sys_Department> dic = temp.ToDictionary(p => p.UpgID);

                foreach (cmc_pdms_project_epl epl in list)
                {
                    //臨時實體變量
                    cmc_pdms_project_epl tempEpl = new cmc_pdms_project_epl();
                    tempEpl = epl;
                    //设置数据状态：新增、删除、不变
                    var oldlist = repository.DbContext.Set<cmc_pdms_project_epl>().Where(x => x.part_no == epl.part_no && x.project_id == Guid.Parse(project_id) && x.del_flag == "0").OrderByDescending(x => x.CreateDate).FirstOrDefault();

                    //方案一
                    ////根据字典Key 取 Value
                    //Sys_Department entity = new Sys_Department();
                    //dic.TryGetValue(oldlist.upg_id, out entity);
                    ////根据upg_id 获取部门Code
                    //var DepartmentCode = entity.DepartmentCode;

                    //获取DepartmentCode 方案二
                    var DepartmentCode = temp.Where(x => x.UpgID == tempEpl.upg_id).FirstOrDefault() == null ? "" : temp.Where(x => x.UpgID == tempEpl.upg_id).FirstOrDefault().DepartmentCode;

                    if (oldlist == null)
                    {
                        tempEpl.epl_id = Guid.NewGuid();
                        strings.Add(tempEpl.epl_id.ToString());
                        tempEpl.CreateDate = now;
                        if (flag == "1")
                        {
                            tempEpl.epl_phase = "01";
                            tempEpl.epl_source = "01";//01：手工上傳；02：CMS；03：PLM
                        }
                        else if (flag == "2")
                        {
                            tempEpl.epl_phase = "01";
                            tempEpl.epl_source = "02";//01：手工上傳；02：CMS；03：PLM
                        }
                        else if (flag == "3")
                        {
                            tempEpl.epl_phase = "02";
                            tempEpl.epl_source = "03";
                        }
                        tempEpl.project_id = Guid.Parse(project_id);

                        tempEpl.action_type = "add";
                        tempEpl.del_flag = "0";

                        tempEpl.org_code = DepartmentCode;
                        tempEpl.new_org_code = DepartmentCode;
                        //TODO
                        //接口查询kd区分和厂商代码
                        string[] kds = getKDByPartNO(tempEpl.part_no);
                        if(kds!=null && kds.Length > 0)
                        {
                            tempEpl.kd_type = kds[0];
                            tempEpl.company_code= kds[1];
                        }

                        addList.Add(tempEpl);
                    }
                    else
                    {
                        //旧数据带入
                        tempEpl = JsonConvert.DeserializeObject<cmc_pdms_project_epl>(JsonConvert.SerializeObject(oldlist));
                        strings.Add(tempEpl.epl_id.ToString());
                        //如何判断是否修改？
                        tempEpl.action_type = "";//
                        updateList.Add(tempEpl);
                    }

                }
                //删除上一版本，把act_type=delete 的del_flag=1
                string deleteSQL = $@"UPDATE cmc_pdms_project_epl 
                                SET del_flag = 1 
                                WHERE
	                                project_id = '{project_id}' 
	                                AND action_type = 'delete' and del_flag='0'";
                try
                {
                    var count3 = repository.DapperContext.ExcuteNonQuery(deleteSQL, null);
                }
                catch (Exception ex)
                {

                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "假EPL上传 删除上个版本状态为delete的数据，cmc_pdms_project_eplService 文件：UploadEpl：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }


                try
                {
                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.BulkInsert(addList, "cmc_pdms_project_epl");
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }
                catch (Exception ex)
                {

                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "假EPL上传  批量写入cmc_pdms_project_epl 表，cmc_pdms_project_eplService 文件：UploadEpl：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }
                try
                {
                    if (updateList.Count > 0)
                    {
                        repository.DapperContext.BeginTransaction((r) =>
                        {
                            DBServerProvider.SqlDapper.UpdateRange(updateList, x => new { x.action_type });
                            return true;
                        }, (ex) => { throw new Exception(ex.Message); });
                    }

                }
                catch (Exception ex)
                {

                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "假EPL上传  批量更新cmc_pdms_project_epl 表，cmc_pdms_project_eplService 文件：UploadEpl：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }


                if (Convert.ToInt32(obj) > 0)
                {
                    string epls = string.Join("','", strings);
                    //
                    string updateAction = @$"UPDATE cmc_pdms_project_epl 
                                SET action_type = 'delete' 
                                WHERE project_id = '{project_id}' 
	                                and epl_id not IN ( '{epls}' ) and del_flag='0'";
                    try
                    {
                        var count = repository.DapperContext.ExcuteNonQuery(updateAction, null);
                    }
                    catch (Exception ex)
                    {

                        Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "假EPL上传  批量写入cmc_pdms_project_epl 表后更新action_type，cmc_pdms_project_eplService 文件：UploadEpl：" + DateTime.Now + ":" + ex.Message);
                        return ResponseContent.Error();
                    }


                    //写入历史表:data_source(具體含義參考數據字典配置)
                    string inserHis = $@"INSERT INTO  [dbo].[cmc_pdms_project_epl_his] ([epl_his_id],[epl_id], [project_id], [main_plan_id], [epl_source], [epl_phase], [epl_import_date], [upg_id], [level], [part_no], [part_name], [company_code], [kd_type], [org_code], [new_org_code], [group_code], [dev_taker_id], [part_taker_id], [fs_1], [fs_2], [fs_3], [fs_remark], [Final_version_status], [fs_approve_status], [task_define_approve_status], [org_change_approve_status], [gate_type], [is_eo], [original_part_no], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate], [del_flag], [currency], [submit_status], [action_type],[data_source])  
SELECT NEWID(),[epl_id], [project_id], [main_plan_id], [epl_source], [epl_phase], [epl_import_date], [upg_id], [level], [part_no], [part_name], [company_code], [kd_type], [org_code], [new_org_code], [group_code], [dev_taker_id], [part_taker_id], [fs_1], [fs_2], [fs_3], [fs_remark], [Final_version_status], [fs_approve_status], [task_define_approve_status], [org_change_approve_status], [gate_type], [is_eo], [original_part_no], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate], [del_flag], [currency], [submit_status], [action_type],'1' from cmc_pdms_project_epl where project_id = '{project_id}'   AND action_type IN ( 'add', 'modify', 'delete' ) and del_flag='0'";
                    try
                    {
                        var count2 = repository.DapperContext.ExcuteNonQuery(inserHis, null);
                    }
                    catch (Exception ex)
                    {

                        Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "假EPL上传 写入历史表cmc_pdms_project_epl_his，cmc_pdms_project_eplService 文件：UploadEpl：" + DateTime.Now + ":" + ex.Message);
                        return ResponseContent.Error();
                    }


                }


                return ResponseContent.OK();
            }
            return ResponseContent.Error("no data");
        }

        public int getDepartCount(Object obj)//部門定版時判斷數據是否維護完整
        {
            int count = 0;
            var data = JObject.Parse(obj.ToString());
            var projectId = data["projectId"].ToString();
            var projectStatus = data["projectStatus"].ToString();
            UserInfo userInfo = UserContext.Current.UserInfo;
            String departmentCode = userInfo.DepartmentCode;

            string sql = $@"select  count(*)  from  cmc_pdms_project_epl epl
                            where epl.project_id='" + projectId + "' and epl.org_code='"+ departmentCode + "'";
            if (projectStatus=="01") {
                sql += " and epl.epl_phase='01' and (epl.kd_type='' or epl.group_code='' or epl.dev_taker_id='' or epl.kd_type is null or epl.group_code is null or epl.dev_taker_id is null )   and action_type!='delete'";
            }
            else {
                sql += " and epl.epl_phase='02' and (epl.kd_type='' or epl.group_code='' or epl.dev_taker_id='' or epl.kd_type is null or epl.group_code is null or epl.dev_taker_id is null )  and action_type!='delete'";
            }
           
            count = Convert.ToInt32(repository.DapperContext.ExecuteScalar(sql, null));
            return count;
        }

        public WebResponseContent departFinal(Object obj)//部門定版
        {
            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            List<cmc_pdms_project_epl> eplLists = new List<cmc_pdms_project_epl>();
            var data = JObject.Parse(obj.ToString());
            var projectId = data["projectId"].ToString();
            var projectStatus = data["projectStatus"].ToString();
            eplLists = getDepartList(projectId, projectStatus);

            if (eplLists.Count != 0)
            {
                try
                {
                    foreach (var item in eplLists)
                    {
                        cmc_pdms_project_epl epl = new cmc_pdms_project_epl();
                        epl = repository.DbContext.Set<cmc_pdms_project_epl>().Where(x => x.epl_id == Guid.Parse(item.epl_id.ToString())).FirstOrDefault();

                        if (epl != null)
                        {
                            epl.Final_version_status = "1";
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
                        DBServerProvider.SqlDapper.UpdateRange(eplList, x => new { x.Final_version_status });
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

        public int getFinalStatus(Object obj)//獲取定版狀態
        {
            int count = 0;
            var data = JObject.Parse(obj.ToString());
            var projectId = data["projectId"].ToString();
            var projectStatus = data["projectStatus"].ToString();

            string sql = $@"select  count(*)  from  cmc_pdms_project_epl epl
                            where epl.project_id='" + projectId + "'  ";
            if (projectStatus == "01")
            {
                sql += " and epl.epl_phase='01' and  (Final_version_status!='2' or Final_version_status is null)";
            }
            else
            {
                sql += " and epl.epl_phase='02' and  (Final_version_status!='2' or Final_version_status is null)";
            }

            count = Convert.ToInt32(repository.DapperContext.ExecuteScalar(sql, null));
            return count;
           
        }


            public List<cmc_pdms_project_epl> getDepartList(string project_id,string project_status)//獲取部門的epl
        {
            UserInfo userInfo = UserContext.Current.UserInfo;
            String departmentCode = userInfo.DepartmentCode;
            var projectId = project_id;
            var projectStatus = project_status;

            List<cmc_pdms_project_epl> departList = new List<cmc_pdms_project_epl>();
            string sql = "";
            if (projectStatus=="01") {
                sql += @$"select  * from  cmc_pdms_project_epl where epl_phase='01' and project_id='" + projectId + "' and org_code='"+ departmentCode + "'";
            }
            else {
                sql += @$"select  * from  cmc_pdms_project_epl where epl_phase='02' and project_id='" + projectId + "' and org_code='" + departmentCode + "'";
            }
           
            departList = repository.DapperContext.QueryList<cmc_pdms_project_epl>(sql, null);
            return departList;
        }

        public int getDepartFinaliza(Object obj)//最終定版時判斷各部門是否進行了定版
        {
            int count = 0;
            var data = JObject.Parse(obj.ToString());
            var projectId = data["projectId"].ToString();
            var projectStatus = data["projectStatus"].ToString();

            string sql = $@"select  count(*)  from  cmc_pdms_project_epl epl
                            where epl.project_id='" + projectId + "'";

            if (projectStatus=="01") {
                sql += " and epl.epl_phase='01' and  (Final_version_status not in ('1','2') or Final_version_status is null)    ";
            } else {
                sql += " and epl.epl_phase='02' and (Final_version_status not in ('1','2') or Final_version_status is null)   ";
            }
         
            count = Convert.ToInt32(repository.DapperContext.ExecuteScalar(sql, null));
            return count;
        }

        public int getRepeatPart(Object obj)//最終定版時判斷各部門的新件的零件號是否重複
        {
            int count = 0;
            var data = JObject.Parse(obj.ToString());
            var projectId = data["projectId"].ToString();
            var projectStatus = data["projectStatus"].ToString();

            string sql = $@"select count(*)  from (
	                            select  row_number() over(partition by part_no order by upg_id,part_no)rn ,*  from  cmc_pdms_project_epl 
	                                where project_id='" + projectId + "'";

            if (projectStatus == "01")
            {
                sql += "and kd_type like 'D*%'  and epl_phase='01' ) tab where tab.rn>1   ";
            }
            else
            {
                sql += "and kd_type like 'D*%'  and epl_phase='02' ) tab where tab.rn>1   ";
            }
          
            
            count = Convert.ToInt32(repository.DapperContext.ExecuteScalar(sql, null));
            return count;
        }

        public WebResponseContent finaliza(Object obj)//最終定版
        {
            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            List<cmc_pdms_project_epl> eplLists = new List<cmc_pdms_project_epl>();
            var data = JObject.Parse(obj.ToString());
            var projectId = data["projectId"].ToString();
            var projectStatus = data["projectStatus"].ToString();
            eplLists = getEplList(projectId, projectStatus);

            if (eplLists.Count != 0)
            {
                try
                {
                    foreach (var item in eplLists)
                    {
                        cmc_pdms_project_epl epl = new cmc_pdms_project_epl();
                        epl = repository.DbContext.Set<cmc_pdms_project_epl>().Where(x => x.epl_id == Guid.Parse(item.epl_id.ToString())).FirstOrDefault();

                        if (epl != null)
                        {
                            epl.Final_version_status = "2";
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
                        DBServerProvider.SqlDapper.UpdateRange(eplList, x => new { x.Final_version_status });
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改執行 cmc_pdms_project_epl 表，cmc_pdms_project_eplService 文件-->UpdateRange：" + DateTime.Now + ":" + ex.Message);

                    return ResponseContent.Error();
                }

                string mainStatusStr = $@"UPDATE cmc_pdms_project_main  set project_status='03' WHERE project_id='{projectId}'";
                var adjustStatus = repository.DapperContext.ExcuteNonQuery(mainStatusStr, null);

            }
            return ResponseContent.OK();

        }
        public List<cmc_pdms_project_epl> getEplList(string project_id,string project_status)//獲取專案的epl
        {
            var projectId = project_id;
            var projectStatus = project_status;

            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            string sql = "";
            if (projectStatus=="01") {
                sql += @$"select  * from  cmc_pdms_project_epl where epl_phase='01' and project_id='" + projectId + "'";
            } else {
                sql += @$"select  * from  cmc_pdms_project_epl where epl_phase='02' and project_id='" + projectId + "'";
            }
           

            eplList = repository.DapperContext.QueryList<cmc_pdms_project_epl>(sql, null);
            return eplList;
        }


        public WebResponseContent updateCost(SaveModel saveModel)
        {

            var MainDatas = saveModel.MainDatas;
            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            List<cmc_pdms_project_epl_his> eplHisList = new List<cmc_pdms_project_epl_his>();
            Guid projectId = Guid.Parse(MainDatas[0]["project_id"].ToString());
            List<cmc_pdms_project_gate> gates = gateList(projectId);
            string gateType = getValue(gates[0].gate_code);
            if (MainDatas.Count != 0)
            {
                try
                {
                    foreach (var item in MainDatas)
                    {
                        cmc_pdms_project_epl epl = new cmc_pdms_project_epl();
                        
                        epl = repository.DbContext.Set<cmc_pdms_project_epl>().Where(x => x.epl_id == Guid.Parse(item["epl_id"].ToString())).FirstOrDefault();

                        if (epl != null)
                        {
                            if (item["fs_approve_status"] == "02")
                            { //審批通過更新時更新epl表狀態改為草稿並寫入數據到log表
                                //寫入歷史表
                                cmc_pdms_project_epl_his eplHis = new cmc_pdms_project_epl_his();
                                eplHis.epl_his_id = Guid.NewGuid();
                                eplHis.epl_id = epl.epl_id;
                                eplHis.project_id = epl.project_id;
                                eplHis.main_plan_id = epl.main_plan_id;
                                eplHis.epl_source = epl.epl_source;
                                eplHis.epl_phase = epl.epl_phase;
                                eplHis.epl_import_date = epl.epl_import_date;
                                eplHis.upg_id = epl.upg_id;
                                eplHis.level = epl.level;
                                eplHis.part_no = epl.part_no;
                                eplHis.part_name = epl.part_name;
                                eplHis.company_code = epl.company_code;
                                eplHis.kd_type = epl.kd_type;
                                eplHis.org_code = epl.org_code;
                                eplHis.new_org_code = epl.new_org_code;
                                eplHis.group_code = epl.group_code;
                                eplHis.dev_taker_id = epl.dev_taker_id;
                                eplHis.part_taker_id = epl.part_taker_id;
                                eplHis.fs_1 = epl.fs_1;
                                eplHis.fs_2 = epl.fs_2;
                                eplHis.fs_3 = epl.fs_3;
                                eplHis.fs_remark = epl.fs_remark;
                                eplHis.Final_version_status = epl.Final_version_status;
                                eplHis.fs_approve_status = epl.fs_approve_status;
                                eplHis.task_define_approve_status = epl.task_define_approve_status;
                                eplHis.org_change_approve_status = epl.org_change_approve_status;
                                eplHis.gate_type = epl.gate_type;
                                eplHis.is_eo = epl.is_eo;
                                eplHis.original_part_no = epl.original_part_no;
                                eplHis.del_flag = epl.del_flag;
                                eplHis.currency = epl.currency;
                                eplHis.submit_status = epl.submit_status;
                                eplHis.action_type = epl.action_type;
                                eplHis.data_source = "3";


                                //更新epl
                                epl.fs_1 = item["fs_1"] == null ? null : item["fs_1"].ToDecimal();
                                epl.fs_2 = item["fs_2"] == null ? null : item["fs_2"].ToDecimal();
                                epl.fs_3 = item["fs_3"] == null ? null : item["fs_3"].ToDecimal();
                                epl.fs_remark = item["fs_remark"] == null ? null : item["fs_remark"].ToString();
                                epl.currency = item["currency"] == null ? null : item["currency"].ToString();
                                epl.fs_approve_status = "00";
                                epl.gate_type = gateType;
                                epl.exchange_rate = item["exchange_rate"] == null ? null : item["exchange_rate"].ToDecimal();
                                epl.fs_1_ntd = item["fs_1_ntd"] == null ? null : item["fs_1_ntd"].ToDecimal();
                                epl.fs_2_ntd = item["fs_2_ntd"] == null ? null : item["fs_2_ntd"].ToDecimal();
                                epl.fs_1_rate = item["fs_1_rate"] == null ? null : item["fs_1_rate"].ToDecimal();
                                epl.fs_2_rate = item["fs_2_rate"] == null ? null : item["fs_2_rate"].ToDecimal();

                                eplHisList.Add(eplHis);
                            }
                            else{ //審批為草稿或拒絕時直接更新epl表
                                epl.fs_1 = item["fs_1"] == null ? null : item["fs_1"].ToDecimal();
                                epl.fs_2 = item["fs_2"] == null ? null : item["fs_2"].ToDecimal();
                                epl.fs_3 = item["fs_3"] == null ? null : item["fs_3"].ToDecimal();
                                epl.fs_remark = item["fs_remark"] == null ? null : item["fs_remark"].ToString();
                                epl.currency = item["currency"] == null ? null : item["currency"].ToString();
                                epl.fs_approve_status = epl.fs_approve_status;
                                epl.gate_type = gateType;
                                epl.exchange_rate = item["exchange_rate"] == null ? null : item["exchange_rate"].ToDecimal();
                                epl.fs_1_ntd = item["fs_1_ntd"] == null ? null : item["fs_1_ntd"].ToDecimal();
                                epl.fs_2_ntd = item["fs_2_ntd"] == null ? null : item["fs_2_ntd"].ToDecimal();
                                epl.fs_1_rate = item["fs_1_rate"] == null ? null : item["fs_1_rate"].ToDecimal();
                                epl.fs_2_rate = item["fs_2_rate"] == null ? null : item["fs_2_rate"].ToDecimal();

                            }
                            
;
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
                    if (eplList.Count > 0) {
                        repository.DapperContext.BeginTransaction((r) =>
                        {
                            DBServerProvider.SqlDapper.UpdateRange(eplList, x => new {x.currency, x.fs_1,x.fs_2,x.fs_3,x.fs_remark,x.fs_approve_status ,x.gate_type,x.exchange_rate,x.fs_1_ntd,x.fs_2_ntd,x.fs_1_rate,x.fs_2_rate });
                            return true;
                        }, (ex) => { throw new Exception(ex.Message); });
                    }

                    if (eplHisList.Count > 0)
                    {
                        repository.DapperContext.BeginTransaction((r) =>
                        {
                            DBServerProvider.SqlDapper.BulkInsert(eplHisList, "cmc_pdms_project_epl_his");
                            return true;
                        }, (ex) => { throw new Exception(ex.Message); });

                    }

                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改執行 cmc_pdms_project_epl 表，cmc_pdms_project_eplService 文件-->UpdateRange：" + DateTime.Now + ":" + ex.Message);

                    return ResponseContent.Error();
                }

            }
            return ResponseContent.OK();
        }
        public string getValue(string value) {
            string dicName = "";

            List<Sys_DictionaryList> dicList = new List<Sys_DictionaryList>();
            string sql = @$"select   d.* from  Sys_DictionaryList d left  join   Sys_Dictionary s on d.Dic_ID=s.Dic_ID  where   d.Enable='1'  and s.Enable='1'		and s.DicNo='gate' and  d.DicValue='"+ value + "'";
            dicList = repository.DapperContext.QueryList<Sys_DictionaryList>(sql, null);
            if (dicList!=null  && dicList.Count > 0) {
                dicName = dicList[0].DicName;
            }
           
            return dicName;
        }

        public List<cmc_pdms_project_gate> gateList(Guid projectId) {//獲取大日程
            DateTime time = DateTime.Now;
            List<cmc_pdms_project_gate> gateslList = new List<cmc_pdms_project_gate>();
           string sql = @$"select  * from  cmc_pdms_project_gate where  project_id='" + projectId + "'  and  gate_start_date<='"+ time + "'  and  gate_end_date>='"+time+"'";


            gateslList = repository.DapperContext.QueryList<cmc_pdms_project_gate>(sql, null);
            return gateslList;
        }

        public List<cmc_pdms_project_epl_car_model> getCarModel(Object obj)//獲取細車型
        {
            List<cmc_pdms_project_epl_car_model> gateslList = new List<cmc_pdms_project_epl_car_model>();
            UserInfo userInfo = UserContext.Current.UserInfo;
           var departMentCode = userInfo.DepartmentCode;
            var data = JObject.Parse(obj.ToString());
            var projectId = data["projectId"].ToString();
            var projectStatus = data["projectStatus"].ToString();


            string sql = @$"select  *  from   cmc_pdms_project_epl_car_model where  epl_id in (select  epl_id  from  cmc_pdms_project_epl where project_id='"+ projectId + "' and epl_phase!='01' and  org_code='"+ departMentCode + "')";


            gateslList = repository.DapperContext.QueryList<cmc_pdms_project_epl_car_model>(sql, null);
            return gateslList;
        }

    }
}
