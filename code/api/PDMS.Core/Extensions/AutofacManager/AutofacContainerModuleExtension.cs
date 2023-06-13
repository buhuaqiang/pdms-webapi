﻿using Autofac;
using Autofac.Extensions.DependencyInjection;
using Dapper;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Caching.Memory;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.DependencyModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Runtime.Loader;
using PDMS.Core.CacheManager;
using PDMS.Core.Configuration;
using PDMS.Core.Const;
using PDMS.Core.Dapper;
using PDMS.Core.DBManager;
using PDMS.Core.EFDbContext;
using PDMS.Core.Enums;
using PDMS.Core.Extensions.AutofacManager;
//using PDMS.Core.KafkaManager.IService;
//using PDMS.Core.KafkaManager.Service;
using PDMS.Core.ManageUser;
using PDMS.Core.ObjectActionValidator;
using PDMS.Core.Services;
using Microsoft.AspNetCore.Hosting;
using System.IO;

namespace PDMS.Core.Extensions
{
    public static class AutofacContainerModuleExtension
    {
        //  private static bool _isMysql = false;
        public static IServiceCollection AddModule(this IServiceCollection services, ContainerBuilder builder, IConfiguration configuration)
        {
            //services.AddSession();
            //services.AddMemoryCache();
            //初始化配置文件
            AppSetting.Init(services, configuration);
            Type baseType = typeof(IDependency);
            var compilationLibrary = DependencyContext.Default
                .RuntimeLibraries
                .Where(x => !x.Serviceable
                && x.Type == "project")
                .ToList();
            var count1 = compilationLibrary.Count;
            List<Assembly> assemblyList = new List<Assembly>();

            foreach (var _compilation in compilationLibrary)
            {
                try
                {
                    assemblyList.Add(AssemblyLoadContext.Default.LoadFromAssemblyName(new AssemblyName(_compilation.Name)));
                }
                catch (Exception ex)
                {
                    Console.WriteLine(_compilation.Name + ex.Message);
                }
            }
            //插件式开发
            //try
            //{
            //    var provider = services.BuildServiceProvider();
            //    IWebHostEnvironment webHostEnvironment = provider.GetRequiredService<IWebHostEnvironment>();
            //    string rootPath = (webHostEnvironment.ContentRootPath + "\\plugs").ReplacePath();
            //    foreach (var item in Directory.GetFiles(rootPath).Where(x => x.EndsWith(".dll")))
            //    {
            //        string path = ($"{item}").ReplacePath();
            //        AssemblyName assemblyName = Assembly.LoadFrom(path).GetName(); ;
            //        assemblyList.Add(AssemblyLoadContext.Default.LoadFromAssemblyName(assemblyName));
            //    }
            //}
            //catch (Exception ex)
            //{
            //    Console.WriteLine($"解析类库异常：{ex.Message + ex.StackTrace}");
            //}


            var data = builder.RegisterAssemblyTypes(assemblyList.ToArray())
               .Where(type => baseType.IsAssignableFrom(type) && !type.IsAbstract);

             data.AsSelf().AsImplementedInterfaces()
             .InstancePerLifetimeScope();
            builder.RegisterType<UserContext>().InstancePerLifetimeScope();
            builder.RegisterType<ActionObserver>().InstancePerLifetimeScope();
            //model校验结果
            builder.RegisterType<ObjectModelValidatorState>().InstancePerLifetimeScope();
            string connectionString = DBServerProvider.GetConnectionString(null);


             services.AddDbContextPool<SysDbContext>(optionsBuilder => { optionsBuilder.UseSqlServer(connectionString); }, 64);

            services.AddDbContextPool<ServiceDbContext>(optionsBuilder => { optionsBuilder.UseSqlServer(connectionString); }, 64);

            //启用缓存
            if (AppSetting.UseRedis)
            {
                builder.RegisterType<RedisCacheService>().As<ICacheService>().SingleInstance();
            }
            else
            {
                builder.RegisterType<MemoryCacheService>().As<ICacheService>().SingleInstance();
            }

            DbCache.Init();
            //kafka注入
            //if (AppSetting.Kafka.UseConsumer)
            //    builder.RegisterType<KafkaConsumer<string, string>>().As<IKafkaConsumer<string, string>>().SingleInstance();
            //if (AppSetting.Kafka.UseProducer)
            //    builder.RegisterType<KafkaProducer<string, string>>().As<IKafkaProducer<string, string>>().SingleInstance();
            return services;
        }

    }
}
