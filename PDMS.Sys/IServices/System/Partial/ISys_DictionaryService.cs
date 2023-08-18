using System.Collections.Generic;
using System.Threading.Tasks;
using PDMS.Core.BaseProvider;
using PDMS.Entity.DomainModels;
using static PDMS.System.Services.Sys_DictionaryService;

namespace PDMS.System.IServices
{
    public partial interface ISys_DictionaryService
    {
        /// <summary>
        /// 代码生成器获取所有字典项(超级管理权限)
        /// </summary>
        /// <returns></returns>
        Task<List<string>> GetBuilderDictionary();
        object GetVueDictionary(string[] dicNos);
        object GetTableDictionary(Dictionary<string, object[]> keyData);
        object GetSearchDictionary(string dicNo, string value);

        /// <summary>
        /// 表单设置为远程查询，重置或第一次添加表单时，获取字典的key、value
        /// </summary>
        /// <param name="dicNo"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        Task<object> GetRemoteDefaultKeyValue(string dicNo, string key);


        List<DictionaryInfo> GetDictionaryData(int dic_id, string dic_name);

       public List<DictionaryInfo1> GetDictionaryDataList( object obj);
    }
}

