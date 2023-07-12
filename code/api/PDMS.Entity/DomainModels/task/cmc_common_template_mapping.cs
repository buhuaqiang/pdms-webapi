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
    [Entity(TableCnName = "模板任務對應表",TableName = "cmc_common_template_mapping",DBServer = "SysDbContext")]
    public partial class cmc_common_template_mapping:SysEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="mapping_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid mapping_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="set_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? set_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="task_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? task_id { get; set; }

       /// <summary>
       ///是否允許刪除
       /// </summary>
       [Display(Name ="是否允許刪除")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string is_delete_able { get; set; }

       /// <summary>
       ///是否重點審計項目
       /// </summary>
       [Display(Name ="是否重點審計項目")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string is_audit_key { get; set; }

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

       /// <summary>
       ///任務排序
       /// </summary>
       [Display(Name ="任務排序")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? order_no { get; set; }

       
    }
}