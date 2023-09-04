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
    [Entity(TableCnName = "EPL歷史變更",TableName = "cmc_pdms_project_epl_his",DBServer = "SysDbContext")]
    public partial class cmc_pdms_project_epl_his:SysEntity
    {
        /// <summary>
       ///epl_his_id
       /// </summary>
       [Key]
       [Display(Name ="epl_his_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid epl_his_id { get; set; }

       /// <summary>
       ///epl_id
       /// </summary>
       [Display(Name ="epl_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? epl_id { get; set; }

       /// <summary>
       ///大專案ID
       /// </summary>
       [Display(Name ="大專案ID")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? project_id { get; set; }

       /// <summary>
       ///子專案計劃模板
       /// </summary>
       [Display(Name ="子專案計劃模板")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? main_plan_id { get; set; }

       /// <summary>
       ///01：手工上傳；02：CMS；03：PLM
       /// </summary>
       [Display(Name ="01：手工上傳；02：CMS；03：PLM")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string epl_source { get; set; }

       /// <summary>
       ///01：專案建立；02：專案啟動
       /// </summary>
       [Display(Name ="01：專案建立；02：專案啟動")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string epl_phase { get; set; }

       /// <summary>
       ///如果入工上傳時寫入，手工上傳時間
       /// </summary>
       [Display(Name ="如果入工上傳時寫入，手工上傳時間")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? epl_import_date { get; set; }

       /// <summary>
       ///車型窗口-部門-UPGID
       /// </summary>
       [Display(Name ="車型窗口-部門-UPGID")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string upg_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="level")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? level { get; set; }

       /// <summary>
       ///零件號
       /// </summary>
       [Display(Name ="零件號")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string part_no { get; set; }

       /// <summary>
       ///零件名稱
       /// </summary>
       [Display(Name ="零件名稱")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string part_name { get; set; }

       /// <summary>
       ///廠商代碼
       /// </summary>
       [Display(Name ="廠商代碼")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string company_code { get; set; }

       /// <summary>
       ///KD類型,沿用，新件
       /// </summary>
       [Display(Name ="KD類型,沿用，新件")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string kd_type { get; set; }

       /// <summary>
       ///車型窗口-部門
       /// </summary>
       [Display(Name ="車型窗口-部門")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string org_code { get; set; }

       /// <summary>
       ///變動部門
       /// </summary>
       [Display(Name ="變動部門")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string new_org_code { get; set; }

       /// <summary>
       ///組別代碼
       /// </summary>
       [Display(Name ="組別代碼")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string group_code { get; set; }

       /// <summary>
       ///開發承辦
       /// </summary>
       [Display(Name ="開發承辦")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? dev_taker_id { get; set; }

       /// <summary>
       ///零品承辦
       /// </summary>
       [Display(Name ="零品承辦")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? part_taker_id { get; set; }

       /// <summary>
       ///開發費
       /// </summary>
       [Display(Name ="開發費")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? fs_1 { get; set; }

       /// <summary>
       ///模具費
       /// </summary>
       [Display(Name ="模具費")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? fs_2 { get; set; }

       /// <summary>
       ///設變費
       /// </summary>
       [Display(Name ="設變費")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? fs_3 { get; set; }

       /// <summary>
       ///估價說明
       /// </summary>
       [Display(Name ="估價說明")]
       [MaxLength(4000)]
       [Column(TypeName="nvarchar(4000)")]
       [Editable(true)]
       public string fs_remark { get; set; }

       /// <summary>
       ///定版狀態0:草稿；1：完成
       /// </summary>
       [Display(Name ="定版狀態0:草稿；1：完成")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string Final_version_status { get; set; }

       /// <summary>
       ///成本編列審核狀態 01：通過；02 拒絕
       /// </summary>
       [Display(Name ="成本編列審核狀態 01：通過；02 拒絕")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string fs_approve_status { get; set; }

       /// <summary>
       ///主工作計劃審核狀態01：通過；02 拒絕
       /// </summary>
       [Display(Name ="主工作計劃審核狀態01：通過；02 拒絕")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string task_define_approve_status { get; set; }

       /// <summary>
       ///部門變更審核狀態 00待提交;01審核中,02通過，03拒絕
       /// </summary>
       [Display(Name ="部門變更審核狀態 00待提交;01審核中,02通過，03拒絕")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string org_change_approve_status { get; set; }

       /// <summary>
       ///根據變更時是計算；大日程ID，數據字典
       /// </summary>
       [Display(Name ="根據變更時是計算；大日程ID，數據字典")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string gate_type { get; set; }

       /// <summary>
       ///是否EO/PO任務
       /// </summary>
       [Display(Name ="是否EO/PO任務")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string is_eo { get; set; }

       /// <summary>
       ///原件號
       /// </summary>
       [Display(Name ="原件號")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string original_part_no { get; set; }

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

       /// <summary>
       ///del_flag
       /// </summary>
       [Display(Name ="del_flag")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string del_flag { get; set; }

       /// <summary>
       ///幣別
       /// </summary>
       [Display(Name ="幣別")]
       [MaxLength(10)]
       [Column(TypeName="varchar(10)")]
       [Editable(true)]
       public string currency { get; set; }

       /// <summary>
       ///提交狀態
       /// </summary>
       [Display(Name ="提交狀態")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string submit_status { get; set; }

       /// <summary>
       ///action_type
       /// </summary>
       [Display(Name ="action_type")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string action_type { get; set; }

       /// <summary>
       ///來源類型
       /// </summary>
       [Display(Name ="來源類型")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string data_source { get; set; }

      


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
        ///開發費稅率默認值
        /// </summary>
        [Display(Name = "開發費稅率默認值")]
        [DisplayFormat(DataFormatString = "10,2")]
        [Column(TypeName = "decimal")]
        [Editable(true)]
        public decimal? fs_1_rate_def { get; set; }

        /// <summary>
        ///模具費稅率默認值
        /// </summary>
        [Display(Name = "模具費稅率默認值")]
        [DisplayFormat(DataFormatString = "10,2")]
        [Column(TypeName = "decimal")]
        [Editable(true)]
        public decimal? fs_2_rate_def { get; set; }

    }
}