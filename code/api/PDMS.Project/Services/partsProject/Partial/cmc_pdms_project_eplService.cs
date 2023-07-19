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
                        DBServerProvider.SqlDapper.UpdateRange(eplList, x => new { x.kd_type, x.group_code, x.new_org_code, x.original_part_no, x.submit_status, x.org_change_approve_status });
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
    }
}
