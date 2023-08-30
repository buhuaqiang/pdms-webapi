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
    [Entity(TableCnName = "YTECH",TableName = "YTECH",DBServer = "SysDbContext")]
    public partial class YTECH:SysEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="ch_id")]
       [Column(TypeName="int")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public int ch_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="MANDT")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string MANDT { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="EC_NO")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string EC_NO { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="EC_DESC")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string EC_DESC { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="MODEL")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string MODEL { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="PRIORITY")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string PRIORITY { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="EC_DATE")]
       [Column(TypeName= "datetime")]
       [Editable(true)]
       public DateTime EC_DATE { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="REASON")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string REASON { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="RELA_EC")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string RELA_EC { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="EF_RELA")]
       [MaxLength(500)]
       [Column(TypeName="nvarchar(500)")]
       [Editable(true)]
       public string EF_RELA { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="PLN_REA")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string PLN_REA { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="EC_TYPE")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string EC_TYPE { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="EC_CLASS")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string EC_CLASS { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="APPROVER")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string APPROVER { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="REVIEWER")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string REVIEWER { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="INITIATOR")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string INITIATOR { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="PROP_DEPT")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string PROP_DEPT { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="P_FLAG")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string P_FLAG { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="P_DATE")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string P_DATE { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="D_FLAG")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string D_FLAG { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="S_FLAG")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string S_FLAG { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="COST_DIFF_SUM")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string COST_DIFF_SUM { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="MODEL_YEAR")]
       [MaxLength(2000)]
       [Column(TypeName="nvarchar(2000)")]
       [Editable(true)]
       public string MODEL_YEAR { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="DEPT_ID")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string DEPT_ID { get; set; }

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

       
    }
}