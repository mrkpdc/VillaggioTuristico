using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace VillaggioTuristico.Models
{
    public class BookingModel
    {
        public Guid Id { get; set; }
        public string Utente { get; set; }
        //public int Camera { get; set; }
        public string Tipologia { get; set; }
    }
}


