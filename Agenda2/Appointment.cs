using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Agenda2
{
    public class Appointment
    {
        public int AppointmentID { get; set; }
        [Required]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm:ss}", ApplyFormatInEditMode = true)]
        public DateTime DateHour { get; set; }
        [Required]
        public string Subject { get; set; }
        public int CustomerID { get; set; }
        public int BrokerID { get; set; }
        public virtual Broker Broker { get; set; }
        public virtual Customer Customer { get; set; }

    }
}
