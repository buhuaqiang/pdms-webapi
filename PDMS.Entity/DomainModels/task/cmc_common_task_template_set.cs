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
    [Entity(TableCnName = "模板結構表",TableName = "cmc_common_task_template_set",DBServer = "SysDbContext")]
    public partial class cmc_common_task_template_set:SysEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="set_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid set_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="template_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? template_id { get; set; }

       /// <summary>
       ///層級
       /// </summary>
       [Display(Name ="層級")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? level { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="parent_set_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? parent_set_id { get; set; }

       /// <summary>
       ///分類、大日程、階段
       /// </summary>
       [Display(Name ="分類、大日程、階段")]
       [MaxLength(10)]
       [Column(TypeName="varchar(10)")]
       [Editable(true)]
       public string set_type { get; set; }

       /// <summary>
       ///分類、大日程、階段 對應字典值
       /// </summary>
       [Display(Name ="分類、大日程、階段 對應字典值")]
       [MaxLength(10)]
       [Column(TypeName="varchar(10)")]
       [Editable(true)]
       public string set_value { get; set; }

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
       ///
       /// </summary>
       [Display(Name ="order_no")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? order_no { get; set; }

       /// <summary>
       ///源set_id,複製功能用到的欄位
       /// </summary>
       [Display(Name ="源set_id,複製功能用到的欄位")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? source_set_id { get; set; }

       
    }
}