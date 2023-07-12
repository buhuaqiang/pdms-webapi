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
           
            UserInfo userList = PDMS.Core.ManageUser.UserContext.Current.UserInfo;
            cmc_group_model_set queueEntity = new cmc_group_model_set()
            {
                group_set_id = Guid.NewGuid(),
                DepartmentCode= saveDataModel.MainData["DepartmentCode"].ToString(),
                set_type = "01",//目前只有一種設置：01組窗口，預留字段，方便以後擴展用
                user_id = int.Parse(saveDataModel.MainData["user_id"].ToString()),
                model_type = saveDataModel.MainData["model_type"].ToString(),
                CreateDate = DateTime.Now,
                CreateID = userList.User_Id,
                Creator = userList.UserTrueName
            };
            List<cmc_group_model_set> orderLists = repository.DbContext.Set<cmc_group_model_set>().Where(x => x.DepartmentCode == queueEntity.DepartmentCode && x.model_type == queueEntity.model_type).ToList();
            //自定义逻辑
            if (orderLists != null && orderLists.Count > 0)
            {//
                return _responseContent.Error("已設置過組窗口，不允許重複設置");
            }

            SaveModel.DetailListDataResult queueResult = new SaveModel.DetailListDataResult();
            List<cmc_group_model_set> List = new List<cmc_group_model_set>();
           
            List.Add(queueEntity);
            repository.DapperContext.BeginTransaction((r) =>
            {
                DBServerProvider.SqlDapper.BulkInsert(List, "cmc_group_model_set");
                return true;
            }, (ex) => { throw new Exception(ex.Message); });

            return _responseContent.OK();

        }
    }
}
