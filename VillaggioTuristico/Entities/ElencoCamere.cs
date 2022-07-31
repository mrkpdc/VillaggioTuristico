using System;
using System.ComponentModel.DataAnnotations;

namespace VillaggioTuristico.DB.Entities
{
    public class ElencoCamere
    {
        [Key]
        public string Tipologia { get; set; }


        
        public int Camera { get; set; }
        
    }
}
