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
    [Entity(TableCnName = "view_UserDepartment",TableName = "view_UserDepartment",DBServer = "SysDbContext")]
    public partial class view_UserDepartment:SysEntity
    {
        /// <summary>
       ///User ID
       /// </summary>
       [Key]
       [Display(Name ="User ID")]
       [Column(TypeName="int")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public int User_Id { get; set; }

       /// <summary>
       ///員工名稱
       /// </summary>
       [Display(Name ="員工名稱")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string UserTrueName { get; set; }

       /// <summary>
       ///員工編號
       /// </summary>
       [Display(Name ="員工編號")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string user_code { get; set; }

       /// <summary>
       ///DepartmentType
       /// </summary>
       [Display(Name ="DepartmentType")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string DepartmentType { get; set; }

       /// <summary>
       ///部門名稱
       /// </summary>
       [Display(Name ="部門名稱")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string DepartmentName { get; set; }

       /// <summary>
       ///部門編號
       /// </summary>
       [Display(Name ="部門編號")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string DepartmentCode { get; set; }

       
    }
}