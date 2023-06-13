using PDMS.Core.Configuration;
using PDMS.Core.Extensions;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.DependencyModel;
using Microsoft.Extensions.Hosting.Internal;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.Loader;
using System.Text;
using PDMS.Core.Const;
using PDMS.Core.Enums;
using Dapper;
using PDMS.Core.Dapper;
using Microsoft.EntityFrameworkCore.Query;
using Microsoft.EntityFrameworkCore.SqlServer.Query.Internal;

namespace PDMS.Core.EFDbContext
{
    public abstract class BaseDbContext : DbContext
    {
        protected abstract string ConnectionString { get; }

        public bool QueryTracking
        {
            set
            {
                this.ChangeTracker.QueryTrackingBehavior = value ? QueryTrackingBehavior.TrackAll : QueryTrackingBehavior.NoTracking;
            }
        }
        public BaseDbContext() : base() { }
        public BaseDbContext(DbContextOptions<BaseDbContext> options) : base(options) { }

        protected void UseDbType(DbContextOptionsBuilder optionsBuilder, string connectionString)
        {
            if (DBType.Name == DbCurrentType.MsSql.ToString())
            {
                if (AppSetting.UseSqlserver2008)
                {
                    optionsBuilder.ReplaceService<IQueryTranslationPostprocessorFactory, SqlServer2008QueryTranslationPostprocessorFactory>();
                }
                optionsBuilder.UseSqlServer(connectionString);
            }
            else if (DBType.Name == DbCurrentType.MySql.ToString())
            {
                optionsBuilder.UseMySql(connectionString, new MySqlServerVersion(new Version(8, 0, 11)));
            }
            else if (DBType.Name == DbCurrentType.PgSql.ToString())
            {
                optionsBuilder.UseNpgsql(connectionString);
            }
            //else if (DBType.Name == DbCurrentType.Oracle.ToString())
            //{
            //    //optionsBuilder.UseOracle(connectionString, b => b.UseOracleSQLCompatibility("11"));
            //}
            else
            {
                throw new Exception("数据库未实现");
                //  optionsBuilder.UseSqlServer(connectionString);
            }

        }

        protected void OnModelCreating(ModelBuilder modelBuilder, Type type)
        {
            try
            {
                //获取所有类库
                var compilationLibrary = DependencyContext
                    .Default
                    .CompileLibraries
                    .Where(x => !x.Serviceable && x.Type != "package" && x.Type == "project");
                foreach (var _compilation in compilationLibrary)
                {
                    //加载指定类
                    AssemblyLoadContext.Default
                    .LoadFromAssemblyName(new AssemblyName(_compilation.Name))
                    .GetTypes().Where(x => x.GetTypeInfo().BaseType != null
                    && x.BaseType == (type)).ToList()
                    .ForEach(t => { modelBuilder.Entity(t); });
                }

                //插件式开发
                //try
                //{
                //    string rootPath = (AppSetting.CurrentPath + "\\plugs").ReplacePath();
                //    foreach (var item in Directory.GetFiles(rootPath).Where(x => x.EndsWith(".dll")))
                //    {
                //        string path = ($"{item}").ReplacePath();
                //        Assembly.LoadFile(path).GetTypes().Where(x => x.GetTypeInfo().BaseType != null
                //        && x.BaseType == (type)).ToList()
                //     .ForEach(t => {
                //         Console.Write(t.Name);
                //         modelBuilder.Entity(t);

                //     });
                //    }
                //}
                //catch (Exception ex)
                //{
                //    Console.WriteLine($"EF解析类库异常：{ex.Message + ex.StackTrace}");
                //}

                base.OnModelCreating(modelBuilder);
            }
            catch (Exception ex)
            {
                string mapPath = ($"Log/").MapPath();
                Utilities.FileHelper.WriteFile(mapPath, $"syslog_{DateTime.Now.ToString("yyyyMMddHHmmss")}.txt", ex.Message + ex.StackTrace + ex.Source);
            }

        }

    }
}
