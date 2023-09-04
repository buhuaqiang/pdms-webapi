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
    [Entity(TableCnName = "EPL成本編列審核",TableName = "cmc_pdms_wf_epl_fs", DBServer = "SysDbContext")]
    public partial class cmc_pdms_wf_epl_fs:SysEntity
    {
        /// <summary>
       ///wf_epl_fs_id
       /// </summary>
       [Key]
       [Display(Name ="wf_epl_fs_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid wf_epl_fs_id { get; set; }

       /// <summary>
       ///wf_master_id
       /// </summary>
       [Display(Name ="wf_master_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid wf_master_id { get; set; }

       /// <summary>
       ///epl_id
       /// </summary>
       [Display(Name ="epl_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid epl_id { get; set; }

       /// <summary>
       ///approve_status
       /// </summary>
       [Display(Name ="approve_status")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string approve_status { get; set; }

       /// <summary>
       ///fs_1
       /// </summary>
       [Display(Name ="fs_1")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? fs_1 { get; set; }

       /// <summary>
       ///fs_2
       /// </summary>
       [Display(Name ="fs_2")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? fs_2 { get; set; }

       /// <summary>
       ///fs_3
       /// </summary>
       [Display(Name ="fs_3")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? fs_3 { get; set; }

       /// <summary>
       ///fs_remark
       /// </summary>
       [Display(Name ="fs_remark")]
       [MaxLength(4000)]
       [Column(TypeName="nvarchar(4000)")]
       [Editable(true)]
       public string fs_remark { get; set; }

        /// <summary>
        ///幣別
        /// </summary>
        [Display(Name = "幣別")]
        [MaxLength(10)]
        [Column(TypeName = "varchar(10)")]
        [Editable(true)]
        public string currency { get; set; }


        /// <summary>
        ///匯率
        /// </summary>
        [Display(Name = "匯率")]
        [DisplayFormat(DataFormatString = "10,2")]
        [Column(TypeName = "decimal")]
        [Editable(true)]
        public decimal? exchange_rate { get; set; }

        /// <summary>
        ///開發費NTD
        /// </summary>
        [Display(Name = "開發費NTD")]
        [DisplayFormat(DataFormatString = "10,2")]
        [Column(TypeName = "decimal")]
        [Editable(true)]
        public decimal? fs_1_ntd { get; set; }

        /// <summary>
        ///模具費NTD
        /// </summary>
        [Display(Name = "模具費NTD")]
        [DisplayFormat(DataFormatString = "10,2")]
        [Column(TypeName = "decimal")]
        [Editable(true)]
        public decimal? fs_2_ntd { get; set; }

        /// <summary>
        ///開發費稅率
        /// </summary>
        [Display(Name = "開發費稅率")]
        [DisplayFormat(DataFormatString = "10,2")]
        [Column(TypeName = "decimal")]
        [Editable(true)]
        public decimal? fs_1_rate { get; set; }

        /// <summary>
        ///模具費稅率
        /// </summary>
        [Display(Name = "模具費稅率")]
        [DisplayFormat(DataFormatString = "10,2")]
        [Column(TypeName = "decimal")]
        [Editable(true)]
        public decimal? fs_2_rate { get; set; }





        /// <summary>
        ///Creator
        /// </summary>
        [Display(Name ="Creator")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string Creator { get; set; }

       /// <summary>
       ///CreateID
       /// </summary>
       [Display(Name ="CreateID")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? CreateID { get; set; }

       /// <summary>
       ///CreateDate
       /// </summary>
       [Display(Name ="CreateDate")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? CreateDate { get; set; }

       /// <summary>
       ///Modifier
       /// </summary>
       [Display(Name ="Modifier")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string Modifier { get; set; }

       /// <summary>
       ///ModifyID
       /// </summary>
       [Display(Name ="ModifyID")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? ModifyID { get; set; }

       /// <summary>
       ///ModifyDate
       /// </summary>
       [Display(Name ="ModifyDate")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? ModifyDate { get; set; }

       
    }
}