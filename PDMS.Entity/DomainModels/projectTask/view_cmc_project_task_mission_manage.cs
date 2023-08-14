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
    [Entity(TableCnName = "子專案任務維護",TableName = "view_cmc_project_task_mission_manage",DBServer = "SysDbContext")]
    public partial class view_cmc_project_task_mission_manage:SysEntity
    {
        /// <summary>
       ///任務
       /// </summary>
       [Display(Name ="任務")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string task_name { get; set; }

        /// <summary>
        ///任務
        /// </summary>
        [Display(Name = "任務描述")]
        [MaxLength(50)]
        [Column(TypeName = "varchar(50)")]
        [Editable(true)]
        public string task_desc { get; set; }

        /// <summary>
        ///前置任務
        /// </summary>
        [Display(Name ="前置任務")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string pre_task_name { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="set_type")]
       [MaxLength(10)]
       [Column(TypeName="varchar(10)")]
       [Editable(true)]
       public string set_type { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="set_value")]
       [MaxLength(10)]
       [Column(TypeName="varchar(10)")]
       [Editable(true)]
       public string set_value { get; set; }

       /// <summary>
       ///階段
       /// </summary>
       [Display(Name ="階段")]
       [MaxLength(100)]
       [Column(TypeName="nvarchar(100)")]
       [Editable(true)]
       public string dicName { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="project_task_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid project_task_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="epl_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid epl_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="approve_status")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string approve_status { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="done_status")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string done_status { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="check_flag")]
       [MaxLength(1)]
       [Column(TypeName="varchar(1)")]
       [Editable(true)]
       public string check_flag { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="template_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? template_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="task_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? task_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="FormCode")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string FormCode { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="FormId")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? FormId { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="FormCollectionId")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? FormCollectionId { get; set; }

       /// <summary>
       ///日程設定(起)
       /// </summary>
       [Display(Name ="日程設定(起)")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? start_date { get; set; }

       /// <summary>
       ///日程設定(迄)
       /// </summary>
       [Display(Name ="日程設定(迄)")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? end_date { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="order_no")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? order_no { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="pre_task_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? pre_task_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="rule_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? rule_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="is_eo")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string is_eo { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="is_part_handle")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string is_part_handle { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="is_delete_able")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string is_delete_able { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="is_audit_key")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string is_audit_key { get; set; }

       /// <summary>
       ///預警
       /// </summary>
       [Display(Name ="預警")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? warn { get; set; }

       /// <summary>
       ///上級預警
       /// </summary>
       [Display(Name ="上級預警")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? warn_leader { get; set; }

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
       ///
       /// </summary>
       [Display(Name ="del_flag")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string del_flag { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="action_type")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string action_type { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="task_completion")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? task_completion { get; set; }

       /// <summary>
       ///模板
       /// </summary>
       [Display(Name ="模板")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       public string template_name { get; set; }

       
    }
}