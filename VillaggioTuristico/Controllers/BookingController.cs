using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using VillaggioTuristico.DB;
using VillaggioTuristico.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using VillaggioTuristico.Entities;
using VillaggioTuristico.DB.Entities;

namespace VillaggioTuristico.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BookingController : ControllerBase
    {
        private readonly Repository repository;
        public BookingController(Repository repository)
        {
            this.repository = repository;
        }

        //API di tipo Post per prendere i dati della prenotazione dal front-end e inviarli al DB
        [HttpPost ("InserisciPrenotazione")]
        public async Task<IActionResult> InserisciPrenotazione([FromBody] BookingModel model)
        {
            Prenotazione Booking = new Prenotazione();
            Booking.Utente = User.Identity.Name;
            Booking.Tipologia = model.Tipologia;       

            this.repository.InserisciPrenotazione(Booking);
            
            return Ok();
        }

        //API di tipo Get per ricevere dal DB la lista delle prenotazioni eseguite dallo user loggaro
        [HttpGet("ListaPrenotazioni")]
        public async Task<List<BookingModel>> ListaPrenotazioni()
        {
            string username = User.Identity.Name;
            List<BookingModel> Bookings = this.repository.GetListaPrenotazioniUser(username);
            return (Bookings);
        }

        //API di tipo Get per ricevere dal DB la lista di tutte le prenotazioni
        [HttpGet("ListaPrenotazioniAdmin")]
        public async Task<List<BookingModel>> ListaPrenotazioniAdmin()
        {
            List<BookingModel> Bookings = this.repository.GetListaPrenotazioniAdmin();
            return (Bookings);
        }
    }
}
