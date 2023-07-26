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

        public override WebResponseContent Add(SaveModel saveDataModel)
        {
            // 在保存数据库前的操作，所有数据都验证通过了，这一步执行完就执行数据库保存
            return _cmc_pdms_project_mainService.Add(saveDataModel);
        }
        public override WebResponseContent Update(SaveModel saveModel)
        {
            UpdateOnExecuting = (view_cmc_project_pm order, object addList, object updateList, List<object> delKeys) =>
            {
                return webResponse.OK();
            };
            return _cmc_pdms_project_mainService.Update(saveModel);
        }

        //public override WebResponseContent Del(object[] keys, bool delList = true)
        //{
        //    return _cmc_pdms_project_mainService.Del(keys, delList);
        //}


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
            string where = " ";
            UserInfo userInfo = UserContext.Current.UserInfo;
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
	                            pm.release_status,pm.model_type,pm.epl_load_date,
                                ( SELECT MAX ( version ) FROM cmc_pdms_project_gate WHERE project_id = pm.project_id GROUP BY project_id ) AS version ,
	                            pm.CreateID,pm.Creator,pm.CreateDate,pm.ModifyID,pm.Modifier,pm.ModifyDate 
                            FROM cmc_pdms_project_main AS pm
	                        LEFT OUTER JOIN cmc_pdms_project_org AS po ON pm.project_id= po.project_id where 1=1  ";
                QuerySql += where;
            }
            if (path == "/view_cmc_project_start")
            { //專案啟動部車型窗口查詢
                QuerySql = @" SELECT  pm.project_id,pm.entity,pm.glno,pm.project_name,pm.project_type,pm.project_reg_date,pm.start_date,
	                            pm.end_date,pm.project_gate_date,pm.project_budget,pm.project_purpose,pm.project_describe,pm.project_status,
	                            pm.release_status,pm.model_type,pm.epl_load_date,
                                ( SELECT MAX ( version ) FROM cmc_pdms_project_gate WHERE project_id = pm.project_id GROUP BY project_id ) AS version ,
	                            pm.CreateID,pm.Creator,pm.CreateDate,pm.ModifyID,pm.Modifier,pm.ModifyDate 
                            FROM cmc_pdms_project_main AS pm
	                        LEFT OUTER JOIN cmc_pdms_project_org AS po ON pm.project_id= po.project_id where 1=1  
                        ";
                QuerySql += where;

            }
            if (path == "/view_cmc_project_group_start")
            { //專案啟動組車型窗口查詢
                QuerySql = @"  SELECT  pm.project_id,pm.entity,pm.glno,pm.project_name,pm.project_type,pm.project_reg_date,pm.start_date,
	                            pm.end_date,pm.project_gate_date,pm.project_budget,pm.project_purpose,pm.project_describe,pm.project_status,
	                            pm.release_status,pm.model_type,pm.epl_load_date,
                                ( SELECT MAX ( version ) FROM cmc_pdms_project_gate WHERE project_id = pm.project_id GROUP BY project_id ) AS version ,
	                            pm.CreateID,pm.Creator,pm.CreateDate,pm.ModifyID,pm.Modifier,pm.ModifyDate 
                            FROM cmc_pdms_project_main AS pm
	                        LEFT OUTER JOIN cmc_pdms_project_org AS po ON pm.project_id= po.project_id where 1=1 
                        ";
                QuerySql += where;

            }
           
            return base.GetPageData(options);
        }

    }
}
