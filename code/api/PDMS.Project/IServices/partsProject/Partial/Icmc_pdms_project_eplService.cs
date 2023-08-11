/*
*所有关于cmc_pdms_project_epl类的业务代码接口应在此处编写
*/
using PDMS.Core.BaseProvider;
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
using Microsoft.AspNetCore.Http;

namespace PDMS.Project.IServices
{
    public partial interface Icmc_pdms_project_eplService
    {

        public WebResponseContent submit(SaveModel saveModel);

        public WebResponseContent addEpl(Guid guid,String glno);


        /// <summary>
        /// 根据flag下载模版
        /// </summary>
        /// <param name="flag"></param>
        /// <returns></returns>
        WebResponseContent DownLoadTemplateByFlag(string flag);
        /// <summary>
        /// 上传epl
        /// </summary>
        /// <param name="files"></param>
        /// <param name="flag">flag=1 假EPL手動上傳，flag=2 從成本系統取得epl ，flag=3 從PLM取得epl </param>
        /// <param name="project_id"></param>
        /// <returns></returns>
        WebResponseContent UploadEpl(List<IFormFile> files, string flag, string project_id);

        /// <summary>
        /// 從成本系統取得EPL
        /// </summary>
        /// <param name="project_id"></param>
        /// <returns></returns>
        WebResponseContent getEPLFromCMS(string project_id);

        public int getDepartCount(Object obj);

        public WebResponseContent departFinal(Object obj);

        public int getDepartFinaliza(Object obj);

        public int getRepeatPart(Object obj);

        public WebResponseContent finaliza(Object obj);

        public WebResponseContent saveAll(Object obj);

        public WebResponseContent updateCost(SaveModel saveModel);

        public int getFinalStatus(Object obj);


        public WebResponseContent editEo(Guid guid, String project_status, decimal newEoFee, decimal eoFee);

        public List<cmc_pdms_project_epl_car_model> getCarModel(Object obj);

    }
}
