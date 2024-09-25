﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HealthyPawsV2.DAL
{
    [Table("Address")]
    public class Address
    {
        [Key]
        public int AddressId { get; set; }

        [DisplayName("Provincia")]
        [Required]
        public string province { get; set; }

        [DisplayName("Canton")]
        [Required]
        public string canton { get; set; }


        [DisplayName("Distrito")]
        [Required]
        public string district { get; set; }


        public ICollection<ApplicationUser> ApplicationUsers { get; set; } = new List<ApplicationUser>();


    }
}