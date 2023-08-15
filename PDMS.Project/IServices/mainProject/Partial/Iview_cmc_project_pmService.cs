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
        /// <summary>
        /// 根据glno从cms系统查询专案信息
        /// </summary>
        /// <param name="glno"></param>
        /// <returns></returns>
        public WebResponseContent getProjectInfoFromCMS(string glno);

        /// <summary>
        /// 根據glno從cms系統查詢專案組織信息
        /// </summary>
        /// <param name="glno"></param>
        /// <returns></returns>
        public WebResponseContent getProjectOrgFromCMS(string proid);

        public WebResponseContent getEPLFromCMS(string proid);
        WebResponseContent release(SaveModel saveModel);

        public WebResponseContent saveRelease(SaveModel saveModel);

        public int isGlnoRepeated(String glno);

        public int isCompletion(object obj);
    }
}
