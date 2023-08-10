using PDMS.Core.Configuration;
using PDMS.Entity.DomainModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace PDMS.Core.Utilities
{
    public class SmtpHelper
    {
        private string from;
        private string smtpServer;
        private string smtpUsername;
        private string smtpPasswd;

        /// <summary>
        /// 禾設定SMTP相關訊息
        /// </summary>
        public const string SMTP_RESULT_SETTING_ISNULL = "0";

        /// <summary>
        /// 寄件完成
        /// </summary>
        public const string SMTP_RESULT_SUCCESS = "1";

        /// <summary>
        /// 無收件者
        /// </summary>
        public const string SMTP_RESULT_RECEIVER_ISNULL = "2";

        /// <summary>
        /// 寄件失敗
        /// </summary>
        public const string SMTP_RESULT_FAIL = "3";

        public SmtpHelper()
        {
            if (AppSetting.Smtp != null)
            {
                from = AppSetting.Smtp.SendFrom;
                smtpServer = AppSetting.Smtp.SmtpServer;
                smtpUsername = AppSetting.Smtp.SmtpUsername;
                smtpPasswd = AppSetting.Smtp.SmtpPasswd;
            }

        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="queueEntity">郵件實體類</param>
        /// <returns> 
        /// 參數1：結果
        /// 0:未設定SMTP相關訊息
        /// 1:寄件完成
        /// 2:無收件者
        /// 3:寄件失敗
        /// 參數2: 錯誤訊息
        /// </returns>
        public Tuple<string, string> sendMail(sys_notify_queue queueEntity)
        {
            if (string.IsNullOrEmpty(from) || string.IsNullOrEmpty(smtpServer) || string.IsNullOrEmpty(smtpUsername))
            {
                //未設定SMTP相關訊息
                return Tuple.Create(SMTP_RESULT_SETTING_ISNULL, "未設定SMTP相關訊息");
            }
            try
            {
                MailMessage msg = new MailMessage();
                if (string.IsNullOrEmpty(queueEntity.recipient))
                {
                    return Tuple.Create(SMTP_RESULT_RECEIVER_ISNULL, "無收件者"); ;
                }

                char[] charSeparators = new char[] { ';', ',' };
                //收件者
                queueEntity.recipient.Split(charSeparators, StringSplitOptions.RemoveEmptyEntries).Distinct().ToList().ForEach(t =>
                {
                    msg.To.Add(t);
                });
                //副本收件者
                if (!string.IsNullOrEmpty(queueEntity.cc))
                {
                    queueEntity.cc.Split(charSeparators, StringSplitOptions.RemoveEmptyEntries).Distinct().ToList().ForEach(t =>
                    {
                        msg.CC.Add(t);
                    });
                }

                //密件收件者
                if (!string.IsNullOrEmpty(queueEntity.bcc))
                {
                    queueEntity.bcc.Split(charSeparators, StringSplitOptions.RemoveEmptyEntries).Distinct().ToList().ForEach(t =>
                    {
                        msg.Bcc.Add(t);
                    });
                }
                //郵件標題 
                msg.Subject = queueEntity.subject;

                msg.From = new MailAddress(from, from);

                //郵件標題編碼  
                msg.SubjectEncoding = Encoding.UTF8;
                //郵件內容
                msg.Body = queueEntity.content;
                //郵件附件
                if (!string.IsNullOrEmpty(queueEntity.attach_path))
                {
                    msg.Attachments.Add(new Attachment(queueEntity.attach_path));
                }

                msg.IsBodyHtml = true;
                msg.BodyEncoding = Encoding.UTF8;//郵件內容編碼 
                msg.Priority = MailPriority.Normal;//郵件優先級 

                AlternateView alt = AlternateView.CreateAlternateViewFromString(queueEntity.content, Encoding.UTF8, "text/html");
                msg.AlternateViews.Add(alt);
                //587
                SmtpClient MySmtp = new SmtpClient(smtpServer, 587);
                //設定你的帳號密碼
                //MySmtp.Timeout = 5000;
                if (string.IsNullOrEmpty(smtpPasswd) == false)
                {
                    MySmtp.Credentials = new System.Net.NetworkCredential(smtpUsername, smtpPasswd);
                }

                //Gmial 的 smtp 使用 SSL
                MySmtp.EnableSsl = true;
                MySmtp.Send(msg);
                return Tuple.Create(SMTP_RESULT_SUCCESS, "");
            }
            catch (Exception err)
            {
                return Tuple.Create(SMTP_RESULT_FAIL, err.Message);
            }
        }
    }
}
