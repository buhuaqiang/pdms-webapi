﻿/*
 *Author：jxx
 *Contact：283591387@qq.com
 *Date：2018-07-01
 * 此代码由框架生成，请勿随意更改
 */
using PDMS.System.IRepositories;
using PDMS.Core.BaseProvider;
using PDMS.Core.EFDbContext;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.System.Repositories
{
    public partial class vSys_DictionaryRepository : RepositoryBase<vSys_Dictionary>, IvSys_DictionaryRepository
    {
        public vSys_DictionaryRepository(SysDbContext dbContext)
        : base(dbContext)
        {

        }
        public static IvSys_DictionaryRepository Instance
        {
            get { return AutofacContainerModule.GetService<IvSys_DictionaryRepository>(); }
        }
    }
}

