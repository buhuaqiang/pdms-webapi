using Renci.SshNet;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Threading;
using PDMS.Core.Configuration;
using PDMS.Entity.DomainModels;

namespace PDMS.Core.Utilities
{
    public class SFTPHelper :IDisposable
    {
        #region 字段或属性
        private SftpClient sftp;
        /// <summary>
        /// SFTP连接状态
        /// </summary>
        public bool Connected { get { return sftp.IsConnected; } }
        #endregion

        #region 构造
        /// <summary>
        /// 构造
        /// </summary>
        /// <param name="SalesType">判斷為那個系統</param>
        /// <param name="ip">IP</param>
        /// <param name="port">端口</param>
        /// <param name="user">用户名</param>
        /// <param name="pwd">密码</param>
        public SFTPHelper(int SalesType)
        {
            if (SalesType == 0)
            {
                sftp = new SftpClient(AppSetting.SftpSite.HostName, 22, AppSetting.SftpSite.UserName, AppSetting.SftpSite.Password);
            }
            else
            {
                sftp = new SftpClient(AppSetting.SftpSite.VSalesHostName, 22, AppSetting.SftpSite.VSalesUserName, AppSetting.SftpSite.VSalesPassword);
            }
            Connect();
        }
        ~SFTPHelper()
        {
            Disconnect();
        }
        #endregion
        #region 连接SFTP
        /// <summary>
        /// 连接SFTP
        /// </summary>
        /// <returns>true成功</returns>
        public bool Connect()
        {
            try
            {
                for (int i = 1; i <= 3; i++)
                {
                    if (!Connected)
                    {
                        try
                        {
                            sftp.Connect();
                        }
                        catch (Exception ex)
                        {
                            if (i == 3)
                            {
                                throw new Exception(ex.Message);
                            }
                        }

                    }
                    else
                    {
                        break;
                    }
                }
               
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(string.Format("連接SFTP失敗，原因：{0}", ex.Message));
            }
        }
        #endregion

        #region 断开SFTP
        /// <summary>
        /// 断开SFTP
        /// </summary> 
        public void Disconnect()
        {
            try
            {
                if (sftp != null && Connected)
                {
                    sftp.Disconnect();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(string.Format("斷開SFTP失敗，原因：{0}", ex.Message));
            }
        }
        #endregion

        #region 创建目录
        /// <summary>
        /// 循环创建目录
        /// </summary>
        /// <param name="remotePath">远程目录</param>
        public void CreateDirectory(string remotePath)
        {
            try
            {
                string[] paths = remotePath.Split(new char[] { '/' }, StringSplitOptions.RemoveEmptyEntries);
                string curPath = "/";
                for (int i = 0; i < paths.Length; i++)
                {
                    curPath += paths[i];
                    if (!sftp.Exists(curPath))
                    {
                        sftp.CreateDirectory(curPath);
                    }
                    if (i < paths.Length - 1)
                    {
                        curPath += "/";
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception(string.Format("創建目錄失敗，原因：{0}", ex.Message));
            }
        }
        #endregion

        #region SFTP上传文件
        /// <summary>
        /// SFTP上传文件
        /// </summary>
        /// <param name="localPath">本地文件全路径 例：G:\\Project\\logo.png</param>
        /// <param name="remotePath">远程路径  例：/logo.png</param>
        public bool Put(string localPath, string remotePath)
        {
            try
            {
                Connect();
                using (var file = File.OpenRead(localPath))
                {
                    bool put = true;
                    while (put)
                    {
                        try
                        {
                            Thread.Sleep(2000);
                            Connect();
                            sftp.UploadFile(file, remotePath, true);
                            put = false;
                        }
                        catch (Exception)
                        {
                            put = true;
                        }
                    }
                }
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(string.Format("SFTP上傳文件失敗，本地目錄：{0}，遠程目錄：{1}原因：{2}",localPath,remotePath, ex.Message));
            }
        }
        #endregion
        #region SFTP获取文件
        /// <summary>
        /// SFTP获取文件
        /// </summary>
        /// <param name="remotePath">远程路径</param>
        /// <param name="localPath">本地路径</param>
        public void Get(string remotePath, string localPath)
        {
            try
            {
                Connect();
                var byt = sftp.ReadAllBytes(remotePath);
                File.WriteAllBytes(localPath, byt);
            }
            catch (Exception ex)
            {
                throw new Exception(string.Format("SFTP文件獲取失敗，原因：{0}", ex.Message));
            }

        }
        #endregion

        #region SFTP获取二进制
        /// <summary>
        /// SFTP获取文件
        /// </summary>
        /// <param name="remotePath">远程路径</param>
        /// <param name="localPath">本地路径</param>
        public byte[] GetByte(string remotePath)
        {
            try
            {
                Connect();
                return sftp.ReadAllBytes(remotePath);
            }
            catch (Exception ex)
            {
                throw new Exception(string.Format("SFTP文件獲取失敗，原因：{0}", ex.Message));
            }

        }
        #endregion

        #region 获取SFTP文件列表
        /// <summary>
        /// 获取SFTP文件列表
        /// </summary>
        /// <param name="remotePath">远程目录</param>
        /// <param name="fileSuffix">文件后缀</param>
        /// <returns></returns>
        public List<view_cmc_timed_task> GetFileList(string remotePath, string fileSuffix)
        {
            try
            {
                List<view_cmc_timed_task> sftp_ExportList = new List<view_cmc_timed_task>();
                Connect();
                if (sftp.Exists(remotePath))
                {
                    var files = sftp.ListDirectory(remotePath);
                    foreach (var file in files)
                    {
                        view_cmc_timed_task sftp_Export = new view_cmc_timed_task();
                        string name = file.Name;
                        if (name.Length > (fileSuffix.Length + 1) && fileSuffix == name.Substring(name.Length - fileSuffix.Length))
                        {
                            sftp_Export.file_name = file.Name;
                            sftp_Export.file_size = file.Length.ToString();
                            sftp_Export.modified_date = file.LastWriteTime;
                            sftp_Export.full_name = file.FullName;
                            sftp_ExportList.Add(sftp_Export);
                        }
                    }
                }
                return sftp_ExportList;
            }
            catch (Exception ex)
            {
                throw new Exception(string.Format("SFTP文件列表獲取失敗，原因：{0}", ex.Message));
            }
        }
        #endregion
        #region 获取SFTP文件列表
        /// <summary>
        /// 获取SFTP文件列表
        /// </summary>
        /// <param name="remotePath">远程目录</param>
        /// <param name="fileSuffix">文件后缀</param>
        /// <returns></returns>
        public List<view_cmc_timed_task> GetFileImportList(string remotePath, string fileSuffix)
        {
            try
            {
                  List<view_cmc_timed_task> sftp_ImportList = new List<view_cmc_timed_task>();
                Connect();
                if (sftp.Exists(remotePath))
                {
                    var files = sftp.ListDirectory(remotePath);
                    foreach (var file in files)
                    {
                        view_cmc_timed_task sftp_Import = new view_cmc_timed_task();
                        string name = file.Name;
                        if (name.Length > (fileSuffix.Length + 1) && fileSuffix == name.Substring(name.Length - fileSuffix.Length))
                        {
                            sftp_Import.file_name = file.Name;
                            sftp_Import.upload_date = file.LastWriteTime;
                            sftp_Import.file_path =  file.FullName;
                            sftp_ImportList.Add(sftp_Import);
                        }
                    }
                }
                return sftp_ImportList;
            }
            catch (Exception ex)
            {
                throw new Exception(string.Format("SFTP文件列表獲取失敗，原因：{0}", ex.Message));
            }
        }
        #endregion


        #region 更新SFTP文件
        /// <summary>
        /// 移动SFTP文件
        /// </summary>
        /// <param name="oldRemotePath">旧远程路径</param>
        /// <param name="newRemotePath">新远程路径</param>
        public void Move(string oldRemotePath, string newRemotePath)
        {
            try
            {
                Connect();
                sftp.RenameFile(oldRemotePath, newRemotePath);
                Disconnect();
            }
            catch (Exception ex)
            {
                throw new Exception(string.Format("SFTP文件移動失敗，原因：{0}", ex.Message));
            }
        }
        #endregion
        #region 删除SFTP文件
        /// <summary>
        /// 删除SFTP文件 
        /// </summary>
        /// <param name="remoteFile">远程路径</param>
        public void Delete(string remoteFile)
        {
            try
            {
                Connect();
                sftp.Delete(remoteFile);
            }
            catch (Exception ex)
            {
                throw new Exception(string.Format("SFTP文件刪除失敗，原因：{0}", ex.Message));
            }
        }

        public void Dispose()
        {
            Disconnect();
        }
        #endregion
    }
    
}
