/*
*所有关于cmc_group_model_set类的业务代码接口应在此处编写
*/
using PDMS.Core.BaseProvider;
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
namespace PDMS.Sys.IServices
{
    public partial interface Icmc_group_model_setService
    {
        /// <summary>
        /// 查詢處理未設置的群組
        /// </summary>
        /// <returns></returns>
        WebResponseContent dealUnSetGroup();
    }
 }
