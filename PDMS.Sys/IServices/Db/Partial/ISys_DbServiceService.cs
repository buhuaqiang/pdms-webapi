/*
*所有关于Sys_DbService类的业务代码接口应在此处编写
*/
using PDMS.Core.BaseProvider;
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
using System;

namespace PDMS.System.IServices
{
    public partial interface ISys_DbServiceService
    {
        WebResponseContent CreateDb(Guid id);
    }
 }
