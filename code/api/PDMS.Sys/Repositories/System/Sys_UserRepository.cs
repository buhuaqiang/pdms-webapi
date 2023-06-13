/*
 *Author：jxx
 *Contact：283591387@qq.com
 *Date：2018-07-01
 * 此代码由框架生成，请勿随意更改
 */
using PDMS.System.IRepositories;
using PDMS.Core.BaseProvider;
using PDMS.Core.EFDbContext;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.System.Repositories
{
    public partial class Sys_UserRepository : RepositoryBase<Sys_User>, ISys_UserRepository
    {
        public Sys_UserRepository(SysDbContext dbContext)
        : base(dbContext)
        {

        }
        public static ISys_UserRepository Instance
        {
            get { return AutofacContainerModule.GetService<ISys_UserRepository>(); }
        }
    }
}

