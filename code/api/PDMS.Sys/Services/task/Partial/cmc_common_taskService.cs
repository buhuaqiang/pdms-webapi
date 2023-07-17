/*
 *所有关于cmc_common_task类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*cmc_common_taskService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using PDMS.System.IRepositories;
using System;

namespace PDMS.Sys.Services
{
    public partial class cmc_common_taskService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Icmc_common_taskRepository _repository;//访问数据库

        private readonly IFormDesignOptionsRepository _formRepository;

        private readonly WebResponseContent _responseContent=new WebResponseContent();

        [ActivatorUtilitiesConstructor]
        public cmc_common_taskService(
            Icmc_common_taskRepository dbRepository,
            IHttpContextAccessor httpContextAccessor,
            IFormDesignOptionsRepository formDesignOptionsRepository
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            _formRepository = formDesignOptionsRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }
        public override WebResponseContent Add(SaveModel saveDataModel)
        {
            string formID = saveDataModel.MainData["FormId"].ToString();
            FormDesignOptions fo= _formRepository.DbContext.Set<FormDesignOptions>().Where(x => x.FormId ==Guid.Parse(formID)).FirstOrDefault();
            if (fo != null)
            {
                saveDataModel.MainData["FormCode"] = fo.FormCode;
            }
            return base.Add(saveDataModel);
        }

        public override WebResponseContent Update(SaveModel saveModel)
        {
            string formID = saveModel.MainData["FormId"].ToString();
            FormDesignOptions fo = _formRepository.DbContext.Set<FormDesignOptions>().Where(x => x.FormId == Guid.Parse(formID)).FirstOrDefault();
            if (fo != null)
            {
                saveModel.MainData["FormCode"] = fo.FormCode;
            }
            return base.Update(saveModel);
        }

        public override WebResponseContent Del(object[] keys, bool delList = true)
        {
            string dd = string.Join("','", keys);
            //如果表單被cmc_common_task表引用，不允許刪除
            string sSql = $@"SELECT COUNT(0) FROM cmc_common_template_mapping WHERE task_id IN  ('{dd}')";
            object obj = _repository.DapperContext.ExecuteScalar(sSql, null);

            if (Convert.ToInt32(obj) > 0)
            {
                return _responseContent.Error("任務被模板引用，不允許刪除");
            }

            return base.Del(keys, delList);
        }
    }
}
