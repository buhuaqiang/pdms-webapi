/*
 *所有关于view_cmc_project_epl类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_cmc_project_eplService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using PDMS.Core.ManageUser;

namespace PDMS.Project.Services
{
    public partial class view_cmc_project_eplService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_cmc_project_eplRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public view_cmc_project_eplService(
            Iview_cmc_project_eplRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }

        public WebResponseContent response = new WebResponseContent();

        public override WebResponseContent Update(SaveModel saveModel)
        {
            return cmc_pdms_project_eplService.Instance.Update(saveModel);
        }

        public int getEplCount(SaveModel saveModel)
        {
            int count = 0;
            var MainDatas = saveModel.MainDatas;
            var eplIds = "";
            foreach (var item in MainDatas)
            {
                object eplId = item["epl_id"];
                eplIds += "'" + eplId + "'" + ",";
            }
            eplIds = eplIds.Substring(0, eplIds.Length - 1);
            string sql = $@"select  count(*)  from  cmc_pdms_project_epl epl where epl_id in ("+ eplIds + ")  and (kd_type='' or group_code='' or kd_type is null) and action_type !='delete' ";
            count =Convert.ToInt32( repository.DapperContext.ExecuteScalar(sql, null));
            return count;
        }

        public  WebResponseContent submit(SaveModel saveModel)
        {
            return cmc_pdms_project_eplService.Instance.submit(saveModel);
        }

        public override PageGridData<view_cmc_project_epl> GetPageData(PageDataOptions options) {
            string project_id = "";
            string upg_id = "";
            string part_no = "";
            string submit_status = "";
            string path = "";
            string projectStatus = "";
            string where = " ";
            string departMentCode = "";
            UserInfo userInfo = UserContext.Current.UserInfo;
            departMentCode = userInfo.DepartmentCode;
            List<SearchParameters> searchParametersList = new List<SearchParameters>();
            if (!string.IsNullOrEmpty(options.Wheres))
            {
                searchParametersList = options.Wheres.DeserializeObject<List<SearchParameters>>();
                if (searchParametersList != null && searchParametersList.Count > 0)
                {
                    foreach (SearchParameters sp in searchParametersList)
                    {
                        if (sp.Name.ToLower() == "project_id".ToLower())
                        {
                            project_id = sp.Value;
                            if (!string.IsNullOrEmpty(project_id))
                            {
                                where += " and epl.project_id='" + project_id +"'";
                            }
                            continue;
                        }
                        if (sp.Name.ToLower() == "upg_id".ToLower())
                        {
                            upg_id = sp.Value;
                            if (!string.IsNullOrEmpty(upg_id))
                            {
                                where += " and epl.upg_id like '%" + upg_id+"%'";
                            }
                            continue;
                        }
                        if (sp.Name.ToLower() == "part_no".ToLower())
                        {
                            part_no = sp.Value;
                            if (!string.IsNullOrEmpty(part_no))
                            {
                                where += " and epl.part_no like '%" + part_no+"%'";
                            }
                            continue;
                        }
                        if (sp.Name.ToLower() == "submit_status".ToLower())
                        {
                            submit_status = sp.Value;
                            if (!string.IsNullOrEmpty(submit_status))
                            {
                                where += " and epl.submit_status='" + submit_status+"'";
                            }
                            continue;
                        }
                        if (sp.Name.ToLower() == "path".ToLower())
                        {
                            path = sp.Value;
                            continue;
                        }
                        if (sp.Name.ToLower() == "project_status".ToLower())
                        {
                            projectStatus = sp.Value;
                            continue;
                        }
                    }
                }
            }



      
            if (path == "/view_cmc_project_epl")//部車型窗口查詢
            {
                QuerySql = @" select  epl.*,(select UserName   from sys_user where user_id=mset.User_Id) as UserName ,'' as UserTrueName,'' as user_code    
                             from cmc_pdms_project_epl epl
                             left  join cmc_pdms_project_main main on main.project_id=epl.project_id
                             left join  cmc_pdms_project_org org  on org.project_id=main.project_id and epl.org_code=org.org_code
                            left join cmc_group_model_set mset on mset.DepartmentCode=epl.group_code and mset.model_type=main.model_type and mset.set_type='01'
                            where 1=1  ";


                string orgCode = " and  epl.org_code='" + departMentCode + "'";
                if (projectStatus == "01")
                {//專案建立部車型窗口查詢
                    QuerySql += "  and epl_phase='01'  ";
                }
                else {
                    QuerySql += @"  and epl_phase='02'  ";
                }
                QuerySql += orgCode;
                QuerySql += where;
            }
            if (path == "/view_cmc_project_epl_group")
            { //組車型窗口查詢

                QuerySql = @" select  epl.* , (select  UserTrueName from sys_user where  User_Id=epl.dev_taker_id) as UserTrueName,
                                (select  user_code from sys_user where  User_Id=epl.dev_taker_id) as user_code ,'' as UserName   
                            from   cmc_pdms_project_epl epl  where  epl.submit_status='1' ";  

                string groupCode = " and  epl.group_code='" + departMentCode + "'";
                if (projectStatus == "01")
                {//專案建立組車型窗口查詢
                    QuerySql += " and epl_phase='01'  ";
                }else {
                    QuerySql += "  and epl_phase='02'  ";
                }
                QuerySql += groupCode;
                QuerySql += where;

            }
            if (path == "/view_cmc_project_epl_departFinaliza")
            { //部門定版

                QuerySql = @" select  epl.*,(select UserName   from sys_user where user_id=mset.User_Id) as UserName  ,(select  user_code from sys_user where  User_Id=epl.dev_taker_id) as user_code ,'' as UserTrueName   
	                            from cmc_pdms_project_epl epl
                                left  join cmc_pdms_project_main main on main.project_id=epl.project_id
                                left join cmc_pdms_project_epl_car_model model on model.epl_id=epl.epl_id
                                left join cmc_group_model_set mset on mset.DepartmentCode=epl.group_code and mset.model_type=main.model_type and mset.set_type='01'
                                where 1=1  ";

                string orgCode = " and  epl.org_code='" + departMentCode + "'";
                if (projectStatus == "01")
                {
                   
                    QuerySql += " and epl_phase='01'  ";

                }
                else {
                    QuerySql += " and epl_phase='02'  ";
                }
                QuerySql += orgCode;
                QuerySql += where;

            }
            if (path == "/view_cmc_project_epl_finalization")
            { //最終定版 不需要過濾部門
                QuerySql = @" select  epl.*,(select UserName   from sys_user where user_id=mset.User_Id) as UserName  ,(select  user_code from sys_user where  User_Id=epl.dev_taker_id) as user_code ,'' as UserTrueName   
	                            from cmc_pdms_project_epl epl
                                left  join cmc_pdms_project_main main on main.project_id=epl.project_id
                                left join cmc_pdms_project_epl_car_model model on model.epl_id=epl.epl_id
                                left join cmc_group_model_set mset on mset.DepartmentCode=epl.group_code and mset.model_type=main.model_type and mset.set_type='01'
                                where 1=1  ";
                if (projectStatus == "01")
                {
                    QuerySql += " and epl_phase='01'  ";

                }
                else {
                    QuerySql += " and epl_phase='02'  ";
                }
                  
                QuerySql += where;

            }

            return base.GetPageData(options);
        }





      

    }
}
