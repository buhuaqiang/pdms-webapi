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
    [Entity(TableCnName = "模板任務映射",TableName = "view_template_task_mapping",DBServer = "SysDbContext")]
    public partial class view_template_task_mapping:SysEntity
    {
        /// <summary>
       ///階段
       /// </summary>
       [Display(Name ="階段")]
       [MaxLength(100)]
       [Column(TypeName="nvarchar(100)")]
       public string dicName { get; set; }

        /// <summary>
        ///模板
        /// </summary>
        [Display(Name = "模板")]
        [MaxLength(50)]
        [Column(TypeName = "varchar(50)")]
        public string template_name { get; set; }

        /// <summary>
        ///
        /// </summary>
        [Display(Name = "set_value")]
        [MaxLength(10)]
        [Column(TypeName = "varchar(10)")]
        [Editable(true)]
        public string set_value { get; set; }

        /// <summary>
        ///階段
        /// </summary>
        [Display(Name = "階段")]
        [MaxLength(100)]
        [Column(TypeName = "nvarchar(100)")]
        [Editable(true)]
        public string set_name { get; set; }

        /// <summary>
        ///
        /// </summary>
        [Display(Name = "gate_code")]
        [MaxLength(10)]
        [Column(TypeName = "varchar(10)")]
        [Editable(true)]
        public string gate_code { get; set; }

        /// <summary>
        ///
        /// </summary>
        [Display(Name = "gate_name")]
        [MaxLength(10)]
        [Column(TypeName = "varchar(10)")]
        [Editable(true)]
        public string gate_name { get; set; }

        /// <summary>
        ///任務名稱
        /// </summary>
        [Display(Name ="任務名稱")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       public string task_name { get; set; }

        /// <summary>
        ///
        /// </summary>
        [Display(Name = "parent_set_id")]
        [Column(TypeName = "uniqueidentifier")]
        [Editable(true)]
        public Guid? parent_set_id { get; set; }

        /// <summary>
        ///承辦預警(天)
        /// </summary>
        [Display(Name ="承辦預警(天)")]
       [Column(TypeName="int")]
       public int? warn { get; set; }

       /// <summary>
       ///上級預警(天)
       /// </summary>
       [Display(Name ="上級預警(天)")]
       [Column(TypeName="int")]
       public int? warn_leader { get; set; }

       /// <summary>
       ///是否允許刪除
       /// </summary>
       [Display(Name ="是否允許刪除")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       public string is_delete_able { get; set; }

       /// <summary>
       ///任務描述
       /// </summary>
       [Display(Name ="任務描述")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       public string task_desc { get; set; }

       /// <summary>
       ///是否重點審核項目
       /// </summary>
       [Display(Name ="是否重點審核項目")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       public string is_audit_key { get; set; }

       /// <summary>
       ///日程設定(起)
       /// </summary>
       [Display(Name ="日程設定(起)")]
       [MaxLength(1)]
       [Column(TypeName="varchar(1)")]
       public string start_date { get; set; }

       /// <summary>
       ///日程設定(迄)
       /// </summary>
       [Display(Name ="日程設定(迄)")]
       [MaxLength(1)]
       [Column(TypeName="varchar(1)")]
       public string end_date { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="mapping_id")]
       [Column(TypeName="uniqueidentifier")]
       [Required(AllowEmptyStrings=false)]
       public Guid mapping_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="set_id")]
       [Column(TypeName="uniqueidentifier")]
       public Guid? set_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="task_id")]
       [Column(TypeName="uniqueidentifier")]
       public Guid? task_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="CreateID")]
       [Column(TypeName="int")]
       public int? CreateID { get; set; }

       /// <summary>
       ///創建人
       /// </summary>
       [Display(Name ="創建人")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       public string Creator { get; set; }

       /// <summary>
       ///創建日
       /// </summary>
       [Display(Name ="創建日")]
       [Column(TypeName="datetime")]
       public DateTime? CreateDate { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="ModifyID")]
       [Column(TypeName="int")]
       public int? ModifyID { get; set; }

       /// <summary>
       ///修改人
       /// </summary>
       [Display(Name ="修改人")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       public string Modifier { get; set; }

       /// <summary>
       ///修改日
       /// </summary>
       [Display(Name ="修改日")]
       [Column(TypeName="datetime")]
       public DateTime? ModifyDate { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="del_flag")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       public string del_flag { get; set; }

       /// <summary>
       ///排序
       /// </summary>
       [Display(Name ="排序")]
       [Column(TypeName="int")]
       public int? order_no { get; set; }

       /// <summary>
       ///預警工期(天)
       /// </summary>
       [Display(Name ="預警工期(天)")]
       [Column(TypeName="int")]
       public int? work_days { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="template_id")]
       [Column(TypeName="uniqueidentifier")]
       public Guid? template_id { get; set; }

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
       [Display(Name ="FormId")]
       [Column(TypeName="uniqueidentifier")]
       public Guid? FormId { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="FormCode")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       public string FormCode { get; set; }

       /// <summary>
       ///零品審核
       /// </summary>
       [Display(Name ="零品審核")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       public string is_part_handle { get; set; }

       
    }
}