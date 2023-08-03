/*
*所有关于cmc_pdms_wf_master类的业务代码接口应在此处编写
*/
using PDMS.Core.BaseProvider;
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
namespace PDMS.WorkFlow.IServices
{
    public partial interface Icmc_pdms_wf_masterService
    {
        WebResponseContent MasterUpdate(SaveModel saveModel, string status, string apply_type, Sys_User apprverUser);
    }
 }
