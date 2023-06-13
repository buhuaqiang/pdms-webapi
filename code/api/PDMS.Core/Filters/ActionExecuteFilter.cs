using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using System;
using System.Linq;
using PDMS.Core.Enums;
using PDMS.Core.Extensions;
using PDMS.Core.ObjectActionValidator;
using PDMS.Core.Services;
using PDMS.Core.Utilities;

namespace PDMS.Core.Filters
{
    public class ActionExecuteFilter : IActionFilter
    {

        public void OnActionExecuting(ActionExecutingContext context)
        {
            //验证方法参数
            context.ActionParamsValidator();
        }
        public void OnActionExecuted(ActionExecutedContext context)
        {

        }
    }
}