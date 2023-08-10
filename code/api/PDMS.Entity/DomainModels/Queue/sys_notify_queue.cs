/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果数据库字段发生变化，请在代码生器重新生成此Model
 */
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PDMS.Entity.SystemModels;

namespace PDMS.Entity.DomainModels
{
    [Entity(TableCnName = "sys_notify_queue",TableName = "sys_notify_queue",DBServer = "SysDbContext")]
    public partial class sys_notify_queue:SysEntity
    {
        /// <summary>
       ///PKID
       /// </summary>
       [Key]
       [Display(Name ="PKID")]
       [Column(TypeName= "Guid")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid notifyqueue_id { get; set; }

       /// <summary>
       ///模組自訂代碼
       /// </summary>
       [Display(Name ="模組自訂代碼")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string function_id { get; set; }

       /// <summary>
       ///寄送者暱稱
       /// </summary>
       [Display(Name ="寄送者暱稱")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string sender { get; set; }

       /// <summary>
       ///收件者
       /// </summary>
       [Display(Name ="收件者")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string recipient { get; set; }

       /// <summary>
       ///副本收件者
       /// </summary>
       [Display(Name ="副本收件者")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string cc { get; set; }

       /// <summary>
       ///密件收件者
       /// </summary>
       [Display(Name ="密件收件者")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string bcc { get; set; }

       /// <summary>
       ///主旨
       /// </summary>
       [Display(Name ="主旨")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string subject { get; set; }

       /// <summary>
       ///內容
       /// </summary>
       [Display(Name ="內容")]
       [MaxLength(4000)]
       [Column(TypeName="nvarchar(4000)")]
       [Editable(true)]
       public string content { get; set; }

       /// <summary>
       ///附件位置
       /// </summary>
       [Display(Name ="附件位置")]
       [MaxLength(200)]
       [Column(TypeName="varchar(200)")]
       [Editable(true)]
       public string attach_path { get; set; }

       /// <summary>
       ///發送狀態,0: 未執行 ;1:成功 ;2:失敗
       /// </summary>
       [Display(Name ="發送狀態,0: 未執行 ;1:成功 ;2:失敗")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? send_state { get; set; }

       /// <summary>
       ///發送次數
       /// </summary>
       [Display(Name ="發送次數")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? send_cnt { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="CreateID")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? CreateID { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="Creator")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string Creator { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="CreateDate")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? CreateDate { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="ModifyID")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? ModifyID { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="Modifier")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string Modifier { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="ModifyDate")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? ModifyDate { get; set; }

       /// <summary>
       ///刪除標識
       /// </summary>
       [Display(Name ="刪除標識")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string del_flag { get; set; }

       
    }
}