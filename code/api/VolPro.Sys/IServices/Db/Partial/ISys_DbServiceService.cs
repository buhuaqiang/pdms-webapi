/*
*所有关于Sys_DbService类的业务代码接口应在此处编写
*/
using VolPro.Core.BaseProvider;
using VolPro.Entity.DomainModels;
using VolPro.Core.Utilities;
using System.Linq.Expressions;
using System;

namespace VolPro.System.IServices
{
    public partial interface ISys_DbServiceService
    {
        WebResponseContent CreateDb(Guid id);
    }
 }
