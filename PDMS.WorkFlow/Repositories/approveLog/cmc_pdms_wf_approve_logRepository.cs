/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *Repository提供数据库操作，如果要增加数据库操作请在当前目录下Partial文件夹cmc_pdms_wf_approve_logRepository编写代码
 */
using PDMS.WorkFlow.IRepositories;
using PDMS.Core.BaseProvider;
using PDMS.Core.EFDbContext;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.WorkFlow.Repositories
{
    public partial class cmc_pdms_wf_approve_logRepository : RepositoryBase<cmc_pdms_wf_approve_log> , Icmc_pdms_wf_approve_logRepository
    {
    public cmc_pdms_wf_approve_logRepository(SysDbContext dbContext)
    : base(dbContext)
    {

    }
    public static Icmc_pdms_wf_approve_logRepository Instance
    {
      get {  return AutofacContainerModule.GetService<Icmc_pdms_wf_approve_logRepository>(); } }
    }
}
