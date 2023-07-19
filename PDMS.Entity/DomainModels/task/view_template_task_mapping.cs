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
    [Entity(TableCnName = "模板任務映射",TableName = "view_template_task_mapping",DBServer = "SysDbContext")]
    public partial class view_template_task_mapping:SysEntity
    {
        /// <summary>
       ///階段
       /// </summary>
       [Display(Name ="階段")]
       [MaxLength(100)]
       [Column(TypeName="nvarchar(100)")]
       public string dicName { get; set; }

       /// <summary>
       ///任務名稱
       /// </summary>
       [Display(Name ="任務名稱")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       public string task_name { get; set; }

       /// <summary>
       ///是否允許刪除
       /// </summary>
       [Display(Name ="是否允許刪除")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       public string is_delete_able { get; set; }

       /// <summary>
       ///是否重點審核項目
       /// </summary>
       [Display(Name ="是否重點審核項目")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       public string is_audit_key { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="mapping_id")]
       [Column(TypeName="uniqueidentifier")]
       [Required(AllowEmptyStrings=false)]
       public Guid mapping_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="set_id")]
       [Column(TypeName="uniqueidentifier")]
       public Guid? set_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="task_id")]
       [Column(TypeName="uniqueidentifier")]
       public Guid? task_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="CreateID")]
       [Column(TypeName="int")]
       public int? CreateID { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="Creator")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       public string Creator { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="CreateDate")]
       [Column(TypeName="datetime")]
       public DateTime? CreateDate { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="ModifyID")]
       [Column(TypeName="int")]
       public int? ModifyID { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="Modifier")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       public string Modifier { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="ModifyDate")]
       [Column(TypeName="datetime")]
       public DateTime? ModifyDate { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="del_flag")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       public string del_flag { get; set; }

       /// <summary>
       ///排序
       /// </summary>
       [Display(Name ="排序")]
       [Column(TypeName="int")]
       public int? order_no { get; set; }


        /// <summary>
        ///
        /// </summary>
        [Display(Name = "預計工期")]
        [MaxLength(1)]
        [Column(TypeName = "int")]
        [Editable(true)]
        public int work_days { get; set; }
    }
}