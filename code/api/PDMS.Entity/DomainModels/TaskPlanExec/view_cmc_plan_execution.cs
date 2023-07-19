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
    [Entity(TableCnName = "子專案工作執行",TableName = "view_cmc_plan_execution",DBServer = "SysDbContext")]
    public partial class view_cmc_plan_execution:SysEntity
    {
        /// <summary>
       ///零件編號
       /// </summary>
       [Display(Name ="零件編號")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string part_no { get; set; }

       /// <summary>
       ///零件名稱
       /// </summary>
       [Display(Name ="零件名稱")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string part_name { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="project_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid project_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="User_id")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? User_id { get; set; }

       /// <summary>
       ///GLNO
       /// </summary>
       [Display(Name ="GLNO")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]

       public string glno { get; set; }

       /// <summary>
       ///專案名稱
       /// </summary>
       [Display(Name ="專案名稱")]
       [MaxLength(100)]
       [Column(TypeName="nvarchar(100)")]
       public string project_name { get; set; }

       /// <summary>
       ///開始時間
       /// </summary>
       [Display(Name ="開始時間")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? p_start_date { get; set; }

       /// <summary>
       ///結束時間
       /// </summary>
       [Display(Name ="結束時間")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? p_end_date { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="project_type")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string project_type { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="t_start_date")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? t_start_date { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="t_end_date")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? t_end_date { get; set; }

       /// <summary>
       ///狀態
       /// </summary>
       [Display(Name ="狀態")]
       [MaxLength(1)]
       [Column(TypeName="varchar(1)")]
       [Required(AllowEmptyStrings=false)]
       public string status { get; set; }



        /// <summary>
        ///承辦預警時間（天）
        /// </summary>
        [Display(Name = "承辦預警時間（天）")]
        [MaxLength(1)]
        [Column(TypeName = "int")]
        [Required(AllowEmptyStrings = false)]
        public int warn { get; set; }


        /// <summary>
        ///上級預警時間（天）
        /// </summary>
        [Display(Name = "上級預警時間（天）")]
        [MaxLength(1)]
        [Column(TypeName = "int")]
        [Required(AllowEmptyStrings = false)]
        public int warn_leader { get; set; }


        

            
    }
}