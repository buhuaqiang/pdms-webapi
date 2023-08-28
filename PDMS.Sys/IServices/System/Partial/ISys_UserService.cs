using PDMS.Core.BaseProvider;
using PDMS.Core.Utilities;
using PDMS.Entity.DomainModels;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;


namespace PDMS.System.IServices
{
    public partial interface ISys_UserService
    {

        Task<WebResponseContent> Login(LoginInfo loginInfo, bool verificationCode = true);
        Task<WebResponseContent> ReplaceToken();
        Task<WebResponseContent> ModifyPwd(string oldPwd, string newPwd);
        Task<WebResponseContent> GetCurrentUserInfo();

        List<Sys_User> getUserList(LoginInfo loginInfo);
        List<Sys_User> getUserName(Object obj);
        List<Sys_User> getUserCode(Object obj);
        List<Sys_UserDepartment> getSysUserDeptID(Object obj);
    }
}

