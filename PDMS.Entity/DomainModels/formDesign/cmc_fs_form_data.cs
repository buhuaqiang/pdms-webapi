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
    [Entity(TableCnName = "FS成本編列任務",TableName = "cmc_fs_form_data",DBServer = "SysDbContext")]
    public partial class cmc_fs_form_data:SysEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="FormCollectionId")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid FormCollectionId { get; set; }

       /// <summary>
       ///關聯id（project_task_id）
       /// </summary>
       [Display(Name ="關聯id（project_task_id）")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? related_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="currency")]
       [MaxLength(5)]
       [Column(TypeName="varchar(5)")]
       [Editable(true)]
       public string currency { get; set; }

       /// <summary>
       ///開發費
       /// </summary>
       [Display(Name ="開發費")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? fs_1 { get; set; }

       /// <summary>
       ///模具費
       /// </summary>
       [Display(Name ="模具費")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? fs_2 { get; set; }

       /// <summary>
       ///設變費
       /// </summary>
       [Display(Name ="設變費")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? fs_3 { get; set; }

       /// <summary>
       ///匯率
       /// </summary>
       [Display(Name ="匯率")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? exchange_rate { get; set; }

       /// <summary>
       ///開發費NTD
       /// </summary>
       [Display(Name ="開發費NTD")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? fs_1_ntd { get; set; }

       /// <summary>
       ///模具費NTD
       /// </summary>
       [Display(Name ="模具費NTD")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? fs_2_ntd { get; set; }

       /// <summary>
       ///開發費稅率
       /// </summary>
       [Display(Name ="開發費稅率")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? fs_1_rate { get; set; }

       /// <summary>
       ///模具費稅率
       /// </summary>
       [Display(Name ="模具費稅率")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? fs_2_rate { get; set; }

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