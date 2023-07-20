/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被代码生成器覆盖
 *所有业务编写全部应在Partial文件夹下view_UserDepartmentService与Iview_UserDepartmentService中编写
 */
using PDMS.Project.IRepositories;
using PDMS.Project.IServices;
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;

namespace PDMS.Project.Services
{
    public partial class view_UserDepartmentService : ServiceBase<view_UserDepartment, Iview_UserDepartmentRepository>
    , Iview_UserDepartmentService, IDependency
    {
    public view_UserDepartmentService(Iview_UserDepartmentRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static Iview_UserDepartmentService Instance
    {
      get { return AutofacContainerModule.GetService<Iview_UserDepartmentService>(); } }
    }
 }
