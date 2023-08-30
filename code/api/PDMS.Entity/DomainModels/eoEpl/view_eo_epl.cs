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
    [Entity(TableCnName = "EO清冊（視圖）",TableName = "view_eo_epl",DBServer = "SysDbContext")]
    public partial class view_eo_epl:SysEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Display(Name ="ec_no")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string ec_no { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="ai_type")]
       [MaxLength(20)]
       [Column(TypeName="nvarchar(20)")]
       [Editable(true)]
       public string ai_type { get; set; }

       /// <summary>
       ///GLNO
       /// </summary>
       [Display(Name ="GLNO")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string glno { get; set; }

       /// <summary>
       ///分發至開發清冊狀態
       /// </summary>
       [Display(Name ="分發至開發清冊狀態")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string action_type { get; set; }

       /// <summary>
       ///K/D區分
       /// </summary>
       [Display(Name ="K/D區分")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string kd_type { get; set; }

       /// <summary>
       ///零件件號
       /// </summary>
       [Display(Name ="零件件號")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string part_no { get; set; }

       /// <summary>
       ///零件版次
       /// </summary>
       [Display(Name ="零件版次")]
       [MaxLength(10)]
       [Column(TypeName="nvarchar(10)")]
       [Editable(true)]
       public string part_version { get; set; }

       /// <summary>
       ///繼承件號
       /// </summary>
       [Display(Name ="繼承件號")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string original_part_no { get; set; }

       /// <summary>
       ///沿用廠商
       /// </summary>
       [Display(Name ="沿用廠商")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string company_code { get; set; }

       /// <summary>
       ///部門代碼
       /// </summary>
       [Display(Name ="部門代碼")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string org_code { get; set; }

       /// <summary>
       ///組別代碼
       /// </summary>
       [Display(Name ="組別代碼")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string group_code { get; set; }

       /// <summary>
       ///分發日期
       /// </summary>
       [Display(Name ="分發日期")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? CreateDate { get; set; }

       /// <summary>
       ///表單狀態
       /// </summary>
       [Display(Name ="表單狀態")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? eo_status { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="eo_id")]
       [Column(TypeName="uniqueidentifier")]
       [Required(AllowEmptyStrings=false)]
       public Guid eo_id { get; set; }

       
    }
}