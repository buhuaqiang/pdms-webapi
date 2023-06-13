using VolPro.Core.BaseProvider;
using VolPro.Core.Utilities;
using VolPro.Entity.DomainModels;
using System.Threading.Tasks;

namespace VolPro.System.IServices
{
    public partial interface ISys_UserService
    {

        Task<WebResponseContent> Login(LoginInfo loginInfo, bool verificationCode = true);
        Task<WebResponseContent> ReplaceToken();
        Task<WebResponseContent> ModifyPwd(string oldPwd, string newPwd);
        Task<WebResponseContent> GetCurrentUserInfo();
    }
}

