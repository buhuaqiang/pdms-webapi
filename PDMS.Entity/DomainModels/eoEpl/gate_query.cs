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
    public class gate_query:cmc_pdms_project_gate
    {
        /// <summary>
        ///
        /// </summary>
        [Display(Name = "gateName")]
        [MaxLength(200)]
        [Column(TypeName = "nvarchar(200)")]
        public string gateName { get; set; }
    }
}
