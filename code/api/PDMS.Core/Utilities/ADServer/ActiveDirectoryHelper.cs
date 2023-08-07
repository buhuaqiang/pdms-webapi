using System;
using System.Collections.Generic;
using System.Configuration;
using System.DirectoryServices;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PDMS.Core.Utilities.ADServer
{
    public class ActiveDirectoryHelper
    {
        ///
        /// LDAP绑定路径，参考域地址LDAP://ptr.petreoshcna
        ///
        private static string ADPath = ConfigurationManager.AppSettings["str"];

        /// <summary>
        /// 通过用户名密码验证是否能够登录
        /// </summary>
        /// <param name="Account">账号</param>
        /// <param name="Password">密码</param>
        /// <returns>返回true表示账号密码正确，登录验证通过</returns>
        public static bool Validate(string Account, string Password)
        {
            DirectoryEntry Entry;

            //创建验证用的实例
            DirectoryEntry entry = new DirectoryEntry(ADPath, Account, Password);
            try
            {
                object obj = entry.NativeObject;
                DirectorySearcher search = new DirectorySearcher(entry);
                //搜索条件是SAMAccountName
                search.Filter = "(SAMAccountName= " + Account + ") ";
                search.PropertiesToLoad.Add("cn");
                //获取搜索结果
                Entry = search.FindOne().GetDirectoryEntry();
                return true;
            }
            catch
            {
                return false;
            }
        }

        ///   <summary> 
        ///   读取AD用户信息 
        ///   </summary> 
        ///   <param   name= "ADUsername "> 用户 </param> 
        ///   <param   name= "ADPassword "> 密码 </param> 
        ///   <param   name= "domain "> 域名 </param> 
        ///   <returns></returns> 
        public static SortedList<string, string> AdUserInfo(string ADUsername, string ADPassword)
        {
            System.DirectoryServices.DirectorySearcher src;
            //string ADPath = "LDAP:// " + domain;//   "ou=总公司,DC=abc,DC=com,DC=cn ";   + ",ou=总公司 " 
            //string ADPath = ADPath

            string domain = ADPath.Replace("LDAP://", "");

            SortedList<string, string> _sortedList = new SortedList<string, string>();
            string domainAndUsername = domain + @"\" + ADUsername;
            System.DirectoryServices.DirectoryEntry de = new System.DirectoryServices.DirectoryEntry(ADPath, domainAndUsername, ADPassword);

            src = new System.DirectoryServices.DirectorySearcher(de);
            src.Filter = "(SAMAccountName=" + ADUsername + ")";
            //   此参数可以任意设置，但不能不设置，如不设置读取AD数据为0~999条数据，设置后可以读取大于1000条数据。 
            src.PageSize = 5;
            //   src.SizeLimit   =   2000; 
            src.SearchScope = System.DirectoryServices.SearchScope.Subtree;
            try
            {
                var list = src.FindAll();
                //LogHelpter.AddLog("获取用户信息成功");

                string json = Newtonsoft.Json.JsonConvert.SerializeObject(list);
                //LogHelpter.AddLog("获取用户信息:");
                //LogHelpter.AddLog(json);

                /**  返回的参考格式
                 [{
	"Path": "LDAP://ptr.1998/CN=张飞,OU=大理寺,OU=三法司,OU=刑部,OU=西南区域中心,DC=ptr,DC=1998",
	"Properties": {
		"sn": ["张"],
		"givenname": ["飞"],
		"samaccountname": ["zyw2018"],
		"cn": ["张飞"],
		"pwdlastset": [132064379393008820],
		"whencreated": ["2018-12-19T08:23:44"],
		"accountexpires": [9223372036854775807],
		"displayname": ["张飞"],
		"lastlogon": [132103071131352438],
		"samaccounttype": [805306368],
		"countrycode": [0],
		"objectguid": ["hG/roK368Uqqw5kiTo0bzQ=="],
		"lastlogontimestamp": [132102380907396197],
		"usnchanged": [21787838],
		"whenchanged": ["2019-08-14T06:54:50"],
		"name": ["张飞"],
		"objectsid": ["AQUAAAAAAAUVAAAAilpBYELHdFIH5TsrrLwQAA=="],
		"logoncount": [1],
		"instancetype": [4],
		"primarygroupid": [513],
		"objectcategory": ["CN=Person,CN=Schema,CN=Configuration,DC=ptr,DC=1998"],
		"userprincipalname": ["zyw2018@1998.com.cn"],
		"msexchuseraccountcontrol": [0],
		"useraccountcontrol": [66048],
		"dscorepropagationdata": ["2019-06-13T03:16:25", "1601-01-01T00:00:01"],
		"distinguishedname": ["CN=张飞,OU=大理寺,OU=三法司,OU=刑部,OU=中心1,DC=ptr,DC=1998"],
		"objectclass": ["top", "person", "organizationalPerson", "user"],
		"usncreated": [2890900],
		"memberof": ["CN=刑部,OU=刑部,OU=中心1,DC=ptr,DC=1998"],
		"mail": ["zyw2018@1998.com.cn"],
		"adspath": ["LDAP://ptr.1998/CN=张飞,OU=大理寺,OU=三法司,OU=刑部,OU=中心1,DC=ptr,DC=1998"],
		"department": ["大理寺.昝世堂"],
		"codepage": [0],
		"company": ["刑部"]
	}
}]
                 **/

                dynamic data = Newtonsoft.Json.JsonConvert.DeserializeObject<dynamic>(json);
                string prop = Convert.ToString(data[0].Properties);
                var sortedDict = Newtonsoft.Json.JsonConvert.DeserializeObject<SortedList<string, string[]>>(prop);

                //用户姓名
                string userName = sortedDict["name"][0];
                string departmentStr = sortedDict["distinguishedname"][0];

                //公司
                string company = departmentStr.Split(',')[2].Replace("OU=", "").Trim();

                //部门
                string department = departmentStr.Split(',')[1].Replace("OU=", "").Trim();

                string companyDepartment = company + ">" + department;
                _sortedList.Add("userName", userName);
                _sortedList.Add("department", companyDepartment);
            }
            catch (System.Exception ex)
            {
                Console.WriteLine(ex.Message);
                //LogHelpter.AddLog(ex.ToString());
                //throw new Exception("Get   Ad   Info ", ex);
            }
            return _sortedList;
        }

    }
}
