using Newtonsoft.Json;
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
    [Entity(TableCnName = "view_cmc_timed_task",TableName = "view_cmc_timed_task",DBServer = "SysDbContext")]
    public partial class view_cmc_timed_task:SysEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Display(Name ="file_name")]
       [MaxLength(1)]
       [Column(TypeName="varchar(1)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string file_name { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="file_path")]
       [MaxLength(1)]
       [Column(TypeName="varchar(1)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string file_path { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="upload_date")]
       [MaxLength(1)]
       [Column(TypeName="varchar(1)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string upload_date { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="source")]
       [MaxLength(1)]
       [Column(TypeName="varchar(1)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string source { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="file_size")]
       [MaxLength(1)]
       [Column(TypeName="varchar(1)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string file_size { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="file_id")]
       [JsonIgnore]
       [Column(TypeName="uniqueidentifier")]
       [Required(AllowEmptyStrings=false)]
       public Guid file_id { get; set; }

        /// <summary>
        ///Full Name
        /// </summary>
        [Display(Name = "Full Name")]
        [MaxLength(255)]
        [Column(TypeName = "varchar(255)")]
        public string full_name { get; set; }


        /// <summary>
        ///Type
        /// </summary>
        [Display(Name = "Type")]
        [MaxLength(20)]
        [Column(TypeName = "varchar(20)")]
        [Required(AllowEmptyStrings = false)]
        public string type { get; set; }


        /// <summary>
        ///Update Date
        /// </summary>
        [Display(Name = "Update Date")]
        [Column(TypeName = "datetime")]
        public DateTime? modified_date { get; set; }

    }
}
