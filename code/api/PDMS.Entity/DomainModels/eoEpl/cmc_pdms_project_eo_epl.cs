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
    [Entity(TableCnName = "EO清冊",TableName = "cmc_pdms_project_eo_epl",DBServer = "SysDbContext")]
    public partial class cmc_pdms_project_eo_epl:SysEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="eo_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid eo_id { get; set; }

       /// <summary>
       ///EO NO
       /// </summary>
       [Display(Name ="EO NO")]
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
       ///大專案ID
       /// </summary>
       [Display(Name ="大專案ID")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? project_id { get; set; }

       /// <summary>
       ///零件號
       /// </summary>
       [Display(Name ="零件號")]
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
       ///廠商代碼
       /// </summary>
       [Display(Name ="廠商代碼")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string company_code { get; set; }

       /// <summary>
       ///KD類型,沿用，新件
       /// </summary>
       [Display(Name ="KD類型,沿用，新件")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string kd_type { get; set; }

        /// <summary>
        ///部門代碼
        /// </summary>
        [Display(Name = "部門代碼")]
        [MaxLength(50)]
        [Column(TypeName = "varchar(50)")]
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
       ///開發承辦
       /// </summary>
       [Display(Name ="開發承辦")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? dev_taker_id { get; set; }

       /// <summary>
       ///零件版次
       /// </summary>
       [Display(Name ="零件版次")]
       [MaxLength(10)]
       [Column(TypeName="nvarchar(10)")]
       [Editable(true)]
       public string part_version { get; set; }

       /// <summary>
       ///原件號
       /// </summary>
       [Display(Name ="原件號")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string original_part_no { get; set; }

       /// <summary>
       ///add,modify,delete
       /// </summary>
       [Display(Name ="add,modify,delete")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string action_type { get; set; }

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
       ///分发状态
       /// </summary>
       [Display(Name ="分发状态")]
       [MaxLength(5)]
       [Column(TypeName="char(5)")]
       [Editable(true)]
       public string eo_status { get; set; }

       /// <summary>
       ///備註
       /// </summary>
       [Display(Name ="備註")]
       [MaxLength(500)]
       [Column(TypeName="nvarchar(500)")]
       [Editable(true)]
       public string remarks { get; set; }

       /// <summary>
       ///是否已寫入epl表
       /// </summary>
       [Display(Name ="是否已寫入epl表")]
       [MaxLength(5)]
       [Column(TypeName="char(5)")]
       [Editable(true)]
       public string is_input_epl { get; set; }

       /// <summary>
       ///开发清册epl主键
       /// </summary>
       [Display(Name ="开发清册epl主键")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? epl_id { get; set; }

       /// <summary>
       ///ec_date=任务开始时间
       /// </summary>
       [Display(Name ="ec_date=任务开始时间")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? ec_date { get; set; }

       /// <summary>
       ///任务结束日期
       /// </summary>
       [Display(Name ="任务结束日期")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? task_end_date { get; set; }


        /// <summary>
        ///所屬大日程
        /// </summary>
        [Display(Name = "所屬大日程")]
        [Column(TypeName = "uniqueidentifier")]
        [Editable(true)]
        public Guid? eo_gate_id { get; set; }
    }
}