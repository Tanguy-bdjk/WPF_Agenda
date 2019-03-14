using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Agenda2
{
    public class Customer
    {
        public int CustomerID { get; set; }
        [Required, MaxLength(50)]
        public string Firstname { get; set; }
        [Required, MaxLength(50)]
        public string Lastname { get; set; }
        [Required, MaxLength(150)]
        public string Mail { get; set; }
        [Required, MaxLength(10)]
        public string PhoneNumber { get; set; }
        [Required]
        public decimal Budget { get; set; }

        public virtual ICollection<Appointment> Appointments { get; set; }
    }
}
