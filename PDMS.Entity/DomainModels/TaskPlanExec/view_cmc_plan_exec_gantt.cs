using Newtonsoft.Json;
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
    [Entity(TableCnName = "view_cmc_plan_exec_gantt",TableName = "view_cmc_plan_exec_gantt",DBServer = "SysDbContext")]
    public partial class view_cmc_plan_exec_gantt:SysEntity
    {

        /// <summary>
        ///
        /// </summary>
        [Display(Name = "task_id")]
        [MaxLength(10)]
        [Column(TypeName = "varchar(10)")]
        [Editable(true)]
        public Guid task_id { get; set; }


        /// <summary>
        ///
        /// </summary>
        [Display(Name = "task_name")]
        [MaxLength(10)]
        [Column(TypeName = "varchar(10)")]
        [Editable(true)]
        public string task_name { get; set; }


        /// <summary>
        ///
        /// </summary>
        [Display(Name ="gate_code")]
       [MaxLength(10)]
       [Column(TypeName="varchar(10)")]
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
        ///
        /// </summary>
        [Display(Name ="gate_start_date")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? gate_start_date { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="gate_end_date")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? gate_end_date { get; set; }

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
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string part_name { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="set_value")]
       [MaxLength(10)]
       [Column(TypeName="varchar(10)")]
       [Editable(true)]
       public string set_value { get; set; }


        /// <summary>
        ///
        /// </summary>
        [Display(Name = "set_name")]
        [MaxLength(10)]
        [Column(TypeName = "varchar(10)")]
        [Editable(true)]
        public string set_name { get; set; }


       /// <summary>
       ///
       /// </summary>
       [Display(Name ="task_completion")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? task_completion { get; set; }

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
        [Display(Name = "task_status")]
        [MaxLength(2)]
        [Column(TypeName = "varchar(2)")]
        [Editable(true)]
        public string task_status { get; set; }

        

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="User_id")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? User_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="warn")]
       [Column(TypeName="int")]
       public int? warn { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="warn_leader")]
       [Column(TypeName="int")]
       public int? warn_leader { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="project_id")]
       [Column(TypeName="uniqueidentifier")]
       [Required(AllowEmptyStrings=false)]
       public Guid project_id { get; set; }

        /// <summary>
        ///
        /// </summary>
        [Display(Name = "project_task_id")]
        [Column(TypeName = "uniqueidentifier")]
        [Required(AllowEmptyStrings = false)]
        public Guid project_task_id { get; set; }
        

        /// <summary>
        ///
        /// </summary>
        [Display(Name = "FormCode")]
        [Column(TypeName = "string")]
        [Required(AllowEmptyStrings = false)]
        public string FormCode { get; set; }

        /// <summary>
        ///
        /// </summary>
        [Display(Name = "FormId")]
        [Column(TypeName = "uniqueidentifier")]
        [Required(AllowEmptyStrings = false)]
        public Guid FormId { get; set; }

        /// <summary>
        ///
        /// </summary>
        [Display(Name = "FormCollectionId")]
        [Column(TypeName = "uniqueidentifier")]
        [Required(AllowEmptyStrings = false)]
        public Guid FormCollectionId { get; set; }


        /// <summary>
        ///审批流程
        /// </summary>
        [Display(Name = "flow_code")]
        [Column(TypeName = "string")]
        [Required(AllowEmptyStrings = false)]
        public string flow_code { get; set; }     
    }
}
