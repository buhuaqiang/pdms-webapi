﻿using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;
using VolPro.Core.Const;
using VolPro.Core.Enums;
using VolPro.Core.ManageUser;
using VolPro.Core.UserManager;

namespace VolPro.Core.Infrastructure
{
    public static class DictionaryHandler
    {
        /*2020.05.01增加根据用户信息加载字典数据源sql*/

        /// <summary>
        /// 获取自定义数据源sql
        /// </summary>
        /// <param name="dicNo"></param>
        /// <param name="originalSql"></param>
        /// <returns></returns>
        public static string GetCustomDBSql(string dicNo, string originalSql)
        {
            switch (dicNo)
            {
                case "部门级联":
                    originalSql = GetDeptSql(originalSql);
                    break;
                //2020.05.24增加绑定table表时，获取所有的角色列表
                //注意，如果是2020.05.24之前获取的数据库脚本
                //请在菜单【下拉框绑定设置】添加一个字典编号【t_roles】,除了字典编号，其他内容随便填写
                case "roles":
                case "t_roles":
                case "tree_roles":
                    originalSql = GetRolesSql(originalSql);
                    break;
                case "集团":
                    //SELECT [GroupId] AS [key],GroupName AS value FROM Sys_Group
                    if (IsPgSql)
                    {
                        originalSql = "SELECT \"GroupId\" AS key,\"GroupName\" AS value FROM  PUBLIC.\"Sys_Group\"";
                    }
                    break;
                default:
                    break;
            }
            return originalSql;
        }

        private static bool IsPgSql
        {
            get { return DBType.Name == DbCurrentType.PgSql.ToString(); }
        }

        /// <summary>
        /// 获取解决的数据源，只能看到自己与下级所有角色
        /// </summary>
        /// <param name="context"></param>
        /// <param name="originalSql"></param>
        /// <returns></returns>
        public static string GetRolesSql(string originalSql)
        {
            originalSql = "SELECT Role_Id AS id,parentId,Role_Id AS  'key',RoleName AS value FROM Sys_Role where 1=1 ";
            if (UserContext.Current.IsSuperAdmin)
            {
                return originalSql;
            }

            var roleIds = UserContext.Current.GetAllChildrenRoleIds();
            string sql = $@" {originalSql}  and  Role_Id in ({string.Join(',', roleIds)})";
            return sql;
        }

        /// <summary>
        /// 部门数据源
        /// </summary>
        /// <param name="originalSql"></param>
        /// <returns></returns>
        public static string GetDeptSql(string originalSql)
        {
            if (IsPgSql)
            {
                originalSql = "SELECT \"DepartmentId\" AS id,\"DepartmentId\" AS key,\"ParentId\" AS parentId,\"DepartmentName\" AS value FROM PUBLIC.\"Sys_Department\" ";
            }
            else
            {
                originalSql = "SELECT DepartmentId AS id,DepartmentId AS 'key',ParentId AS parentId,DepartmentName AS value FROM Sys_Department";
            }
            if (UserContext.Current.IsSuperAdmin)
            {
                return originalSql;
            }
            var deptIds = UserContext.Current.DeptIds;
            deptIds = DepartmentContext.GetAllChildrenIds(deptIds);

            switch (DBType.Name)
            {
                //mysql如果端口不是3306，这里也需要修改
                case "MySql":
                    originalSql = $@"{originalSql}
                           WHERE DepartmentId in ('{string.Join("','", deptIds)}')";
                    break;
                case "PgSql":
                    originalSql = $"{originalSql}  WHERE \"DepartmentId\" in ('{string.Join("','", deptIds)}')";
                    break;
                case "MsSql":
                    originalSql = $@"{originalSql}
                           WHERE DepartmentId in ('{string.Join("','", deptIds)}')";
                    break;
                case "Oracle":
                    originalSql = $@"{originalSql}
                           WHERE DepartmentId in ('{string.Join("','", deptIds)}')";
                    break;
            }
            return originalSql;
        }

    }
}
