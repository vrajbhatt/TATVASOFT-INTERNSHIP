﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data_Access_Layer.Entity
{
    public class User
    {
        [Key]
        public int id { get; set; }

        public string? FirstName { get; set; }
        public string? LastName { get; set; }
        public string? PhoneNumber { get; set; }
        public string? EmailAddress { get; set; }
        public string? UserType { get; set; }
       
        public string? Password { get; set; }
        [NotMapped]
        public string? ConfirmPassword { get; set; }
        [NotMapped]
        public string? Uid { get; set; }
        [NotMapped]
        public string? Message { get; set; }
        [NotMapped]
        public string? UserImage { get; set; } = "";
        [NotMapped]
        public string? UserFullName { get; set; }
    }
   
}
