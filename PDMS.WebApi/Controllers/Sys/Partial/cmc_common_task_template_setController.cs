/*
 *接口编写处...
*如果接口需要做Action的权限验证，请在Action上使用属性
*如: [ApiActionPermission("cmc_common_task_template_set",Enums.ActionPermissionOptions.Search)]
 */
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using PDMS.Entity.DomainModels;
using PDMS.Sys.IServices;
using PDMS.DbTest.Repositories;
using PDMS.Sys.Repositories;
using System.Linq;
using PDMS.Core.Filters;

namespace PDMS.Sys.Controllers
{
    public partial class cmc_common_task_template_setController
    {
        private readonly Icmc_common_task_template_setService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public cmc_common_task_template_setController(
            Icmc_common_task_template_setService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        
        [Route("getList"), HttpGet]
        [ApiActionPermission()]
        public  ActionResult GetList(string template_id)
        {
            List<cmc_common_task_template_set> list = _service.GetList(template_id);

            var data=list.Select(s => new
            {
                id = s.set_id,
                ParentId=s.parent_set_id,
                name = s.dicName
            });

            return Json(data);
        }
        
        [Route("getListHasProject"), HttpGet]
        [ApiActionPermission()]
        public ActionResult GetListHasProject(String template_id , String project_id)
        {
            List<cmc_common_task_template_set> list = _service.GetListHasProject(template_id, project_id);

            var data = list.Select(s => new
            {
                id = s.set_id,
                ParentId = s.parent_set_id,
                name = s.dicName
            });

            return Json(data);
        }


        [ApiActionPermission()]
        [Route("Add"), HttpPost]
        public override ActionResult Add([FromBody] SaveModel saveModel)
        {
            return Json(_service.Add(saveModel));
        }

        //delSet
        [ApiActionPermission()]
        [Route("del"), HttpPost]
        public override ActionResult Del([FromBody] object[] keys)
        {
            return Json(_service.Del(keys));
        }

    }
}
