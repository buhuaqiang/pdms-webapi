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
    [Entity(TableCnName = "大日程",TableName = "cmc_pdms_project_gate",DBServer = "SysDbContext")]
    public partial class cmc_pdms_project_gate:SysEntity
    {
        /// <summary>
       ///PK
       /// </summary>
       [Key]
       [Display(Name ="PK")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid gate_id { get; set; }

       /// <summary>
       ///大專案ID
       /// </summary>
       [Display(Name ="大專案ID")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? project_id { get; set; }

       /// <summary>
       ///大日程字典Gode
       /// </summary>
       [Display(Name ="大日程字典Gode")]
       [MaxLength(10)]
       [Column(TypeName="varchar(10)")]
       [Editable(true)]
       public string gate_code { get; set; }

       /// <summary>
       ///開始日期
       /// </summary>
       [Display(Name ="開始日期")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? gate_start_date { get; set; }

       /// <summary>
       ///結束日期
       /// </summary>
       [Display(Name ="結束日期")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? gate_end_date { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="version")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string version { get; set; }

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
       ///0,1
       /// </summary>
       [Display(Name ="0,1")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string del_flag { get; set; }

       
    }
}