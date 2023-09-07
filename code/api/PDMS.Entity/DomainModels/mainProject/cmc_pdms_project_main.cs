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
    [Entity(TableCnName = "專案主檔",TableName = "cmc_pdms_project_main",DetailTable =  new Type[] { typeof(cmc_pdms_project_gate),typeof(cmc_pdms_project_org)},DetailTableCnName = "cmc_pdms_project_gate,cmc_pdms_project_org",DBServer = "SysDbContext")]
    public partial class cmc_pdms_project_main:SysEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="project_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid project_id { get; set; }

       /// <summary>
       ///公司別
       /// </summary>
       [Display(Name ="公司別")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
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
       ///
       /// </summary>
       [Display(Name ="project_name")]
       [MaxLength(100)]
       [Column(TypeName="nvarchar(100)")]
       [Editable(true)]
       public string project_name { get; set; }

       /// <summary>
       ///專案類型,數據字典
       /// </summary>
       [Display(Name ="專案類型,數據字典")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string project_type { get; set; }

       /// <summary>
       ///專案注冊時間
       /// </summary>
       [Display(Name ="專案注冊時間")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? project_reg_date { get; set; }

       /// <summary>
       ///歸屬部門
       /// </summary>
       [Display(Name ="歸屬部門")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string org_code { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="start_date")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? start_date { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="end_date")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? end_date { get; set; }

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
       ///專案啟動 EPL載入日期
       /// </summary>
       [Display(Name ="專案啟動 EPL載入日期")]
       [Column(TypeName="date")]
       [Editable(true)]
       public DateTime? epl_load_date { get; set; }

       /// <summary>
       ///假版EPL定版狀態 0：草稿；1定版
       /// </summary>
       [Display(Name ="假版EPL定版狀態 0：草稿；1定版")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string draft_epl_final_status { get; set; }

       /// <summary>
       ///假版EPL定版日期
       /// </summary>
       [Display(Name ="假版EPL定版日期")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? draft_epl_final_date { get; set; }

       /// <summary>
       ///假版EPL定版操作人ID
       /// </summary>
       [Display(Name ="假版EPL定版操作人ID")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? draft_epl_final_user_id { get; set; }

       /// <summary>
       ///專案啟動EPL定版狀態 0：草稿；1定版
       /// </summary>
       [Display(Name ="專案啟動EPL定版狀態 0：草稿；1定版")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string epl_final_status { get; set; }

       /// <summary>
       ///專案啟動EPL定版日期
       /// </summary>
       [Display(Name ="專案啟動EPL定版日期")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? epl_final_date { get; set; }

       /// <summary>
       ///專案啟動EPL定版操作人ID
       /// </summary>
       [Display(Name ="專案啟動EPL定版操作人ID")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? epl_final_user_id { get; set; }

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
       ///專案狀態 01:專案建立 02:專案啟動 03:專案工作管理 04:工作計劃管理 05:結案
       /// </summary>
       [Display(Name ="專案狀態 01:專案建立 02:專案啟動 03:專案工作管理 04:工作計劃管理 05:結案")]
       [MaxLength(2)]
       [Column(TypeName= "varchar(2)")]
       [Editable(true)]
       public string project_status { get; set; }

       /// <summary>
       ///發佈狀態  01:草稿 02:已發佈 03:調整中
       /// </summary>
       [Display(Name ="發佈狀態  01:草稿 02:已發佈 03:調整中")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string release_status { get; set; }

       /// <summary>
       ///大車型(組窗口設置表一致)
       /// </summary>
       [Display(Name ="大車型(組窗口設置表一致)")]
       [MaxLength(5)]
       [Column(TypeName="varchar(5)")]
       [Editable(true)]
       public string model_type { get; set; }

       /// <summary>
       ///年型
       /// </summary>
       [Display(Name ="年型")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string model_year { get; set; }

       /// <summary>
       ///仕向地
       /// </summary>
       [Display(Name ="仕向地")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string model_dest { get; set; }

       [Display(Name ="cmc_pdms_project_gate")]
       [ForeignKey("project_id")]
       public List<cmc_pdms_project_gate> cmc_pdms_project_gate { get; set; }


       [Display(Name ="cmc_pdms_project_org")]
       [ForeignKey("project_id")]
       public List<cmc_pdms_project_org> cmc_pdms_project_org { get; set; }

        /// <summary>
        ///EO費率
        /// </summary>
        [Display(Name = "EO費率")]
        [DisplayFormat(DataFormatString = "10,2")]
        [Column(TypeName = "decimal")]
        [Editable(true)]
        public decimal? eo_fee { get; set; }


        /// <summary>
        ///从plm抓取到正式EPL时间
        /// </summary>
        [Display(Name = "从plm抓取到正式EPL时间")]
        [Column(TypeName = "datetime")]
        [Editable(true)]
        public DateTime? epl_load_time { get; set; }

    }
}