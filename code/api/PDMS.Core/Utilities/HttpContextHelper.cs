using Microsoft.AspNetCore.Http;
using PDMS.Core.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PDMS.Core.Utilities
{
    public class HttpContextHelper
    {
        public static WebResponseContent HttpContextBase(IHeaderDictionary header)
        {
            var keys = header.Keys;
            var values = header.Values;
            bool key = keys.Any((id) =>
            {
                return AppSetting.quartzHeader.Name.Equals(id, StringComparison.OrdinalIgnoreCase);
            });
            bool value = values.Any((id) =>
            {
                return AppSetting.quartzHeader.Password.Equals(id, StringComparison.OrdinalIgnoreCase);
            });
            if (!key)
            {
                return new WebResponseContent { Message = "人員不存在，沒有權限", Status = false };
            }
            if (!value)
            {
                return new WebResponseContent { Message = "密碼不對，沒有權限", Status = false };
            }
            return new WebResponseContent { Status = true };
        }
    }
}
