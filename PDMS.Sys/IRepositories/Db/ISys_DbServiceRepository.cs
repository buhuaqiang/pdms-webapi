/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *Repository提供数据库操作，如果要增加数据库操作请在当前目录下Partial文件夹ISys_DbServiceRepository编写接口
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PDMS.Core.BaseProvider;
using PDMS.Entity.DomainModels;
using PDMS.Core.Extensions.AutofacManager;
namespace PDMS.System.IRepositories
{
    public partial interface ISys_DbServiceRepository : IDependency,IRepository<Sys_DbService>
    {
    }
}
