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
    }
}
