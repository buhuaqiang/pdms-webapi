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
    [Entity(TableCnName = "子專案工作管理N",TableName = "view_cmc_project_task_manageN",DBServer = "SysDbContext")]
    public partial class view_cmc_project_task_manageN:SysEntity
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
       [Editable(true)]
       public string project_name { get; set; }

        /// <summary>
        ///
        /// </summary>
        [Display(Name = "template_id")]
        [Column(TypeName = "uniqueidentifier")]
        [Editable(true)]
        public Guid? template_id { get; set; }

        /// <summary>
        ///零件編號
        /// </summary>
        [Display(Name ="零件編號")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       public string part_no { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="epl_id")]
       [Column(TypeName="uniqueidentifier")]
       [Required(AllowEmptyStrings=false)]
       public Guid epl_id { get; set; }

       /// <summary>
       ///零件名稱
       /// </summary>
       [Display(Name ="零件名稱")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       public string part_name { get; set; }

       /// <summary>
       ///狀態
       /// </summary>
       [Display(Name ="狀態")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       public string task_define_approve_status { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="dev_taker_id")]
       [Column(TypeName="int")]
       public int? dev_taker_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="User_Id")]
       [Column(TypeName="int")]
       public int? User_Id { get; set; }

       /// <summary>
       ///負責承辦
       /// </summary>
       [Display(Name ="負責承辦")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       public string UserTrueName { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="user_code")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       public string user_code { get; set; }

       /// <summary>
       ///負責單位
       /// </summary>
       [Display(Name ="負責單位")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Required(AllowEmptyStrings=false)]
       public string DepartmentName { get; set; }

       /// <summary>
       ///零品承辦
       /// </summary>
       [Display(Name ="零品承辦")]
       [Column(TypeName="int")]
       public int? part_taker_id { get; set; }

       /// <summary>
       ///最新版本
       /// </summary>
       [Display(Name ="最新版本")]
       [MaxLength(4000)]
       [Column(TypeName="nvarchar(4000)")]
       public string ModifyDate { get; set; }



       
    }
}