using Microsoft.Extensions.Configuration;
using Newtonsoft.Json.Linq;
using OfficeOpenXml.FormulaParsing.Excel.Functions.RefAndLookup;
using OfficeOpenXml.FormulaParsing.Excel.Functions.Text;
using PDMS.Core.Configuration;
using SkiaSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PDMS.Core.Utilities.WebServices
{
    public class InterfaceHelper
    {

        private static InterfaceHelper Inter_Helper;

        private static InterFaceData data_Helper;

        /// <summary>
        /// 单例模式
        /// </summary>
        public static InterfaceHelper Helper
        {
            get { return Inter_Helper ?? (Inter_Helper = new InterfaceHelper()); }
        }

        private static bool Success = true;


        public static List<InterFaceData> AnalysisDataByList(string url="")
        {
            List<InterFaceData> List = new List<InterFaceData>();
            //获取CMC人事组织，接口地址
            IConfigurationSection section = AppSetting.GetSection("CMCInterface");
            var path = section["path"];
            url = path + "?imputString=ORG:" + url + "/";
            Dictionary<string, string> parameters = new Dictionary<string, string>();
            //parameters.Add("name", "10086");
           // string _result = HttpHelper.Helper.GetResponseString(url, ERequestMode.Post, parameters, Encoding.Default, Encoding.UTF8);

            string _result = "{'status':'Success','retValue':[['935799','李重賢',''],['360029','林娟槙',''],['872647','李真如',''],['775928','林敏男',''],['820372','劉文祺',''],['201995','鄧宇柯',''],['190163','曾開宏',''],['851174','劉湘石','']]}";

            if (!string.IsNullOrEmpty(_result))
            {
                string retValue = "";
                JObject Jobj = JObject.Parse(_result);
                if (Jobj.ContainsKey("status"))
                {
                    Success = Jobj["status"].ToString()== "Success" ? true:false;
                }
                if (Success)
                {
                    if (Jobj.ContainsKey("retValue"))
                    {
                        retValue = Jobj["retValue"].ToString();
                    }
                }
                if (!string.IsNullOrEmpty(retValue))
                {
                    JArray arrayList = JArray.Parse(retValue);
                    if (arrayList.Count() != 0)
                    {
                        foreach (var item in arrayList)
                        {
                            JArray array = JArray.Parse(item.ToString());
                            if (array.Count() != 0)
                            {
                                data_Helper = new InterFaceData();
                                data_Helper.code = array[0].ToString();
                                data_Helper.name = array[1].ToString();
                                List.Add(data_Helper);
                            }
                        }
                    }
                }  
            }    
            return List;
        }   
    }
    public class InterFaceData
    {
        public string code { get; set; }
        public string name { get; set; }

    }

}
