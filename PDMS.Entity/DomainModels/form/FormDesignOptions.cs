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
    [Entity(TableCnName = "表单设计",TableName = "FormDesignOptions")]
    public class FormDesignOptions:SysEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="FormId")]
       [Column(TypeName="int")]
       [Required(AllowEmptyStrings=false)]
       public int FormId { get; set; }

       /// <summary>
       ///表单名称
       /// </summary>
       [Display(Name ="表单名称")]
       [MaxLength(1000)]
       [Column(TypeName="nvarchar(1000)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string Title { get; set; }

        /// <summary>
        ///表单code
        /// </summary>
        [Display(Name = "表单code")]
        [MaxLength(1000)]
        [Column(TypeName = "nvarchar(20)")]
        [Editable(true)]
        [Required(AllowEmptyStrings = false)]
        public string FormCode { get; set; }

        /// <summary>
        ///设计器配置
        /// </summary>
        [Display(Name ="设计器配置")]
       [Column(TypeName="nvarchar(max)")]
       [Editable(true)]
       public string DaraggeOptions { get; set; }

       /// <summary>
       ///表单参数
       /// </summary>
       [Display(Name ="表单参数")]
       [Column(TypeName="nvarchar(max)")]
       [Editable(true)]
       public string FormOptions { get; set; }

       /// <summary>
       ///表单配置
       /// </summary>
       [Display(Name ="表单配置")]
       [Column(TypeName="nvarchar(max)")]
       [Editable(true)]
       public string FormConfig { get; set; }

       /// <summary>
       ///表单字段
       /// </summary>
       [Display(Name ="表单字段")]
       [Column(TypeName="nvarchar(max)")]
       [Editable(true)]
       public string FormFields { get; set; }

       /// <summary>
       ///表格配置
       /// </summary>
       [Display(Name ="表格配置")]
       [Column(TypeName="nvarchar(max)")]
       [Editable(true)]
       public string TableConfig { get; set; }

       /// <summary>
       ///创建人
       /// </summary>
       [Display(Name ="创建人")]
       [MaxLength(60)]
       [Column(TypeName="nvarchar(60)")]
       public string Creator { get; set; }

       /// <summary>
       ///创建时间
       /// </summary>
       [Display(Name ="创建时间")]
       [Column(TypeName="datetime")]
       public DateTime? CreateDate { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="CreateID")]
       [Column(TypeName="int")]
       public int? CreateID { get; set; }

       /// <summary>
       ///修改人
       /// </summary>
       [Display(Name ="修改人")]
       [MaxLength(60)]
       [Column(TypeName="nvarchar(60)")]
       public string Modifier { get; set; }

       /// <summary>
       ///修改时间
       /// </summary>
       [Display(Name ="修改时间")]
       [Column(TypeName="datetime")]
       public DateTime? ModifyDate { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="ModifyID")]
       [Column(TypeName="int")]
       public int? ModifyID { get; set; }

        /// <summary>
        ///狀態：0-暫存，1-已發佈
        /// </summary>
        [Display(Name = "status")]
        [Column(TypeName = "char")]
        public string? status { get; set; }

        /// <summary>
        ///逻辑删除标识 0,1-删除
        /// </summary>
        [Display(Name = "del_flag")]
        [Column(TypeName = "char")]
        public string? del_flag { get; set; }
    }
}