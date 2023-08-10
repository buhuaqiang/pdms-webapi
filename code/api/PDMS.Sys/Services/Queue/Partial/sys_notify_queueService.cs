/*
 *所有关于sys_notify_queue类的业务代码应在此处编写
*可使用repository.调用常用方法，获取EF/Dapper等信息
*如果需要事务请使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动获取数据库相关信息
*用户信息、权限、角色等使用UserContext.Current操作
*sys_notify_queueService对增、删、改查、导入、导出、审核业务代码扩展参照ServiceFunFilter
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
using PDMS.Sys.IRepositories;
using Newtonsoft.Json;
using PDMS.Core.Utilities.WebServices;
using System.Collections.Generic;
using System;

namespace PDMS.Sys.Services
{
    public partial class sys_notify_queueService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly Isys_notify_queueRepository _repository;//访问数据库

        [ActivatorUtilitiesConstructor]
        public sys_notify_queueService(
            Isys_notify_queueRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租户会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }
        WebResponseContent WebResponse = new WebResponseContent();
        public WebResponseContent MailJob(IHeaderDictionary header)
        {
            Sys_schedule_log scheduleEntity = new Sys_schedule_log();
            Guid schedule_dbid = Guid.NewGuid();
            DateTime start_date = DateTime.Now;
            Guid notifyqueue_dbid;//当邮件发送失败，记录ID ，如果已经入库，就修改，否则新增
            int num = 0;//当邮件发送失败，记录次数
            try
            {
                scheduleEntity = new Sys_schedule_log()
                {
                    schedule_dbid = schedule_dbid,
                    task_id = "5",
                    url = "/api/Viat_QUartz/EmailJob",
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
                WebResponse = HttpContextHelper.HttpContextBase(header);
                if (!WebResponse.Status)
                {
                    throw new Exception(WebResponse.Message);
                }
                string error = "";
                List<sys_notify_queue> queueList = repository.DbContext.Set<sys_notify_queue>().Where(x => x.send_state != 1 && (x.send_cnt == null || x.send_cnt < 3)).ToList();
                if (queueList.Count() > 0)
                {
                    SaveModel saveModel = new SaveModel();
                    SmtpHelper smtpHelper = new SmtpHelper();
                    foreach (var item in queueList)
                    {
                        if (item.send_cnt == null)
                        {
                            item.send_cnt = 0;
                        }
                        notifyqueue_dbid = item.notifyqueue_id;
                        //SaveModel.DetailListDataResult queueResult = new SaveModel.DetailListDataResult();
                        if (string.IsNullOrEmpty(item.content))
                        {
                            item.content = "未獲取到郵件內容，郵件內容不能為空！";
                        }
                        try
                        {
                            Tuple<string, string> tuple = smtpHelper.sendMail(item);
                            if (tuple.Item1 == "1")
                            {
                                item.send_state = 1;
                            }
                            else
                            {
                                item.send_state = 2;
                                error += item.recipient + tuple.Item2 + ";";
                            }
                        }
                        catch (Exception ex)
                        {
                            //若错误信息 已经入库，则
                            Guid temp_notifyqueue_dbid;
                            var temp = repository.DbContext.Set<sys_notify_queue>().Where(x => x.send_state != 1 && (x.send_cnt == null || x.send_cnt < 3) && x.subject == "郵件定時發送失敗" && x.content.Contains(ex.Message)).FirstOrDefault();
                            if (temp != null)
                            {
                                temp_notifyqueue_dbid = notifyqueue_dbid;
                                num = Convert.ToInt32(temp.send_cnt) + 1;
                            }
                            else
                            {
                                temp_notifyqueue_dbid = Guid.NewGuid();
                            }
                            //var remark = repository.DbContext.Set<sys_notify_queue>().Where(x => x.category_id == "SFTP-MailSender").First().remarks;
                            var remark = "";
                            sys_notify_queue queueEntity = new sys_notify_queue()
                            {
                                notifyqueue_id = temp_notifyqueue_dbid,
                                //recipient = "buhuaqiang@163.com;1144393169@qq.com;841990243@qq.com;",
                                recipient = remark,
                                subject = "郵件定時發送失敗",
                                content = ex.Message,
                                send_cnt = num,
                                CreateDate = DateTime.Now,
                                send_state = 0
                            };
                            if (temp != null)
                                repository.DapperContext.Update(queueEntity);
                            else
                                repository.DapperContext.Add(queueEntity);

                        }

                        item.send_cnt += 1;
                        saveModel.MainData = JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(item));
                        base.Update(saveModel);
                        saveModel.MainData = null;
                        //queueResult.DetailData.Add(JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConvert.SerializeObject(item)));
                        //queueResult.optionType = SaveModel.MainOptionType.update;
                        //queueResult.detailType = typeof(Viat_com_notify_queue);
                        //saveModel.DetailListData.Add(queueResult);
                    }
                }
                if (!string.IsNullOrEmpty(error))
                {
                    throw new Exception(error);
                }
                else
                {
                    scheduleEntity = new Sys_schedule_log()
                    {
                        schedule_dbid = schedule_dbid,
                        task_id = "5",
                        url = "/api/Viat_QUartz/EmailJob",
                        start_date = start_date,
                        end_date = DateTime.Now,
                        status = "Y",
                        message = "mail success!",
                        CreateDate = start_date,
                        ModifyDate = DateTime.Now
                    };
                    repository.DapperContext.Update(scheduleEntity);
                }
            }
            catch (Exception ex)
            {
                scheduleEntity = new Sys_schedule_log()
                {
                    schedule_dbid = schedule_dbid,
                    task_id = "5",
                    url = "/api/Viat_QUartz/EmailJob",
                    start_date = start_date,
                    end_date = DateTime.Now,
                    status = "N",
                    message = ex.Message,
                    CreateDate = start_date,
                    ModifyDate = DateTime.Now,
                };
                repository.DapperContext.Update(scheduleEntity);

                var ifs = repository.DbContext.Set<sys_notify_queue>().Where(x => x.send_state != 1 && (x.send_cnt == null || x.send_cnt < 3) && x.subject == "郵件定時發送失敗" && x.content.Contains(ex.Message)).FirstOrDefault();
                Guid temp_dbid;
                bool flag = false;
                if (ifs != null)
                {
                    temp_dbid = ifs.notifyqueue_id;
                    flag = true;
                }
                else
                {
                    temp_dbid = Guid.NewGuid();
                }
                //var remark = repository.DbContext.Set<sys_notify_queue>().Where(x => x.category_id == "SFTP-MailSender").First().remarks;
                var remark = "";
                sys_notify_queue queueEntity = new sys_notify_queue()
                {
                    notifyqueue_id = temp_dbid,
                    //recipient = "buhuaqiang@163.com;1144393169@qq.com;841990243@qq.com;",
                    recipient = remark,
                    subject = "郵件定時發送失敗",
                    content = ex.Message,
                    CreateDate = DateTime.Now,
                    send_state = 0
                };
                if (!flag)
                    repository.DapperContext.Add(queueEntity);
            }

            return WebResponse;
        }
    }
}
