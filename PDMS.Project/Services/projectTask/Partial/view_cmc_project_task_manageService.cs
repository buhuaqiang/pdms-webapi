/*
 *所有关于view_cmc_project_task_manage类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_cmc_project_task_manageService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
*/
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using PDMS.Core.Extensions;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using PDMS.Project.IRepositories;
using PDMS.Project.IServices;
using PDMS.Core.DBManager;
using System.Text.Json;

namespace PDMS.Project.Services
{
    public partial class view_cmc_project_task_manageService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_cmc_project_task_manageRepository _repository;//访问数据库
        WebResponseContent ResponseContent = new WebResponseContent();
        private readonly Icmc_pdms_project_eplService _cmc_pdms_project_eplService;
        private readonly Icmc_pdms_project_eplRepository _cmc_pdms_project_eplRepository;

        [ActivatorUtilitiesConstructor]
        public view_cmc_project_task_manageService(
            Iview_cmc_project_task_manageRepository dbRepository,
            IHttpContextAccessor httpContextAccessor,
            Icmc_pdms_project_eplService cmc_Pdms_Project_Epl,
            Icmc_pdms_project_eplRepository cmc_pdms_project_eplRepository
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }

        public WebResponseContent setPartTaker(SaveModel saveModel, Dictionary<string, object> mainData)
        {
            var MainData = saveModel.MainData;
            List<cmc_pdms_project_epl> eplList = new List<cmc_pdms_project_epl>();
            string[] eplidList = JsonSerializer.Deserialize<string[]>((string)mainData["epl_id"]);
            //string json = JsonSerializer.Serialize(MainData);
            var userId = MainData["User_Id"];
            if (MainData.Count != 0)
            {
                try
                {
                    foreach (var item in eplidList)
                    {
                        cmc_pdms_project_epl epl = new cmc_pdms_project_epl();
                        epl = repository.DbContext.Set<cmc_pdms_project_epl>().Where(x => x.epl_id == Guid.Parse(item.ToString())).FirstOrDefault();
                        if (epl != null)
                        {
                            epl.part_taker_id = (int?)userId;
                        }
                        eplList.Add(epl);
                    }
                }
                catch (Exception)
                {
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
