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
                                if (item["org_code"].ToString() == item["new_org_code"].ToString())
                                {
                                    epl.kd_type = item["kd_type"] == null ? "" : item["kd_type"].ToString();
                                    epl.group_code = item["group_code"] == null ? "" : item["group_code"].ToString();
                                    epl.original_part_no = item["original_part_no"] == null ? "" : item["original_part_no"].ToString();
                                    epl.new_org_code = epl.new_org_code;
                                    epl.submit_status = "0";
                                    epl.org_change_approve_status = "02";
                                }
                                else
                                {
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
                                epl.dev_taker_id = item.dev_taker_id == null ? null : item.dev_taker_id.ToInt();

                            }
                            if (path.Equal("/view_cmc_project_epl"))
                            {//部車型窗口保存操作
                                if (item.org_code.ToString() == item.new_org_code.ToString())
                                {
                                    epl.kd_type = item.kd_type == null ? "" : item.kd_type.ToString();
                                    epl.group_code = item.group_code == null ? "" : item.group_code.ToString();
                                    epl.original_part_no = item.original_part_no == null ? "" : item.original_part_no.ToString();
                                    epl.new_org_code = epl.new_org_code;
                                    epl.submit_status = "0";
                                    epl.org_change_approve_status = "02";
                                }
                                else
                                {
                                    epl.kd_type = item.kd_type == null ? "" : item.kd_type.ToString();
                                    epl.group_code = item.group_code == null ? "" : item.group_code.ToString();
                                    epl.new_org_code = item.new_org_code == null ? "" : item.new_org_code.ToString();
                                    epl.original_part_no = item.original_part_no == null ? "" : item.original_part_no.ToString();
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
                    if (path.Equal("/view_cmc_project_epl"))
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

        public List<cmc_pdms_project_epl> getEpl(Object obj)//根據條件查詢epl
        {
            var data = JObject.Parse(obj.ToString());
            var projectId = data["projectId"].ToString();
            var path = data["path"] == null ? "" : data["path"].ToString();
            var upgId = data["upgId"] == null ? "" : data["upgId"].ToString();
            var partNo = data["partNo"] == null ? "" : data["partNo"].ToString();
            var submitStatus = data["submitStatus"] == null ? "" : data["submitStatus"].ToString();
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

            if (path == "/view_cmc_project_epl")
            {//部車型窗口
                string sql = @$"select  * from  cmc_pdms_project_epl where epl_phase='02' ";
                sql += where;
                eplList = repository.DapperContext.QueryList<cmc_pdms_project_epl>(sql, null);
            }
            if (path == "/view_cmc_project_epl_group")
            {//組窗口維護
                string sql = @$"select  * from  cmc_pdms_project_epl where epl_phase='02' ";
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
                            epl.submit_status = "1";


                            //部門變更邏輯待完善

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
            if (files.Count > 0)
            {

                WebResponseContent Response = ImportList(files);
                List<cmc_pdms_project_epl> list = Response.Data as List<cmc_pdms_project_epl>;
                DateTime now = DateTime.Now;
                List<string> strings = new List<string>();
                foreach (cmc_pdms_project_epl epl in list)
                {
                    //设置数据状态：新增、删除、不变
                    var oldlist = repository.DbContext.Set<cmc_pdms_project_epl>().Where(x => x.part_no == epl.part_no && x.project_id == epl.project_id).OrderByDescending(x => x.CreateDate).FirstOrDefault();
                    if (oldlist == null)
                    {
                        epl.action_type = "add";
                        //TODO
                        //接口查询kd区分和厂商代码
                    }
                    else
                    {
                        //epl = oldlist;
                        epl.action_type = "";//
                        //旧数据带入

                    }

                    
                    epl.epl_id = Guid.NewGuid();
                    strings.Add(epl.epl_id.ToString());
                    epl.CreateDate = now;
                    if (flag == "1")
                    {
                        epl.epl_phase = "01";
                    }
                    else if (flag == "2")
                    {
                        epl.epl_phase = "02";
                    }
                    epl.project_id = Guid.Parse(project_id);
                  
                    
                }
                try
                {
                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.BulkInsert(list, "cmc_pdms_project_epl");
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }
                catch (Exception ex)
                {

                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "假EPL上传  批量写入cmc_pdms_project_epl 表，cmc_pdms_project_eplService 文件：UploadEpl：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }

                string epls = string.Join("','", strings);
                //
                string updateAction = @$"UPDATE cmc_pdms_project_epl 
                                SET action_type = 'delete' 
                                WHERE
	                                epl_id IN ( '{epls}' ) 
	                                AND part_no NOT IN (
	                                SELECT
		                                part_no 
	                                FROM
		                                cmc_pdms_project_epl 
	                                WHERE
		                                project_id = '{project_id}' 
	                                AND CreateDate = ( SELECT TOP 1 CreateDate FROM cmc_pdms_project_epl WHERE project_id = '{project_id}' and  CreateDate<'{now}'    ORDER BY CreateDate DESC ) 
	                                )";
                try
                {
                    var count = repository.DapperContext.ExcuteNonQuery(updateAction, null);
                }
                catch (Exception ex)
                {

                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "假EPL上传  批量写入cmc_pdms_project_epl 表后更新action_type，cmc_pdms_project_eplService 文件：UploadEpl：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
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

            string sql = $@"select  count(*)  from  cmc_pdms_project_epl epl
                            where epl.project_id='" + projectId + "'";
            sql += " and epl.epl_phase='02' and (epl.kd_type='' or epl.group_code='' or epl.dev_taker_id='' )";
            count = Convert.ToInt32(repository.DapperContext.ExecuteScalar(sql, null));
            return count;
        }

        public WebResponseContent departFinal(Object obj)//部門定版
        {
            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            List<cmc_pdms_project_epl> eplLists = new List<cmc_pdms_project_epl>();
            var data = JObject.Parse(obj.ToString());
            var projectId = data["projectId"].ToString();
            eplLists = getDepartList(projectId);

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


        public List<cmc_pdms_project_epl> getDepartList(string project_id)//獲取部門的epl
        {
            UserInfo userInfo = UserContext.Current.UserInfo;
            String departmentCode = userInfo.DepartmentCode;
            var projectId = project_id;

            List<cmc_pdms_project_epl> departList = new List<cmc_pdms_project_epl>();
            string sql = @$"select  * from  cmc_pdms_project_epl where epl_phase='02' and project_id='" + projectId + "'";

            departList = repository.DapperContext.QueryList<cmc_pdms_project_epl>(sql, null);
            return departList;
        }

        public int getDepartFinaliza(Object obj)//最終定版時判斷各部門是否進行了定版
        {
            int count = 0;
            var data = JObject.Parse(obj.ToString());
            var projectId = data["projectId"].ToString();

            string sql = $@"select  count(*)  from  cmc_pdms_project_epl epl
                            where epl.project_id='" + projectId + "'";
            sql += " and epl.epl_phase='02' and  Final_version_status not in ('1','2') ";
            count = Convert.ToInt32(repository.DapperContext.ExecuteScalar(sql, null));
            return count;
        }

        public int getRepeatPart(Object obj)//最終定版時判斷各部門的新件的零件號是否重複
        {
            int count = 0;
            var data = JObject.Parse(obj.ToString());
            var projectId = data["projectId"].ToString();

            string sql = $@"select count(*)  from (
	                            select  row_number() over(partition by part_no order by upg_id,part_no)rn ,*  from  cmc_pdms_project_epl 
	                                where project_id='" + projectId + "'";
            sql += "and company_code is null  and epl_phase='02' ) tab where tab.rn>1   ";
            count = Convert.ToInt32(repository.DapperContext.ExecuteScalar(sql, null));
            return count;
        }

        public WebResponseContent finaliza(Object obj)//最終定版
        {
            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            List<cmc_pdms_project_epl> eplLists = new List<cmc_pdms_project_epl>();
            var data = JObject.Parse(obj.ToString());
            var projectId = data["projectId"].ToString();
            eplLists = getEplList(projectId);

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

            }
            return ResponseContent.OK();

        }
        public List<cmc_pdms_project_epl> getEplList(string project_id)//獲取專案的epl
        {
            var projectId = project_id;

            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            string sql = @$"select  * from  cmc_pdms_project_epl where epl_phase='02' and project_id='" + projectId + "'";

            eplList = repository.DapperContext.QueryList<cmc_pdms_project_epl>(sql, null);
            return eplList;
        }
    }
}
