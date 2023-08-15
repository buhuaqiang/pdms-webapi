/*
 *所有关于cmc_pdms_project_main类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*cmc_pdms_project_mainService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using OfficeOpenXml.FormulaParsing.Excel.Functions.DateTime;
using Newtonsoft.Json.Linq;

namespace PDMS.Project.Services
{
    public partial class cmc_pdms_project_mainService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Icmc_pdms_project_mainRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public cmc_pdms_project_mainService(
            Icmc_pdms_project_mainRepository dbRepository,
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
        public  WebResponseContent loadDate(SaveModel saveModel)
        {
            var MainDatas = saveModel.MainDatas;
            List<cmc_pdms_project_main> projectMain = new List<cmc_pdms_project_main>();
            if (MainDatas.Count != 0)
            {
                try
                {
                    foreach (var item in MainDatas)
                    {
                        cmc_pdms_project_main project = new cmc_pdms_project_main();
                        project = repository.DbContext.Set<cmc_pdms_project_main>().Where(x => x.project_id == Guid.Parse(item["project_id"].ToString())).FirstOrDefault();

                        if (project != null)
                        {
                            // project.epl_load_date = Convert.ToDateTime(ConvertTime(Now date()));

                            project.epl_load_date = Convert.ToDateTime(DateTime.Now);
                            project.project_status = "02";
                        }
                        projectMain.Add(project);
                    }
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "载入日期修改前装箱  cmc_pdms_project_main 表，cmc_pdms_project_mainService 文件：projectMain：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }
                try
                {

                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.UpdateRange(projectMain, x => new { x.epl_load_date, x.project_status});
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });

                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "载入日期修改執行 cmc_pdms_project_main 表，cmc_pdms_project_main 文件-->UpdateRange：" + DateTime.Now + ":" + ex.Message);

                    return ResponseContent.Error();
                }

                cmc_pdms_project_epl epl = repository.DbContext.Set<cmc_pdms_project_epl>().Where(x => x.project_id == Guid.Parse(MainDatas[0]["project_id"].ToString())  && x.epl_phase=="02").FirstOrDefault();
                if (epl == null) {//载入EPL時若專案啟動中不存在數據則新增
                    ResponseContent = cmc_pdms_project_eplService.Instance.addEpl(Guid.Parse(MainDatas[0]["project_id"].ToString()), MainDatas[0]["glno"].ToString());
                }
              
            }
             return ResponseContent.OK();
        }

        public WebResponseContent eoFee(SaveModel saveModel)
        {//调整EO费率
            var MainDatas = saveModel.MainDatas;
            //定义变量存取变更前的数据
            decimal  eoFee = 0;
            List<cmc_pdms_project_main> projectMain = new List<cmc_pdms_project_main>();
            if (MainDatas.Count != 0)
            {
                try
                {
                    foreach (var item in MainDatas)
                    {
                        cmc_pdms_project_main project = new cmc_pdms_project_main();
                        project = repository.DbContext.Set<cmc_pdms_project_main>().Where(x => x.project_id == Guid.Parse(item["project_id"].ToString())).FirstOrDefault();

                        if (project != null)
                        {
                            // project.epl_load_date = Convert.ToDateTime(ConvertTime(Now date()));

                            eoFee =Convert.ToDecimal(project.eo_fee); //获取变更前的值
                            project.eo_fee = Convert.ToDecimal(item["eo_fee"]);
                        }
                        projectMain.Add(project);
                    }
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "变更EO费率前装箱  cmc_pdms_project_main 表，cmc_pdms_project_mainService 文件：projectMain：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }
                try
                {

                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.UpdateRange(projectMain, x => new { x.eo_fee });
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });

                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "变更EO费率執行 cmc_pdms_project_main 表，cmc_pdms_project_main 文件-->UpdateRange：" + DateTime.Now + ":" + ex.Message);

                    return ResponseContent.Error();
                }

                ResponseContent = cmc_pdms_project_eplService.Instance.editEo(Guid.Parse(MainDatas[0]["project_id"].ToString()),  MainDatas[0]["project_status"].ToString(), Convert.ToDecimal(MainDatas[0]["eo_fee"]), eoFee);
            }
            return ResponseContent.OK();
        }

        public int isLoadDate(SaveModel saveModel) {//判斷epl是否維護到定版
            int count = 0;
            var MainDatas = saveModel.MainDatas;
            var projectId = MainDatas[0]["project_id"].ToString();

            string sql = $@"select  count(*)  from  cmc_pdms_project_epl epl
                            where epl.project_id='" + projectId + "' and epl_phase='01' and  Final_version_status='2'";
           
            count = Convert.ToInt32(repository.DapperContext.ExecuteScalar(sql, null));
            return count;     
        }


        public WebResponseContent closeProject(object obj)
        {//結案

            var data = JObject.Parse(obj.ToString());
            var projectId = data["projectId"].ToString();

            List<cmc_pdms_project_main> mainProject = new List<cmc_pdms_project_main>();
           
                try
                {

                    cmc_pdms_project_main project = new cmc_pdms_project_main();
                    project = repository.DbContext.Set<cmc_pdms_project_main>().Where(x => x.project_id == Guid.Parse(projectId)).FirstOrDefault();

                        if (project != null)
                        {
                        project.project_status = "05";
                        }
                    mainProject.Add(project);
                    
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "結案前装箱  cmc_pdms_project_main 表，cmc_pdms_project_mainService 文件：eplList：" + DateTime.Now + ":" + ex.Message);
                    return ResponseContent.Error();
                }
                try
                {
                    repository.DapperContext.BeginTransaction((r) =>
                    {
                        DBServerProvider.SqlDapper.UpdateRange(mainProject, x => new { x.project_status });
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }
                catch (Exception ex)
                {
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "結案執行 cmc_pdms_project_main 表，cmc_pdms_project_mainService 文件-->UpdateRange：" + DateTime.Now + ":" + ex.Message);

                    return ResponseContent.Error();
                }

           
            return ResponseContent.OK();
        }
    }
}
