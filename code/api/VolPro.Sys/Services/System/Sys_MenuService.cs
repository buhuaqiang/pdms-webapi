﻿using VolPro.System.IRepositories;
using VolPro.System.IServices;
using VolPro.Core.BaseProvider;
using VolPro.Core.Extensions.AutofacManager;
using VolPro.Entity.DomainModels;

namespace VolPro.System.Services
{
    public partial class Sys_MenuService : ServiceBase<Sys_Menu, ISys_MenuRepository>, ISys_MenuService, IDependency
    {
        public Sys_MenuService(ISys_MenuRepository repository)
             : base(repository) 
        { 
           Init(repository);
        }
        public static ISys_MenuService Instance
        {
           get { return AutofacContainerModule.GetService<ISys_MenuService>(); }
        }
    }
}

