/*
 *所有关于view_cmc_timed_task类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*view_cmc_timed_taskService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
*/
using PDMS.Core.BaseProvider;
using PDMS.Core.Extensions.AutofacManager;
using PDMS.Entity.DomainModels;
using System.Linq;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
using PDMS.Core.Extensions;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using PDMS.Project.IRepositories;
using PDMS.Core.Utilities.WebServices;
using System.Net;
using System.Text;
using OfficeOpenXml.FormulaParsing.Excel.Functions.Text;
using PDMS.Core.Configuration;

namespace PDMS.Project.Services
{
    public partial class view_cmc_timed_taskService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Iview_cmc_timed_taskRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public view_cmc_timed_taskService(
            Iview_cmc_timed_taskRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }
        private WebResponseContent webResponse { get; set; }
        private readonly string spath = AppSetting.SftpSite.path;


        //假EPL獲取，FTP獲取
        public WebResponseContent ImportEplByFalse(IHeaderDictionary header)
        {
            Sys_schedule_log scheduleEntity = new Sys_schedule_log();
            Guid schedule_dbid = Guid.NewGuid();
            DateTime start_date = DateTime.Now;
            try
            {
                this.webResponse = new WebResponseContent();
                scheduleEntity = new Sys_schedule_log()
                {
                    schedule_dbid = schedule_dbid,
                    task_id = "16",
                    url = "/api/view_cmc_timed_task/ImportEplByFalse",
                    start_date = start_date,
                    status = "Y",
                    message = "運行中",
                    CreateDate = start_date
                };
                repository.DapperContext.Add(scheduleEntity);
                DbContext dbcon = repository.DbContext;
                var currentEntry = dbcon.ChangeTracker.Entries().FirstOrDefault();
                if (currentEntry != null && currentEntry.Entity.ToString() == scheduleEntity.ToString())
                {
                    //设置实体State为EntityState.Detached，取消跟踪该实体，之后dbContext.ChangeTracker.Entries().Count()的值会减1
                    currentEntry.State = EntityState.Detached;
                }
                //授權驗證
                webResponse = HttpContextHelper.HttpContextBase(header);
                if (!webResponse.Status)
                {
                    throw new Exception(webResponse.Message);
                }
                string AllFileName = "";
                string ErrorMsg = "";
                string localPath = "";
                Dictionary<string, List<view_cmc_timed_task>> dicStfp = new Dictionary<string, List<view_cmc_timed_task>>();
                try
                {
                    //獲取專案啟動
                    var ProjectList = repository.DbContext.Set<cmc_pdms_project_main>().Where(x => x.project_status == "01").ToList();
                    //獲取專案建立的02 正式EPL
                    if (ProjectList.Count() > 0)
                    {
                        try
                        {
                            List<Sys_DictionaryList> systemValueList = repository.DbContext.Set<Sys_DictionaryList>().Where(x => x.Dic_ID == 161).OrderBy(x => x.DicValue).ToList();
                            if (systemValueList.Count() > 0)
                            {
                                string date = DateTime.Now.ToString("yyyyMMdd");
                                localPath = $"c:/home/site/Upload/SftpUpload/".MapPath();
                                if (!Directory.Exists(localPath)) Directory.CreateDirectory(localPath);
                                using (SFTPHelper s = new SFTPHelper(0))
                                {
                                    List<view_cmc_timed_task> ss = new List<view_cmc_timed_task>();
                                    foreach (var item in systemValueList)
                                    {
                                        string path = $"{spath}{item.DicName}/Upload/";
                                        ss = s.GetFileList(path, ".csv");
                                        ss = ss.Where(x => x.file_name.Contains(date) && (x.file_name.IndexOf("Old_") == -1)).ToList();
                                        foreach (var import in ss)
                                        {
                                            s.Get(path + import.file_name, localPath + import.file_name);
                                        }
                                        dicStfp.Add(path, ss);
                                    }
                                }
                            }
                        }
                        catch (Exception ex)
                        {
                            ErrorMsg = ex.Message;
                            Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "定時任務view_cmc_timed_taskService 文件 ,從SFTP獲取文件時-->ImportEplByFalse：" + DateTime.Now + ":" + ex.Message);
                        }

                        foreach (var item in ProjectList)
                        {
                            try
                            {
                                if (dicStfp.Count() != 0)
                                {
                                    IEnumerable<view_cmc_timed_task> exportAble = dicStfp.SelectMany(x => x.Value);
                                    List<view_cmc_timed_task> SftpList = new List<view_cmc_timed_task>();
                                    SftpList.AddRange(exportAble);

                                    //先排序 再分组 每个组中的项目将按modified_date排序。
                                    var SftpTempList = SftpList.OrderByDescending(x => x.modified_date).GroupBy(x => x.file_name.Split("_")[0] + x.file_name.Split("_")[1]).ToList();
                                    if (SftpTempList.Count() > 0)
                                    {
                                        foreach (var SftpTemp in SftpTempList)
                                        {
                                            view_cmc_timed_task temp = SftpTemp.FirstOrDefault();//由于先前已经将每个组中按modified_date倒序，所以取第一条即可
                                            AllFileName = localPath + temp.file_name;
                                            webResponse = cmc_pdms_project_eplService.Instance.getEPLFromCMS(item.project_id.ToString(), "3", AllFileName);
                                        }
                                    }
                                }
                            }
                            catch (Exception ex)
                            {
                                ErrorMsg = ex.Message;
                                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "定時任務view_cmc_timed_taskService 文件:foreach,拿到FTP裡的文件後-->ImportEplByFalse：" + DateTime.Now + ":" + ex.Message);
                            }
                            finally
                            {
                                File.Delete(AllFileName);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    ErrorMsg = ex.Message;
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "定時任務view_cmc_timed_taskService 文件-->ImportEplByFalse：第二層Try Catch:" + DateTime.Now + ":" + ex.Message);
                }
                if (!string.IsNullOrEmpty(ErrorMsg))
                {
                    repository.DapperContext.BeginTransaction((result) =>
                    {
                        scheduleEntity = new Sys_schedule_log()
                        {
                            schedule_dbid = schedule_dbid,
                            task_id = "16",
                            url = "/api/view_cmc_timed_task/ImportEplByFalse",
                            start_date = start_date,
                            end_date = DateTime.Now,
                            status = "N",
                            message = ErrorMsg,
                            CreateDate = start_date,
                            ModifyDate = DateTime.Now
                        };
                        repository.DapperContext.Update(scheduleEntity);
                        webResponse.OK(Core.Enums.ResponseType.SaveSuccess);
                        return true;
                    }, (ex) => { });
                }
                else
                {
                    repository.DapperContext.BeginTransaction((result) =>
                    {
                        scheduleEntity = new Sys_schedule_log()
                        {
                            schedule_dbid = schedule_dbid,
                            task_id = "16",
                            url = "/api/view_cmc_timed_task/ImportEplByFalse",
                            start_date = start_date,
                            end_date = DateTime.Now,
                            status = "Y",
                            message = "import success!",
                            CreateDate = start_date,
                            ModifyDate = DateTime.Now
                        };
                        repository.DapperContext.Update(scheduleEntity);
                        webResponse.OK(Core.Enums.ResponseType.SaveSuccess);
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }
                return webResponse;
            }
            catch (Exception ex)
            {
                repository.DapperContext.BeginTransaction((result) =>
                {
                    scheduleEntity = new Sys_schedule_log()
                    {
                        schedule_dbid = schedule_dbid,
                        task_id = "16",
                        url = "/api/view_cmc_timed_task/ImportEplByFalse",
                        start_date = start_date,
                        end_date = DateTime.Now,
                        status = "N",
                        message = ex.Message,
                        CreateDate = start_date,
                        ModifyDate = DateTime.Now
                    };
                    repository.DapperContext.Update(scheduleEntity);
                    webResponse.OK(Core.Enums.ResponseType.SaveSuccess);
                    return true;
                }, (ex) => { });
            }
            return webResponse;
        }



        //正式EPL--  WebService方式  
        public WebResponseContent ImportEplByPLM(IHeaderDictionary header)
        {
            Sys_schedule_log scheduleEntity = new Sys_schedule_log();
            Guid schedule_dbid = Guid.NewGuid();
            DateTime start_date = DateTime.Now;
            try
            {
                this.webResponse = new WebResponseContent();
                scheduleEntity = new Sys_schedule_log()
                {
                    schedule_dbid = schedule_dbid,
                    task_id = "15",
                    url = "/api/view_cmc_timed_task/ImportEplByFalse",
                    start_date = start_date,
                    status = "Y",
                    message = "運行中",
                    CreateDate = start_date
                };
                repository.DapperContext.Add(scheduleEntity);
                DbContext dbcon = repository.DbContext;
                var currentEntry = dbcon.ChangeTracker.Entries().FirstOrDefault();
                if (currentEntry != null && currentEntry.Entity.ToString() == scheduleEntity.ToString())
                {
                    //设置实体State为EntityState.Detached，取消跟踪该实体，之后dbContext.ChangeTracker.Entries().Count()的值会减1
                    currentEntry.State = EntityState.Detached;
                }
                //授權驗證
                webResponse = HttpContextHelper.HttpContextBase(header);
                if (!webResponse.Status)
                {
                    throw new Exception(webResponse.Message);
                }
                string AllFileName = "";
                string ErrorMsg = "";
                try
                {
                    //獲取專案建立的01 假EPL
                    var ProjectList = repository.DbContext.Set<cmc_pdms_project_main>().Where(x => x.project_status == "02" && x.epl_load_date <= DateTime.Now && x.epl_load_time==null).ToList();
                    if (ProjectList.Count() > 0)
                    {
                        foreach (var item in ProjectList)
                        {
                            try
                            {
                                //從CMS獲取假EPL
                                Dictionary<string, string> parameters = new Dictionary<string, string>();
                                parameters.Add("name", "10086");
                                string _result = HttpHelper.Helper.GetResponseString("", ERequestMode.Post, parameters, Encoding.Default, Encoding.UTF8);

                                //根據Base64 轉換成 Excel文件
                                AllFileName = EPPlusHelper.SaveDocumentByBase64(_result);
                                webResponse = cmc_pdms_project_eplService.Instance.getEPLFromCMS(item.project_id.ToString(), AllFileName);
                            }
                            catch (Exception ex)
                            {
                                ErrorMsg = ex.Message;
                                Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "定時任務view_cmc_timed_taskService 文件:foreach,循環調閱接口讀取CMS正式EPL文件-->ImportEplByPLM：" + DateTime.Now + ":" + ex.Message);
                            }
                            finally
                            {
                                File.Delete(AllFileName);
                            }      
                        }
                    }         
                }
                catch (Exception ex)
                {
                    ErrorMsg = ex.Message;
                    Core.Services.Logger.Error(Core.Enums.LoggerType.Error, "定時任務view_cmc_timed_taskService 文件-->ImportEplByPLM：" + DateTime.Now + ":" + ex.Message);
                }
                if (!string.IsNullOrEmpty(ErrorMsg))
                {
                    repository.DapperContext.BeginTransaction((result) =>
                    {
                        scheduleEntity = new Sys_schedule_log()
                        {
                            schedule_dbid = schedule_dbid,
                            task_id = "15",
                            url = "/api/view_cmc_timed_task/ImportEplByPLM",
                            start_date = start_date,
                            end_date = DateTime.Now,
                            status = "N",
                            message = ErrorMsg,
                            CreateDate = start_date,
                            ModifyDate = DateTime.Now
                        };
                        repository.DapperContext.Update(scheduleEntity);
                        webResponse.OK(Core.Enums.ResponseType.SaveSuccess);
                        return true;
                    }, (ex) => { });
                }
                else
                {
                    repository.DapperContext.BeginTransaction((result) =>
                    {
                        scheduleEntity = new Sys_schedule_log()
                        {
                            schedule_dbid = schedule_dbid,
                            task_id = "2",
                            url = "/api/view_cmc_timed_task/ImportEplByPLM",
                            start_date = start_date,
                            end_date = DateTime.Now,
                            status = "Y",
                            message = "import success!",
                            CreateDate = start_date,
                            ModifyDate = DateTime.Now
                        };
                        repository.DapperContext.Update(scheduleEntity);
                        webResponse.OK(Core.Enums.ResponseType.SaveSuccess);
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }
                return webResponse;      
            }
            catch (Exception ex)
            {
                repository.DapperContext.BeginTransaction((result) =>
                {
                    scheduleEntity = new Sys_schedule_log()
                    {
                        schedule_dbid = schedule_dbid,
                        task_id = "15",
                        url = "/api/view_cmc_timed_task/ImportEplByPLM",
                        start_date = start_date,
                        end_date = DateTime.Now,
                        status = "N",
                        message = ex.Message,
                        CreateDate = start_date,
                        ModifyDate = DateTime.Now
                    };
                    repository.DapperContext.Update(scheduleEntity);
                    webResponse.OK(Core.Enums.ResponseType.SaveSuccess);
                    return true;
                }, (ex) => { });
            }
            return webResponse;
        }



        //定時更新任務完成狀態
        public WebResponseContent UpdateTaskStatus(IHeaderDictionary header)
        {
            Sys_schedule_log scheduleEntity = new Sys_schedule_log();
            Guid schedule_dbid = Guid.NewGuid();
            DateTime start_date = DateTime.Now;
            try
            {
                this.webResponse = new WebResponseContent();
                scheduleEntity = new Sys_schedule_log()
                {
                    schedule_dbid = schedule_dbid,
                    task_id = "15",
                    url = "/api/view_cmc_timed_task/ImportHcpJob",
                    start_date = start_date,
                    status = "Y",
                    message = "運行中",
                    CreateDate = start_date
                };
                repository.DapperContext.Add(scheduleEntity);
                DbContext dbcon = repository.DbContext;
                var currentEntry = dbcon.ChangeTracker.Entries().FirstOrDefault();
                if (currentEntry != null && currentEntry.Entity.ToString() == scheduleEntity.ToString())
                {
                    //设置实体State为EntityState.Detached，取消跟踪该实体，之后dbContext.ChangeTracker.Entries().Count()的值会减1
                    currentEntry.State = EntityState.Detached;
                }
                //授權認證
                webResponse = HttpContextHelper.HttpContextBase(header);
                if (!webResponse.Status)
                {
                    throw new Exception(webResponse.Message);
                }
                string msg = "";


                if (!string.IsNullOrEmpty(msg))
                {
                    throw new Exception(msg);
                }
                else
                {
                    repository.DapperContext.BeginTransaction((result) =>
                    {
                        scheduleEntity = new Sys_schedule_log()
                        {
                            schedule_dbid = schedule_dbid,
                            task_id = "15",
                            url = "/api/Viat_sftp_import/ImportHcpJob",
                            start_date = start_date,
                            end_date = DateTime.Now,
                            status = "Y",
                            message = "import success!",
                            CreateDate = start_date,
                            ModifyDate = DateTime.Now
                        };
                        repository.DapperContext.Update(scheduleEntity);
                        webResponse.OK(Core.Enums.ResponseType.SaveSuccess);
                        return true;
                    }, (ex) => { throw new Exception(ex.Message); });
                }
            }
            catch (Exception ex)
            {
                repository.DapperContext.BeginTransaction((result) =>
                {
                    scheduleEntity = new Sys_schedule_log()
                    {
                        schedule_dbid = schedule_dbid,
                        task_id = "15",
                        url = "/api/Viat_sftp_import/ImportHcpJob",
                        start_date = start_date,
                        end_date = DateTime.Now,
                        status = "N",
                        message = ex.Message,
                        CreateDate = start_date,
                        ModifyDate = DateTime.Now
                    };
                    repository.DapperContext.Update(scheduleEntity);
                    webResponse.OK(Core.Enums.ResponseType.SaveSuccess);
                    return true;
                }, (ex) => { });
            }
            return webResponse;
        }

    }
}
