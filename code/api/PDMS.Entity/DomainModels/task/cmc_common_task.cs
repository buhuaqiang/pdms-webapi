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
    [Entity(TableCnName = "任務表",TableName = "cmc_common_task",DBServer = "SysDbContext")]
    public partial class cmc_common_task:SysEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="task_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid task_id { get; set; }

        /// <summary>
        ///專案類型(1-車型專案)
        /// </summary>
        [Display(Name = "專案類型")]
        [MaxLength(100)]
        [Column(TypeName = "varchar(5)")]
        [Editable(true)]
        public string project_class { get; set; }

        /// <summary>
        ///任務名稱
        /// </summary>
        [Display(Name ="任務名稱")]
       [MaxLength(200)]
       [Column(TypeName="varchar(200)")]
       [Editable(true)]
       public string task_name { get; set; }

       /// <summary>
       ///完成規則
       /// </summary>
       [Display(Name ="完成規則")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? rule_id { get; set; }

       /// <summary>
       ///表單code
       /// </summary>
       [Display(Name ="表單code")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string? FormCode { get; set; }

       /// <summary>
       ///綁定表單
       /// </summary>
       [Display(Name ="綁定表單")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? FormId { get; set; }

       /// <summary>
       ///流程規則編號
       /// </summary>
       [Display(Name ="流程規則編號")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string? flow_code { get; set; }

       /// <summary>
       ///是否EO/PO任務
       /// </summary>
       [Display(Name ="是否EO/PO任務")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string? is_eo { get; set; }

       /// <summary>
       ///是否需要零品承辦參與審核
       /// </summary>
       [Display(Name ="是否需要零品承辦參與審核")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string? is_part_handle { get; set; }

       /// <summary>
       ///是否允許刪除
       /// </summary>
       [Display(Name ="是否允許刪除")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string? is_delete_able { get; set; }

       /// <summary>
       ///是否重點審計項目
       /// </summary>
       [Display(Name ="是否重點審計項目")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string? is_audit_key { get; set; }

       /// <summary>
       ///承辦預警時間（天）
       /// </summary>
       [Display(Name ="承辦預警時間（天）")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? warn { get; set; }

       /// <summary>
       ///上級預警時間（天）
       /// </summary>
       [Display(Name ="上級預警時間（天）")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? warn_leader { get; set; }

       /// <summary>
       ///適用零件類型
       /// </summary>
       [Display(Name ="適用零件類型")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string? suit_part_kinds { get; set; }

       /// <summary>
       ///適用部門
       /// </summary>
       [Display(Name ="適用部門")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string? suit_org_codes { get; set; }

       /// <summary>
       ///任務描述
       /// </summary>
       [Display(Name ="任務描述")]
       [MaxLength(1000)]
       [Column(TypeName="nvarchar(1000)")]
       [Editable(true)]
       public string? task_desc { get; set; }

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
       public string? Creator { get; set; }

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
       public string? Modifier { get; set; }

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
       public string? del_flag { get; set; }


        /// <summary>
        ///
        /// </summary>
        [Display(Name = "預計工期")]
        [MaxLength(1)]
        [Column(TypeName = "int")]
        [Editable(true)]
        public int? work_days { get; set; }



        /// <summary>
        ///
        /// </summary>
        [Display(Name = "form_type")]
        [MaxLength(5)]
        [Column(TypeName = "varchar(5)")]
        [Editable(true)]
        public string? form_type { get; set; }

        /// <summary>
        ///
        /// </summary>
        [Display(Name = "form_url")]
        [MaxLength(20)]
        [Column(TypeName = "varchar(20)")]
        [Editable(true)]
        public string? form_url { get; set; }

    }
}