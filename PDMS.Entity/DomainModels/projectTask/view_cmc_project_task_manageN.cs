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
    [Entity(TableCnName = "子專案工作管理",TableName = "view_cmc_project_task_manageN",DBServer = "SysDbContext")]
    public partial class view_cmc_project_task_manageN:SysEntity
    {
        /// <summary>
       ///
       /// </summary>
        [Key]
        [Display(Name = "GLNO")]
        [MaxLength(100)]
        [Column(TypeName = "varchar(100)")]
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
       [Display(Name ="approve_status")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string approve_status { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="epl_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid epl_id { get; set; }

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
       [Display(Name ="part_taker_id")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? part_taker_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="dev_taker_id")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? dev_taker_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="User_Id")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? User_Id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="UserTrueName")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string UserTrueName { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="user_code")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string user_code { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="project_task_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? project_task_id { get; set; }

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
       [Display(Name ="ModifyDate")]
       [MaxLength(4000)]
       [Column(TypeName="nvarchar(4000)")]
       [Editable(true)]
       public string ModifyDate { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="DepartmentName")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string DepartmentName { get; set; }

       
    }
}