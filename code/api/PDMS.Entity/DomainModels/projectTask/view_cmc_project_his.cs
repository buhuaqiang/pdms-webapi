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
    [Entity(TableCnName = "主工作計畫版次管理",TableName = "view_cmc_project_his",DBServer = "SysDbContext")]
    public partial class view_cmc_project_his:SysEntity
    {
        /// <summary>
        ///GLNO
        /// </summary>
        [Key]
        [Display(Name = "GLNO")]
        [MaxLength(100)]
        [Column(TypeName = "varchar(100)")]
        [Editable(true)]
        public string glno { get; set; }

        /// <summary>
        ///專案名稱
        /// </summary>
        [Display(Name ="專案名稱")]
       [MaxLength(100)]
       [Column(TypeName="nvarchar(100)")]
       public string project_name { get; set; }

       /// <summary>
       ///零件編號
       /// </summary>
       [Display(Name ="零件編號")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       public string part_no { get; set; }

       /// <summary>
       ///零件名稱
       /// </summary>
       [Display(Name ="零件名稱")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       public string part_name { get; set; }

       /// <summary>
       ///階段
       /// </summary>
       [Display(Name ="階段")]
       [MaxLength(100)]
       [Column(TypeName="nvarchar(100)")]
       public string dicName { get; set; }

       /// <summary>
       ///任務
       /// </summary>
       [Display(Name ="任務")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       public string task_name { get; set; }

       /// <summary>
       ///日程(起)
       /// </summary>
       [Display(Name ="日程(起)")]
       [MaxLength(30)]
       [Column(TypeName="varchar(30)")]
       public string start_date { get; set; }

       /// <summary>
       ///日程(迄)
       /// </summary>
       [Display(Name ="日程(迄)")]
       [MaxLength(30)]
       [Column(TypeName="varchar(30)")]
       public string end_date { get; set; }

       /// <summary>
       ///預警
       /// </summary>
       [Display(Name ="預警")]
       [MaxLength(4)]
       [Column(TypeName="int(4)")]
       public int? warn { get; set; }

       /// <summary>
       ///前置任務
       /// </summary>
       [Display(Name ="前置任務")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       public string pre_task_name { get; set; }

       /// <summary>
       ///變動
       /// </summary>
       [Display(Name ="變動")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       public string action_type { get; set; }

       /// <summary>
       ///版次
       /// </summary>
       [Display(Name ="版次")]
       [Column(TypeName="varchar(30)")]
       public string? CreateDate { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="set_type")]
       [MaxLength(10)]
       [Column(TypeName="varchar(10)")]
       public string set_type { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="set_value")]
       [MaxLength(10)]
       [Column(TypeName="varchar(10)")]
       public string set_value { get; set; }

       
    }
}