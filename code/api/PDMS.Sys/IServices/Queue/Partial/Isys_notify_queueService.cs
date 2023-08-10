/*
*所有关于sys_notify_queue类的业务代码接口应在此处编写
*/
using PDMS.Core.BaseProvider;
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
using Microsoft.AspNetCore.Http;

namespace PDMS.Sys.IServices
{
    public partial interface Isys_notify_queueService
    {
        WebResponseContent MailJob(IHeaderDictionary header);
    }
 }
