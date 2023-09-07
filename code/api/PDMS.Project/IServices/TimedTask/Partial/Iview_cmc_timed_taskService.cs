/*
*所有关于view_cmc_timed_task类的业务代码接口应在此处编写
*/
using PDMS.Core.BaseProvider;
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
using Microsoft.AspNetCore.Http;

namespace PDMS.Project.IServices
{
    public partial interface Iview_cmc_timed_taskService
    {
        WebResponseContent ImportEplByFalse(IHeaderDictionary header);

        WebResponseContent ImportEplByPLM(IHeaderDictionary header);

        WebResponseContent UpdateTaskStatus(IHeaderDictionary header);

    }
 }
