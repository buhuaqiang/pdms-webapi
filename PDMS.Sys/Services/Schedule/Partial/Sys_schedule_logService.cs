/*
 *所有关于Sys_schedule_log类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*Sys_schedule_logService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using System;

namespace PDMS.Sys.Services
{
    public partial class Sys_schedule_logService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly ISys_schedule_logRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public Sys_schedule_logService(
            ISys_schedule_logRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }
        public List<Sys_schedule_log> ScheduleLogData(string task_name)
        {
            List<Sys_schedule_log> scheduleLogList = new List<Sys_schedule_log>();
            string sql = $@"select dl.* from Sys_Dictionary d 
                            left join Sys_DictionaryList dl on d.Dic_ID = dl.Dic_ID
                            where d.DicName = 'schedule_task_name' and dl.DicName = '{task_name}'";
            List<Sys_DictionaryList> dicList = repository.DapperContext.QueryList<Sys_DictionaryList>(sql, null);
            if (dicList.Count() > 0)
            {
                scheduleLogList = repository.DbContext.Set<Sys_schedule_log>()
                    .Where(x => x.task_id == dicList[0].DicValue && x.CreateDate >= DateTime.Now.AddDays(-7))
                    .OrderByDescending(x => x.CreateDate)
                    .ToList();
            }
            return scheduleLogList;
        }
    }
}
