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
    [Entity(TableCnName = "cmc_pdms_wf_epl_task_form",TableName = "cmc_pdms_wf_epl_task_form",DBServer = "SysDbContext")]
    public partial class cmc_pdms_wf_epl_task_form:SysEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="wf_epl_task_form_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid wf_epl_task_form_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="wf_master_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid wf_master_id { get; set; }

       /// <summary>
       ///當前表單任務ID
       /// </summary>
       [Display(Name ="當前表單任務ID")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid project_task_id { get; set; }

       /// <summary>
       ///默認1：通過；0：拒絕；2：拿回
       /// </summary>
       [Display(Name ="默認1：通過；0：拒絕；2：拿回")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string approve_status { get; set; }

       /// <summary>
       ///任務模板ID
       /// </summary>
       [Display(Name ="任務模板ID")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? task_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="FormCode")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string FormCode { get; set; }

       /// <summary>
       ///表單ID
       /// </summary>
       [Display(Name ="表單ID")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? FormId { get; set; }

       /// <summary>
       ///表單值
       /// </summary>
       [Display(Name ="表單值")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? FormCollectionId { get; set; }

       /// <summary>
       ///Task 完成情?
       /// </summary>
       [Display(Name ="Task 完成情?")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string done_flag { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="start_date")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? start_date { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="end_date")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? end_date { get; set; }

    }
}