/*
*所有关于cmc_pdms_project_eo_epl类的业务代码接口应在此处编写
*/
using PDMS.Core.BaseProvider;
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
namespace PDMS.Project.IServices
{
    public partial interface Icmc_pdms_project_eo_eplService
    {
        /// <summary>
        /// 处理eo数据，
        /// </summary>
        /// <param name="date"></param>
        public WebResponseContent dealEoData(string date);

        /// <summary>
        /// 方便定時任務調閱，參數待定
        /// </summary>
        /// <param name=""></param>
        public WebResponseContent ImportEOData();
    }
 }
