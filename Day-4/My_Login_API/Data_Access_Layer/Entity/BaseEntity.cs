﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data_Access_Layer.Entity
{
    public class BaseEntity
    {
        public DateTime? createdDate { get; set; }
        public DateTime? ModifiedDate { get; set; }
    }
}
