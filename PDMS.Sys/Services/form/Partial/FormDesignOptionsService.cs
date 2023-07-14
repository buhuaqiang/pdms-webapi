/*
 *所有关于FormDesignOptions类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*FormDesignOptionsService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using PDMS.System.IRepositories;
using System.Collections.Generic;
using static Dapper.SqlMapper;
using System;

namespace PDMS.System.Services
{
    public partial class FormDesignOptionsService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly IFormDesignOptionsRepository _repository;//访问数据库
        private WebResponseContent _responseContent = new WebResponseContent();

        [ActivatorUtilitiesConstructor]
        public FormDesignOptionsService(
            IFormDesignOptionsRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }

        public override PageGridData<FormDesignOptions> GetPageData(PageDataOptions options)
        {
            //查询所有del_flag!=1
            return base.GetPageData(options);
        }

        public override WebResponseContent Add(SaveModel saveDataModel)
        {
            //要确认已发布状态下表单code不可以重复           
            string code = saveDataModel.MainData["FormCode"].ToString();
            List<FormDesignOptions> orderLists = repository.DbContext.Set<FormDesignOptions>().Where(x => x.FormCode ==code).ToList();
            //自定义逻辑
            if (orderLists != null && orderLists.Count > 0)
            {//
                return _responseContent.Error("表单编号重复");
            }
            //设置默认status=0(暂存)
            saveDataModel.MainData["status"] = "0";
            return base.Add(saveDataModel);
        }

        public override WebResponseContent Update(SaveModel saveModel)
        {
            //修改舊數據的del_flag=1
            //複製一份數據做新增，發佈狀態改為 暫存 status=0            //
            if (saveModel.MainData.ContainsKey("DaraggeOptions"))
            {

            }
            return base.Update(saveModel);
        }

        public override WebResponseContent Del(object[] keys, bool delList = true)
        {
            string dd = string.Join("','", keys);
            //如果表單被cmc_common_task表引用，不允許刪除
            string sSql = $@"select count(*) from cmc_common_task where FormId in ('{dd}')";
            object obj = _repository.DapperContext.ExecuteScalar(sSql, null);

            if (Convert.ToInt32(obj) > 0)
            {
                return _responseContent.Error("表单被引用，不允许删除");
            }
            return base.Del(keys, delList);
        }

    }
}
