using System;

namespace VillaggioTuristico.Entities
{
    public class Prenotazione
    {
        //[Key]
        public Guid ID { get; set; }
        public string Utente { get; set; }
        //public int Camera { get; set; }
        public string Tipologia { get; set; }
    }
}
