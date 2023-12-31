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
    [Entity(TableCnName = "專案建立",TableName = "view_cmc_project_pm",DetailTable =  new Type[] { typeof(cmc_pdms_project_gate),typeof(cmc_pdms_project_org)},DetailTableCnName = "cmc_pdms_project_gate,cmc_pdms_project_org",DBServer = "SysDbContext")]
    public partial class view_cmc_project_pm:SysEntity
    {
        /// <summary>
       ///主鍵
       /// </summary>
       [Key]
       [Display(Name ="主鍵")]
       [Column(TypeName="uniqueidentifier")]
       [Required(AllowEmptyStrings=false)]
       public Guid project_id { get; set; }

       /// <summary>
       ///公司別
       /// </summary>
       [Display(Name ="公司別")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       public string entity { get; set; }

       /// <summary>
       ///專案編號
       /// </summary>
       [Display(Name ="專案編號")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
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
       ///專案類型
       /// </summary>
       [Display(Name ="專案類型")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string project_type { get; set; }

       /// <summary>
       ///專案注冊時間
       /// </summary>
       [Display(Name ="專案注冊時間")]
       [Column(TypeName="datetime")]
       public DateTime? project_reg_date { get; set; }

       /// <summary>
       ///開始時間
       /// </summary>
       [Display(Name ="開始時間")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? start_date { get; set; }

       /// <summary>
       ///結束時間
       /// </summary>
       [Display(Name ="結束時間")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? end_date { get; set; }

       /// <summary>
       ///首版日程設定日期
       /// </summary>
       [Display(Name ="首版日程設定日期")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? project_gate_date { get; set; }

       /// <summary>
       ///預算投資金額
       /// </summary>
       [Display(Name ="預算投資金額")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? project_budget { get; set; }

       /// <summary>
       ///專案目標
       /// </summary>
       [Display(Name ="專案目標")]
       [MaxLength(255)]
       [Column(TypeName="varchar(255)")]
       [Editable(true)]
       public string project_purpose { get; set; }

       /// <summary>
       ///專案內容描述
       /// </summary>
       [Display(Name ="專案內容描述")]
       [MaxLength(255)]
       [Column(TypeName= "varchar(255)")]
       [Editable(true)]
       public string project_describe { get; set; }

       /// <summary>
       ///專案狀態
       /// </summary>
       [Display(Name ="專案狀態")]
       [MaxLength(2)]
       [Column(TypeName= "varchar(2)")]
       public string project_status { get; set; }

       /// <summary>
       ///發佈狀態
       /// </summary>
       [Display(Name ="發佈狀態")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       public string release_status { get; set; }

       /// <summary>
       ///大車型
       /// </summary>
       [Display(Name ="大車型")]
       [MaxLength(5)]
       [Column(TypeName="varchar(5)")]
       [Editable(true)]
       public string model_type { get; set; }

       /// <summary>
       ///版本
       /// </summary>
       [Display(Name ="版本")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       public string version { get; set; }

        /// <summary>
        ///專案啟動 EPL載入日期
        /// </summary>
        [Display(Name = "專案啟動 EPL載入日期")]
        [Column(TypeName = "date")]
        [Editable(true)]
        public DateTime? epl_load_date { get; set; }

        /// <summary>
        ///CreateID
        /// </summary>
        [Display(Name ="CreateID")]
       [Column(TypeName="int")]
       public int? CreateID { get; set; }

       /// <summary>
       ///Creator
       /// </summary>
       [Display(Name ="Creator")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       public string Creator { get; set; }

       /// <summary>
       ///CreateDate
       /// </summary>
       [Display(Name ="CreateDate")]
       [Column(TypeName="datetime")]
       public DateTime? CreateDate { get; set; }

       /// <summary>
       ///ModifyID
       /// </summary>
       [Display(Name ="ModifyID")]
       [Column(TypeName="int")]
       public int? ModifyID { get; set; }

       /// <summary>
       ///Modifier
       /// </summary>
       [Display(Name ="Modifier")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       public string Modifier { get; set; }

       /// <summary>
       ///ModifyDate
       /// </summary>
       [Display(Name ="ModifyDate")]
       [Column(TypeName="datetime")]
       public DateTime? ModifyDate { get; set; }

       [Display(Name ="cmc_pdms_project_gate")]
       [ForeignKey("project_id")]
       public List<cmc_pdms_project_gate> cmc_pdms_project_gate { get; set; }


       [Display(Name ="cmc_pdms_project_org")]
       [ForeignKey("project_id")]
       public List<cmc_pdms_project_org> cmc_pdms_project_org { get; set; }




        /// <summary>
        ///年型
        /// </summary>
        [Display(Name = "年型")]
        [MaxLength(20)]
        [Column(TypeName = "varchar(20)")]
        [Editable(true)]
        public string model_year { get; set; }

        /// <summary>
        ///仕向地
        /// </summary>
        [Display(Name = "仕向地")]
        [MaxLength(20)]
        [Column(TypeName = "varchar(20)")]
        [Editable(true)]
        public string model_dest { get; set; }


        /// <summary>
        ///EO費率
        /// </summary>
        [Display(Name = "EO費率")]
        [DisplayFormat(DataFormatString = "10,2")]
        [Column(TypeName = "decimal")]
        [Editable(true)]
        public decimal? eo_fee { get; set; }

        /// <summary>
        ///大日程字典Gode
        /// </summary>
        [Display(Name = "大日程字典Gode")]
        [MaxLength(10)]
        [Column(TypeName = "varchar(10)")]
        [Editable(true)]
        public string gate_code { get; set; }

        /// <summary>
        ///定版狀態
        /// </summary>
        [Display(Name = "定版狀態")]
        [MaxLength(200)]
        [Column(TypeName = "varchar(200)")]
        [Editable(true)]
        public string Final_status { get; set; }

        /// <summary>
        ///FS成本編列狀態
        /// </summary>
        [Display(Name = "FS成本編列狀態")]
        [MaxLength(200)]
        [Column(TypeName = "varchar(200)")]
        [Editable(true)]
        public string fs_status { get; set; }

        /// <summary>
        ///FS成本編列是否在審批中
        /// </summary>
        [Display(Name = "FS成本編列是否在審批中")]
        [MaxLength(200)]
        [Column(TypeName = "varchar(200)")]
        [Editable(true)]
        public string? isApproving { get; set; }

        /// <summary>
        ///从plm抓取到正式EPL时间
        /// </summary>
        [Display(Name = "从plm抓取到正式EPL时间")]
        [Column(TypeName = "datetime")]
        [Editable(true)]
        public DateTime? epl_load_time { get; set; }

    }
}