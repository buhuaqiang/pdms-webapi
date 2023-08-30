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
    [Entity(TableCnName = "YTECS",TableName = "YTECS",DBServer = "SysDbContext")]
    public partial class YTECS:SysEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="cs_id")]
       [Column(TypeName="int")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public int cs_id { get; set; }

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
       [Display(Name ="DWG_NO")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string DWG_NO { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="EC_AI")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string EC_AI { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="AI_TYPE")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string AI_TYPE { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="AI_NAME")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string AI_NAME { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="AI_CL")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string AI_CL { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="AI_ID")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string AI_ID { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="AI_SUB")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string AI_SUB { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="AI_EXG")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string AI_EXG { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="S_TYPE")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string S_TYPE { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="AI_NOTE")]
       [MaxLength(500)]
       [Column(TypeName="nvarchar(500)")]
       [Editable(true)]
       public string AI_NOTE { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="COST_DIFF")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string COST_DIFF { get; set; }

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