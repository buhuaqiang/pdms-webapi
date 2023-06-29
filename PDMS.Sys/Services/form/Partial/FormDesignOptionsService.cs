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

namespace PDMS.System.Services
{
    public partial class FormDesignOptionsService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly IFormDesignOptionsRepository _repository;//访问数据库

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
            //设置默认status=0(暂存)
            return base.Add(saveDataModel);
        }

        public override WebResponseContent Update(SaveModel saveModel)
        {
            //修改舊數據的del_flag=1
            //複製一份數據做新增，發佈狀態改為 暫存 status=0
            return base.Update(saveModel);
        }

        public override WebResponseContent Del(object[] keys, bool delList = true)
        {
            //如果表單被cmc_common_task表引用，不允許刪除
            return base.Del(keys, delList);
        }

    }
}
