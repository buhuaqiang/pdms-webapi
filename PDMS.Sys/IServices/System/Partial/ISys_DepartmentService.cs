/*
*所有关于Sys_Department类的业务代码接口应在此处编写
*/
using PDMS.Core.BaseProvider;
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
using System.Collections.Generic;
using System;

namespace PDMS.System.IServices
{
    public partial interface ISys_DepartmentService
    {

        List<Sys_Department> getGroupList(Sys_Department sysDepartment);
    }
 }
