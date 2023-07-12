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
    [Entity(TableCnName = "任務規則表",TableName = "cmc_common_task_rule",DBServer = "SysDbContext")]
    public partial class cmc_common_task_rule:SysEntity
    {
        /// <summary>
       ///PK
       /// </summary>
       [Key]
       [Display(Name ="PK")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid rule_id { get; set; }

       /// <summary>
       ///規則code
       /// </summary>
       [Display(Name ="規則code")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string rule_code { get; set; }

       /// <summary>
       ///規則名稱
       /// </summary>
       [Display(Name ="規則名稱")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string rule_name { get; set; }

       /// <summary>
       ///規則內容
       /// </summary>
       [Display(Name ="規則內容")]
       [MaxLength(500)]
       [Column(TypeName="varchar(500)")]
       [Editable(true)]
       public string rule_content { get; set; }

       /// <summary>
       ///規則說明
       /// </summary>
       [Display(Name ="規則說明")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string rule_desc { get; set; }

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

       /// <summary>
       ///01：表單校驗，02：API調用
       /// </summary>
       [Display(Name ="01：表單校驗，02：API調用")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string rule_type { get; set; }

       
    }
}