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
                            if (Extra.Equal("/view_cmc_project_epl_group") ) {//組窗口保存操作
                                epl.dev_taker_id = item["dev_taker_id"] == null ? null : item["dev_taker_id"].ToInt();

                            }
                            else {//部車型窗口保存操作
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
                    else {
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

        public  WebResponseContent submit(SaveModel saveModel) {

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

        public WebResponseContent addEpl(Guid project_id,String glno)
        {

            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            if (1==2) {//從plm系統抓取到數據做邏輯處理

            }
            else {//從plm系統未抓取到數據，取最終版的假版epl數據形成一個正式版epl
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
    }
}
