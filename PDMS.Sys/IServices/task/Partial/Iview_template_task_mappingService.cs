/*
*所有关于view_template_task_mapping类的业务代码接口应在此处编写
*/
using PDMS.Core.BaseProvider;
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
using System.Collections.Generic;

namespace PDMS.Sys.IServices
{
    public partial interface Iview_template_task_mappingService
    {
        
        List<view_template_task_mapping> getTaskListByCondition(object saveModel);
        List<view_template_task_mapping> getTaskListForProject(object saveModel);
    }
 }
