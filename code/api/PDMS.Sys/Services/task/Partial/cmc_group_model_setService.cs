/*
 *所有关于cmc_group_model_set类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*cmc_group_model_setService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using PDMS.Sys.IRepositories;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Newtonsoft.Json;
using OfficeOpenXml.FormulaParsing.Excel.Functions.DateTime;
using OfficeOpenXml.FormulaParsing.Excel.Functions.RefAndLookup;
using System;
using PDMS.Core.ManageUser;
using PDMS.Core.DBManager;
using StackExchange.Redis;

namespace PDMS.Sys.Services
{
    public partial class cmc_group_model_setService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Icmc_group_model_setRepository _repository;//访问数据库
        

        [ActivatorUtilitiesConstructor]
        public cmc_group_model_setService(
            Icmc_group_model_setRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }

        private WebResponseContent _responseContent=new WebResponseContent ();
        public override PageGridData<cmc_group_model_set> GetPageData(PageDataOptions options)
        {
            return base.GetPageData(options);
        }
        public override WebResponseContent Add(SaveModel saveDataModel)
        {
           
            UserInfo userList = UserContext.Current.UserInfo;
            string deptCode = saveDataModel.MainData["DepartmentCode"].ToString();
            string model_type = saveDataModel.MainData["model_type"].ToString();
            string[] types = model_type.Split(',');
            string tt = String.Join("','",types);
            string sql = $@"select count(0) from cmc_group_model_set where   DepartmentCode='{deptCode}' and model_type in ('{tt}')";
            
            var count3 = _repository.DapperContext.ExecuteScalar(sql, null);
            if (Convert.ToInt32(count3) > 0)            
            {//
                return _responseContent.Error("已設置過組窗口，不允許重複設置");
            }


            SaveModel.DetailListDataResult queueResult = new SaveModel.DetailListDataResult();
            List<cmc_group_model_set> List = new List<cmc_group_model_set>();
            foreach (string type in types)
            {

                cmc_group_model_set queueEntity = new cmc_group_model_set()
                {
                    group_set_id = Guid.NewGuid(),
                    DepartmentCode =deptCode ,
                    set_type = "01",//目前只有一種設置：01組窗口，預留字段，方便以後擴展用
                    user_id = int.Parse(saveDataModel.MainData["user_id"].ToString()),
                    model_type = type.Trim(),
                    CreateDate = DateTime.Now,
                    CreateID = userList.User_Id,
                    Creator = userList.UserTrueName
                };
                List.Add(queueEntity);
            }
            try
            {
                repository.DapperContext.BeginTransaction((r) =>
                {
                    DBServerProvider.SqlDapper.BulkInsert(List, "cmc_group_model_set");
                    return true;
                }, (ex) => { throw new Exception(ex.Message); });
            }
            catch(Exception ex)
            {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "批量新增車型組窗口設置 cmc_group_model_set表，cmc_common_task_templateService 文件-->" + DateTime.Now + ":" + ex.Message);
            }           

            return _responseContent.OK();

        }


        public WebResponseContent dealUnSetGroup()
        {
            try
            {
                //查詢出所有群組
                string allGroup = @$"SELECT * from Sys_Department where ParentId in (
                                SELECT DepartmentId FROM Sys_Department WHERE DepartmentCode in 
                                (SELECT DicValue from Sys_DictionaryList where Dic_ID=(SELECT Dic_ID from Sys_Dictionary WHERE DicNo='define_dept_code')))";
                List<Sys_Department> list = _repository.DapperContext.QueryList<Sys_Department>(allGroup, null);
               
                //查詢出專案對應的車型
                string modelSet = "SELECT DISTINCT model_type from cmc_pdms_project_main where project_status IN ('01','02','03')";
                List<cmc_pdms_project_main> setsList = _repository.DapperContext.QueryList<cmc_pdms_project_main>(modelSet,null);
                //List<string> list = view_wk_approval_pendingService.Instance.GetSingleString(setsList, x => new { x.model_type })

                //查詢出群組設置的所有數據
                string selectSet = "select * from cmc_group_model_set where set_type='01'";
                List<cmc_group_model_set> existSet = _repository.DapperContext.QueryList<cmc_group_model_set>(selectSet, null);
                List<cmc_group_model_set> notExist = new List<cmc_group_model_set>();
                if (list != null && list.Count > 0 && setsList!=null && setsList.Count>0)
                {
                    list.ForEach(dept => {
                        setsList.ForEach(set =>
                        {
                            cmc_group_model_set newSet=new cmc_group_model_set();
                            newSet.DepartmentCode= dept.DepartmentCode;
                            newSet.model_type=set.model_type;
                            var ex= existSet.Where(x => x.DepartmentCode==newSet.DepartmentCode && x.model_type==set.model_type).FirstOrDefault();
                            if (ex!=null)
                            {
                                //說明對應組的車型窗口已設置
                            }
                            else
                            {
                                notExist.Add(newSet);
                            }
                        });
                    });
                    if(notExist.Count > 0)
                    {
                        //查詢是否已經提醒過，如果已提醒過一次則把組經理設置為組窗口
                        string notice = "select * from sys_notice";
                        List<sys_notice> allNotice= _repository.DapperContext.QueryList<sys_notice>(notice, null);
                        var grouList=notExist.GroupBy(g => new {g.DepartmentCode}).ToList();
                        /*notExist.ForEach(x => {
                            
                        });*/
                        //未提醒過則發送郵件和公告通知
                    }
                }
               
            }
            catch (Exception ex) {
                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "處理未設置組窗口的車型 cmc_group_model_set表，cmc_common_task_templateService 文件-->" + DateTime.Now + ":" + ex.Message);
            }
            return _responseContent.OK();
        }
        /// <summary>
        /// 查詢部門經理/組經理
        /// </summary>
        /// <param name="deptCode"></param>
        /// <returns></returns>
        string getDeptManager(string deptCode)
        {
            string userid = "1";
            if (deptCode == "D157")
            {
                userid = "4406";
            } 
            else if (deptCode == "D157")
             {
                userid = "4383";
            }
                return userid;
        }
    }
}
