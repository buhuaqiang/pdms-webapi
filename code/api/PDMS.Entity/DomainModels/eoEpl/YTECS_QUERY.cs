using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace PDMS.Entity.DomainModels.eoEpl
{
    public class YTECS_QUERY:YTECS
    {
        /// <summary>
        ///
        /// </summary>
        [Display(Name = "project_id")]
        [Column(TypeName = "uniqueidentifier")]
        [Editable(true)]
        public Guid? project_id { get; set; }

        /// <summary>
        ///
        /// </summary>
        [Display(Name = "PRIORITY")]
        [MaxLength(200)]
        [Column(TypeName = "nvarchar(200)")]
        [Editable(true)]
        public string PRIORITY { get; set; }

        /// <summary>
        ///
        /// </summary>
        [Display(Name = "DEPT_ID")]
        [MaxLength(50)]
        [Column(TypeName = "nvarchar(50)")]
        [Editable(true)]
        public string DEPT_ID { get; set; }

        /// <summary>
        ///
        /// </summary>
        [Display(Name = "EC_DATE")]
        [Column(TypeName = "datetime")]
        [Editable(true)]
        public DateTime EC_DATE { get; set; }
    }
}
