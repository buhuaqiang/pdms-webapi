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
    [Entity(TableCnName = "系統公告",TableName = "sys_notice",DBServer = "SysDbContext")]
    public partial class sys_notice:SysEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="notice_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid notice_id { get; set; }

       /// <summary>
       ///公告類型
       /// </summary>
       [Display(Name ="公告類型")]
       [MaxLength(10)]
       [Column(TypeName="char(10)")]
       [Editable(true)]
       public string notice_type { get; set; }

       /// <summary>
       ///公告標題
       /// </summary>
       [Display(Name ="公告標題")]
       [MaxLength(100)]
       [Column(TypeName="nvarchar(100)")]
       [Editable(true)]
       public string notice_title { get; set; }

       /// <summary>
       ///公告內容
       /// </summary>
       [Display(Name ="公告內容")]
       [MaxLength(2000)]
       [Column(TypeName="nvarchar(2000)")]
       [Editable(true)]
       public string notice_content { get; set; }

       /// <summary>
       ///已讀標識
       /// </summary>
       [Display(Name ="已讀標識")]
       [MaxLength(5)]
       [Column(TypeName="char(5)")]
       [Editable(true)]
       public string notice_flag { get; set; }

       /// <summary>
       ///關聯id
       /// </summary>
       [Display(Name ="關聯id")]
       [MaxLength(500)]
       [Column(TypeName="nvarchar(500)")]
       [Editable(true)]
       public string related_ids { get; set; }

       /// <summary>
       ///通知用戶
       /// </summary>
       [Display(Name ="通知用戶")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? notice_user_id { get; set; }

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
       [MaxLength(30)]
       [Column(TypeName="nvarchar(30)")]
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
       [MaxLength(30)]
       [Column(TypeName="nvarchar(30)")]
       [Editable(true)]
       public string Modifier { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="ModifyDate")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? ModifyDate { get; set; }

       
    }
}