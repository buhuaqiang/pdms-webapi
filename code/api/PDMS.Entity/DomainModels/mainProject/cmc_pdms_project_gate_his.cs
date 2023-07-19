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
    [Entity(TableCnName = "大日程歷史",TableName = "cmc_pdms_project_gate_his",DBServer = "SysDbContext")]
    public partial class cmc_pdms_project_gate_his:SysEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="gate_his_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid gate_his_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="gate_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? gate_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="project_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? project_id { get; set; }

       /// <summary>
       ///大日程
       /// </summary>
       [Display(Name ="大日程")]
       [MaxLength(10)]
       [Column(TypeName="varchar(10)")]
       [Editable(true)]
       public string gate_code { get; set; }

       /// <summary>
       ///起
       /// </summary>
       [Display(Name ="起")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? gate_start_date { get; set; }

       /// <summary>
       ///迄
       /// </summary>
       [Display(Name ="迄")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? gate_end_date { get; set; }

       /// <summary>
       ///版本
       /// </summary>
       [Display(Name ="版本")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string version { get; set; }

       /// <summary>
       ///類型
       /// </summary>
       [Display(Name ="類型")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string action_type { get; set; }

       
    }
}