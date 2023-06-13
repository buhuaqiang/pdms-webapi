using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PDMS.Core.Configuration;
using PDMS.Core.Const;
using PDMS.Core.DBManager;
using PDMS.Core.EFDbContext;
using PDMS.Core.Utilities;
using PDMS.Entity.DomainModels;

namespace PDMS.Core.CacheManager
{
    public static class DbCache
    {
        private static List<Sys_DbService> DbServices = null;
        private static object _lock_sbcnew = new object();


        public static void Init()
        {
            using (var dbContext = new SysDbContext())
            {
                DbServices = dbContext.Set<Sys_DbService>()
                    //.Where(x => x.DatabaseName != null && x.DbIpAddress != null && x.UserId != null && x.Pwd != null)
                    .ToList();
                InitConnection();
            }

        }
        public static List<Sys_DbService> GetList()
        {
            return DbServices;
        }

        public static WebResponseContent Reload(WebResponseContent webResponse)
        {
            if (webResponse.Status)
            {
                Init();
            }
            return webResponse;
        }

        public static void InitConnection()
        {
            foreach (var item in DbServices)
            {
                InitConnection(item);
            }
        }

        public static string InitConnection(Sys_DbService item, string databaseName = null)
        {
            string connectionString = GetConnectionString(item, databaseName);

            if (databaseName == null)
            {
                DBServerProvider.SetConnection(item.DbServiceId.ToString(), connectionString);
            }
            return connectionString;
        }

        public static string GetConnectionString(Sys_DbService item, string databaseName = null)
        {
            string connectionString = null;
            switch (DBType.Name)
            {
                //mysql如果端口不是3306，这里也需要修改
                case "MySql":
                    connectionString = @$" Data Source={item.DbIpAddress};Database={databaseName ?? item.DatabaseName};AllowLoadLocalInfile=true;User ID={item.UserId};Password={item.Pwd};allowPublicKeyRetrieval=true;pooling=true;CharSet=utf8;port=3306;sslmode=none;";
                    break;
                case "PgSql":
                    connectionString = $"Host={item.DbIpAddress};Port=5432;User id={item.UserId};password={item.Pwd};Database={databaseName ?? item.DatabaseName};";

                    break;
                case "MsSql":
                    connectionString = @$"Data Source={item.DbIpAddress};Initial Catalog={databaseName ?? item.DatabaseName};Persist Security Info=True;User ID={item.UserId};Password={item.Pwd};Connect Timeout=500;Max Pool Size = 512;";

                    break;
                case "Oracle":
                    Console.WriteLine($"未实现数据库：{DBType.Name}");
                    break;
            }
            return connectionString;
        }


        public static Sys_DbService GetDbInfo(Guid dbServiceId)
        {
            return DbServices.Where(x => x.DbServiceId == dbServiceId).FirstOrDefault();
        }

        public static IEnumerable<Sys_DbService> GetDbInfo(Func<Sys_DbService, bool> where)
        {
            return DbServices.Where(where);
        }


    }
}
