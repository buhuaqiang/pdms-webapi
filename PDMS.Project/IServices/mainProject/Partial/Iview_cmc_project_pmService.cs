/*
*所有关于view_cmc_project_pm类的业务代码接口应在此处编写
*/
using PDMS.Core.BaseProvider;
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;

namespace PDMS.Project.IServices
{
    public partial interface Iview_cmc_project_pmService : IService<view_cmc_project_pm>
    {
        WebResponseContent release(SaveModel saveModel);
    }
}
