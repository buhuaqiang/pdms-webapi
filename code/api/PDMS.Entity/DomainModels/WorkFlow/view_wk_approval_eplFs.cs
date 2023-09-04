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
    [Entity(TableCnName = "view_wk_approval_eplFs", TableName = "view_wk_approval_eplFs", DBServer = "SysDbContext")]
    public partial class view_wk_approval_eplFs: SysEntity
    {
        /// <summary>
        ///wf_epl_org_id
        /// </summary>
        [Key]
        [Display(Name = "wf_epl_fs_id")]
        [Column(TypeName = "uniqueidentifier")]
        [Editable(true)]
        [Required(AllowEmptyStrings = false)]
        public Guid wf_epl_fs_id { get; set; }

        /// <summary>
        ///wf_master_id
        /// </summary>
        [Display(Name = "wf_master_id")]
        [Column(TypeName = "uniqueidentifier")]
        [Editable(true)]
        [Required(AllowEmptyStrings = false)]
        public Guid wf_master_id { get; set; }

        /// <summary>
        ///epl_id
        /// </summary>
        [Display(Name = "epl_id")]
        [Column(TypeName = "uniqueidentifier")]
        [Editable(true)]
        [Required(AllowEmptyStrings = false)]
        public Guid epl_id { get; set; }

        /// <summary>
        ///審批狀態
        /// </summary>
        [Display(Name = "審批狀態")]
        [MaxLength(2)]
        [Column(TypeName = "varchar(2)")]
        [Editable(true)]
        [Required(AllowEmptyStrings = false)]
        public string approve_status { get; set; }

        /// <summary>
        ///開發費
        /// </summary>
        [Display(Name = "開發費")]
        [DisplayFormat(DataFormatString = "10,2")]
        [Column(TypeName = "decimal")]
        [Editable(true)]
        public decimal? fs_1 { get; set; }

        /// <summary>
        ///模具費
        /// </summary>
        [Display(Name = "模具費")]
        [DisplayFormat(DataFormatString = "10,2")]
        [Column(TypeName = "decimal")]
        [Editable(true)]
        public decimal? fs_2 { get; set; }

        /// <summary>
        ///設變費
        /// </summary>
        [Display(Name = "設變費")]
        [DisplayFormat(DataFormatString = "10,2")]
        [Column(TypeName = "decimal")]
        [Editable(true)]
        public decimal? fs_3 { get; set; }

        /// <summary>
        ///估價說明
        /// </summary>
        [Display(Name = "估價說明")]
        [MaxLength(4000)]
        [Column(TypeName = "nvarchar(4000)")]
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
        ///設變費
        /// </summary>
        [Display(Name = "匯率")]
        [DisplayFormat(DataFormatString = "10,2")]
        [Column(TypeName = "decimal")]
        [Editable(true)]
        public decimal? exchange_rate { get; set; }

        /// <summary>
        ///設變費
        /// </summary>
        [Display(Name = "開發費NTD")]
        [DisplayFormat(DataFormatString = "10,2")]
        [Column(TypeName = "decimal")]
        [Editable(true)]
        public decimal? fs_1_ntd { get; set; }

        /// <summary>
        ///設變費
        /// </summary>
        [Display(Name = "模具費NTD")]
        [DisplayFormat(DataFormatString = "10,2")]
        [Column(TypeName = "decimal")]
        [Editable(true)]
        public decimal? fs_2_ntd { get; set; }

        /// <summary>
        ///設變費
        /// </summary>
        [Display(Name = "開發費稅率")]
        [DisplayFormat(DataFormatString = "10,2")]
        [Column(TypeName = "decimal")]
        [Editable(true)]
        public decimal? fs_1_rate { get; set; }

        /// <summary>
        ///設變費
        /// </summary>
        [Display(Name = "模具費稅率")]
        [DisplayFormat(DataFormatString = "10,2")]
        [Column(TypeName = "decimal")]
        [Editable(true)]
        public decimal? fs_2_rate { get; set; }




        /// <summary>
        ///Creator
        /// </summary>
        [Display(Name = "Creator")]
        [MaxLength(50)]
        [Column(TypeName = "varchar(50)")]
        [Editable(true)]
        public string Creator { get; set; }

        /// <summary>
        ///CreateID
        /// </summary>
        [Display(Name = "CreateID")]
        [Column(TypeName = "int")]
        [Editable(true)]
        public int? CreateID { get; set; }

        /// <summary>
        ///CreateDate
        /// </summary>
        [Display(Name = "CreateDate")]
        [Column(TypeName = "datetime")]
        [Editable(true)]
        public DateTime? CreateDate { get; set; }

        /// <summary>
        ///Modifier
        /// </summary>
        [Display(Name = "Modifier")]
        [MaxLength(50)]
        [Column(TypeName = "varchar(50)")]
        [Editable(true)]
        public string Modifier { get; set; }

        /// <summary>
        ///ModifyID
        /// </summary>
        [Display(Name = "ModifyID")]
        [Column(TypeName = "int")]
        [Editable(true)]
        public int? ModifyID { get; set; }

        /// <summary>
        ///ModifyDate
        /// </summary>
        [Display(Name = "ModifyDate")]
        [Column(TypeName = "datetime")]
        [Editable(true)]
        public DateTime? ModifyDate { get; set; }


        /// <summary>
        ///
        /// </summary>
        [Display(Name = "part_name")]
        [MaxLength(100)]
        [Column(TypeName = "nvarchar(100)")]
        [Editable(true)]
        public string part_name { get; set; }

        /// <summary>
        ///
        /// </summary>
        [Display(Name = "part_no")]
        [MaxLength(100)]
        [Column(TypeName = "varchar(100)")]
        [Editable(true)]
        public string part_no { get; set; }
    }
}