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
    [Entity(TableCnName = "專案組織信息",TableName = "cmc_pdms_project_org",DBServer = "SysDbContext")]
    public partial class cmc_pdms_project_org:SysEntity
    {
        /// <summary>
       ///PK
       /// </summary>
       [Key]
       [Display(Name ="PK")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid project_org_id { get; set; }

       /// <summary>
       ///大專案ID
       /// </summary>
       [Display(Name ="大專案ID")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? project_id { get; set; }

       /// <summary>
       ///所屬部門
       /// </summary>
       [Display(Name ="所屬部門")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string org_code { get; set; }

       /// <summary>
       ///UPG
       /// </summary>
       [Display(Name ="UPG")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string upg_id { get; set; }

       /// <summary>
       ///用戶ID
       /// </summary>
       [Display(Name ="用戶ID")]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string? user_id { get; set; }

       /// <summary>
       ///用戶名
       /// </summary>
       [Display(Name ="用戶名")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       public string user_name { get; set; }

       /// <summary>
       ///用戶角色ID-系統
       /// </summary>
       [Display(Name ="用戶角色ID-系統")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string user_role_id { get; set; }

       /// <summary>
       ///用戶角色名稱-接口
       /// </summary>
       [Display(Name ="用戶角色名稱-接口")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string user_role_name { get; set; }

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

       
    }
}