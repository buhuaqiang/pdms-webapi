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
    [Entity(TableCnName = "EPL變更記錄",TableName = "view_cmc_project_epl_his",DBServer = "SysDbContext")]
    public partial class view_cmc_project_epl_his:SysEntity
    {
        /// <summary>
       ///專案名稱
       /// </summary>
       [Display(Name ="專案名稱")]
       [MaxLength(100)]
       [Column(TypeName="nvarchar(100)")]
       [Editable(true)]
       public string project_name { get; set; }

       /// <summary>
       ///GLNO
       /// </summary>
       [Display(Name ="GLNO")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string glno { get; set; }

       /// <summary>
       ///專案類型
       /// </summary>
       [Display(Name ="專案類型")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string project_type { get; set; }

       /// <summary>
       ///UPG
       /// </summary>
       [Display(Name ="UPG")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string upg_id { get; set; }

       /// <summary>
       ///零件編號
       /// </summary>
       [Display(Name ="零件編號")]
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
       ///變更類型
       /// </summary>
       [Display(Name ="變更類型")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string action_type { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="epl_his_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid epl_his_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="epl_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? epl_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="project_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? project_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="main_plan_id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? main_plan_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="epl_source")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string epl_source { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="epl_phase")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string epl_phase { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="epl_import_date")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? epl_import_date { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="level")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? level { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="company_code")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string company_code { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="kd_type")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string kd_type { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="org_code")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string org_code { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="new_org_code")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string new_org_code { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="group_code")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string group_code { get; set; }

       /// <summary>
       ///版本
       /// </summary>
       [Display(Name ="版本")]
       [Column(TypeName="varchar(8000)")]
       [Editable(true)]
       public string version { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="dev_taker_id")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? dev_taker_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="part_taker_id")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? part_taker_id { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="fs_1")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? fs_1 { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="fs_2")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? fs_2 { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="fs_3")]
       [DisplayFormat(DataFormatString="10,2")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? fs_3 { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="fs_remark")]
       [MaxLength(4000)]
       [Column(TypeName="nvarchar(4000)")]
       [Editable(true)]
       public string fs_remark { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="Final_version_status")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string Final_version_status { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="fs_approve_status")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string fs_approve_status { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="task_define_approve_status")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string task_define_approve_status { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="org_change_approve_status")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string org_change_approve_status { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="gate_type")]
       [MaxLength(20)]
       [Column(TypeName="varchar(20)")]
       [Editable(true)]
       public string gate_type { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="is_eo")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string is_eo { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="original_part_no")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string original_part_no { get; set; }

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
       ///
       /// </summary>
       [Display(Name ="del_flag")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string del_flag { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="currency")]
       [MaxLength(10)]
       [Column(TypeName="varchar(10)")]
       [Editable(true)]
       public string currency { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="submit_status")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string submit_status { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="data_source")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       public string data_source { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="epl_phase1")]
       [MaxLength(2)]
       [Column(TypeName="varchar(2)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string epl_phase1 { get; set; }

       
    }
}