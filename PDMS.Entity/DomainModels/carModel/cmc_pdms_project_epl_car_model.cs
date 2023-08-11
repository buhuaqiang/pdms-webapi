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
    [Entity(TableCnName = "EPL關聯車型",TableName = "cmc_pdms_project_epl_car_model",DBServer = "SysDbContext")]
    public partial class cmc_pdms_project_epl_car_model:SysEntity
    {
        /// <summary>
       ///epl_car_kind
       /// </summary>
       [Key]
       [Display(Name ="epl_car_kind")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid epl_car_kind_id { get; set; }

       /// <summary>
       ///epl_id
       /// </summary>
       [Display(Name ="epl_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? epl_id { get; set; }

       /// <summary>
       ///car_kind_code
       /// </summary>
       [Display(Name ="car_kind_code")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string car_kind_code { get; set; }

       /// <summary>
       ///car_value
       /// </summary>
       [Display(Name ="car_value")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string car_value { get; set; }

       /// <summary>
       ///CreateID
       /// </summary>
       [Display(Name ="CreateID")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? CreateID { get; set; }

       /// <summary>
       ///Creator
       /// </summary>
       [Display(Name ="Creator")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string Creator { get; set; }

       /// <summary>
       ///CreateDate
       /// </summary>
       [Display(Name ="CreateDate")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? CreateDate { get; set; }

       /// <summary>
       ///ModifyID
       /// </summary>
       [Display(Name ="ModifyID")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? ModifyID { get; set; }

       /// <summary>
       ///Modifier
       /// </summary>
       [Display(Name ="Modifier")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string Modifier { get; set; }

       /// <summary>
       ///ModifyDate
       /// </summary>
       [Display(Name ="ModifyDate")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? ModifyDate { get; set; }

       
    }
}