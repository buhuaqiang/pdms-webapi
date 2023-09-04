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
    [Entity(TableCnName = "view_wk_approved",TableName = "view_wk_approved",DBServer = "SysDbContext")]
    public partial class view_wk_approved:SysEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="wf_master_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid wf_master_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="project_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? project_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="epl_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? epl_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="apply_type")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string apply_type { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="org_code")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string org_code { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="approve_user_id")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? approve_user_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="approve_role")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string approve_role { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="approved_date")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? approved_date { get; set; }

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
       [Display(Name ="CreateID")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? CreateID { get; set; }

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
       [Display(Name ="Modifier")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string Modifier { get; set; }

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
       [Display(Name ="ModifyDate")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? ModifyDate { get; set; }

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
       [Display(Name ="master_no")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string master_no { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="glno")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string glno { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="project_name")]
       [MaxLength(100)]
       [Column(TypeName="nvarchar(100)")]
       [Editable(true)]
       public string project_name { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="project_status")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string project_status { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="part_no")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string part_no { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="part_name")]
       [MaxLength(1)]
       [Column(TypeName="varchar(1)")]
       [Editable(true)]
       public string part_name { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="task_name")]
       [MaxLength(1)]
       [Column(TypeName="varchar(1)")]
       [Editable(true)]
       public string task_name { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="detail")]
       [MaxLength(1)]
       [Column(TypeName="varchar(1)")]
       [Editable(true)]
       public string detail { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="form_url")]
       [MaxLength(1)]
       [Column(TypeName="varchar(1)")]
       [Editable(true)]
       public string form_url { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="form_type")]
       [MaxLength(1)]
       [Column(TypeName="varchar(1)")]
       [Editable(true)]
       public string form_type { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="FormId")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? FormId { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="FormCollectionId")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? FormCollectionId { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="wf_epl_task_form_id")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? wf_epl_task_form_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="project_task_id")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? project_task_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="task_id")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? task_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="start_date")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? start_date { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="end_date")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? end_date { get; set; }

       
    }
}