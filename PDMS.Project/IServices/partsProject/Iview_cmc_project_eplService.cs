/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 */
using PDMS.Core.BaseProvider;
using PDMS.Core.Utilities;
using PDMS.Entity.DomainModels;

namespace PDMS.Project.IServices
{
    public partial interface Iview_cmc_project_eplService : IService<view_cmc_project_epl>
    {
        int getEplCount(SaveModel saveModel);

        WebResponseContent submit(SaveModel saveModel);
    }
}
