/*
*所有关于cmc_common_task_template_set类的业务代码接口应在此处编写
*/
using PDMS.Core.BaseProvider;
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
using System.Collections.Generic;

namespace PDMS.Sys.IServices
{
    public partial interface Icmc_common_task_template_setService
    {
        public List<cmc_common_task_template_set> GetList(string template_id);

        public WebResponseContent delSet(string set_id);
    }
 }
