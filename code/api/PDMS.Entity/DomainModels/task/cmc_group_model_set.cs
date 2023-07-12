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
    [Entity(TableCnName = "組窗口設置",TableName = "cmc_group_model_set",DBServer = "SysDbContext")]
    public partial class cmc_group_model_set:SysEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="group_set_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid group_set_id { get; set; }

       /// <summary>
       ///設置類型
       /// </summary>
       [Display(Name ="設置類型")]
       [MaxLength(5)]
       [Column(TypeName="varchar(5)")]
       [Editable(true)]
       public string set_type { get; set; }

       /// <summary>
       ///部門編號
       /// </summary>
       [Display(Name ="部門編號")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string DepartmentCode { get; set; }

       /// <summary>
       ///車型
       /// </summary>
       [Display(Name ="車型")]
       [MaxLength(5)]
       [Column(TypeName="varchar(5)")]
       [Editable(true)]
       public string model_type { get; set; }

       /// <summary>
       ///用戶id
       /// </summary>
       [Display(Name ="用戶id")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? user_id { get; set; }

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


        ///// <summary>
        /////
        ///// </summary>
        //[Display(Name = "user_code")]
        //[Column(TypeName = "varchar(50)")]
        //[NotMapped]
        //public string user_code { get; set; }

        ///// <summary>
        /////
        ///// </summary>
        //[Display(Name = "UserTrueName")]
        //[Column(TypeName = "varchar(50)")]
        //public string UserTrueName { get; set; }

        ///// <summary>
        /////
        ///// </summary>
        //[Display(Name = "DepartmentName")]
        //[Column(TypeName = "varchar(50)")]
        //public string DepartmentName { get; set; }

    }
}