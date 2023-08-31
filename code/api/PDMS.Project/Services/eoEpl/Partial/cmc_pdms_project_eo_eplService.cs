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
                ResponseContent = ImportEOData();
                #endregion

                #region  根據當前時間查詢，當天的所有變更EO，中轉站處理,最後寫入cmc_pdms_eo_project
                //根據當前時間查詢，當天的所有變更EO
                
                var List = repository.DbContext.Set<YTECH>().Where(x => x.EC_DATE ==Convert.ToDateTime(date)).ToList();
                //將查出的數據，放進中轉站處理,最後寫入cmc_pdms_eo_project
                ResponseContent = GetStrData(List);
                #endregion




                //將讀取到的三個文件分別寫入對應表


                //查询出所有进行中的专案
                string getAllProject = "SELECT * from cmc_pdms_project_main where project_status IN ('01','02','03')";
                
                //查询YTECH表
                string getEOsql = @$"select * from YTECH WHERE EC_DATE={date}";
                //根据查询结果的model_year查询对应专案，写入表cmc_pdms_eo_project

            }
            catch (Exception ex)
            {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "处理EO数据，cmc_pdms_project_eo_eplService 文件：dealEoData：" + DateTime.Now + ":" + ex.Message);
                return ResponseContent.Error();
            }
           
            return ResponseContent.OK();
        }
        public WebResponseContent ImportEOData()
        {
            string date = DateTime.Now.ToString("yyyyMMdd");
            string localPath = $"c:/home/site/Upload/PDMS/EoPo/20230830142020/YTECB_2023.xlsx".MapPath();
            string localPath2 = $"c:/home/site/Upload/PDMS/EoPo/20230830142020/YTECH_2023.xlsx".MapPath();
            string localPath3 = $"c:/home/site/Upload/PDMS/EoPo/20230830142020/YTECS_2023.xlsx".MapPath();
            try
            { 
                DataTable Data = EPPlusHelper.ReadExcel(localPath);
                var list = DtToList<YTECB>.ConvertToModel(Data);
                repository.DapperContext.BeginTransaction((r) =>
                {
                    DBServerProvider.SqlDapper.BulkInsert(list, "YTECB");
                    return true;
                }, (ex) => { throw new Exception(ex.Message); });


                DataTable Data2 = EPPlusHelper.ReadExcel(localPath2);
                var list2 = DtToList<YTECH>.ConvertToModel(Data2);
                repository.DapperContext.BeginTransaction((r) =>
                {
                    DBServerProvider.SqlDapper.BulkInsert(list2, "YTECH");
                    return true;
                }, (ex) => { throw new Exception(ex.Message); });



                DataTable Data3 = EPPlusHelper.ReadExcel(localPath3);
                var list3 = DtToList<YTECS>.ConvertToModel(Data3);
                repository.DapperContext.BeginTransaction((r) =>
                {
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
            var model_type = new List<string>();
            var model_year = new List<string>();
            var model_dest = new List<string>();
            List<cmc_pdms_eo_project> projects = new List<cmc_pdms_eo_project>();
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
                                        model_type.Add(arrs[0]);
                                    if (!arrs[1].Contains("ALL") && !arrs[1].Contains("---"))
                                        model_year.Add(arrs[1]);
                                    if (!arrs[2].Contains("ALL") && !arrs[2].Contains("---"))
                                        model_dest.Add(arrs[2]);
                                }
                            }
                        }
                        else if (item.Key.MODEL_YEAR.IndexOf("|") != -1)
                        {
                            var arrs = item.Key.MODEL_YEAR.Split("|");
                            if (!arrs[0].Contains("ALL") && !arrs[0].Contains("---"))
                                model_type.Add(arrs[0]);
                            if (!arrs[1].Contains("ALL") && !arrs[1].Contains("---"))
                                model_year.Add(arrs[1]);
                            if (!arrs[2].Contains("ALL") && !arrs[2].Contains("---"))
                                model_dest.Add(arrs[2]);
                        }

                        var ListTemp = project_mainList.Where(x => model_type.Contains(x.model_type) && model_year.Contains(x.model_year) && model_dest.Contains(x.model_dest)).ToList();
                        var project_idList = EPPlusHelper.GetSingleString(ListTemp, x => new { x.project_id }).ToList();
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
                }
            }
            catch (Exception ex)
            {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量修改執行 cmc_pdms_eo_project 表，cmc_pdms_project_eo_eplService 文件-->BulkInsert：" + DateTime.Now + ":" + ex.Message);
                return ResponseContent.Error(ex.Message);
            }
            return ResponseContent.OK();
        }


    }
}
