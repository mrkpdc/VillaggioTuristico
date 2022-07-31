using System;
using System.Collections.Generic;
using System.Linq;
using VillaggioTuristico.DB.Entities;
using VillaggioTuristico.Entities;
using VillaggioTuristico.Models;

namespace VillaggioTuristico.DB
{
    public class Repository
    {
        private UserDBContext DBContext;
        public Repository(UserDBContext DBContext)
        {
            this.DBContext = DBContext;
        }

        //Funzione che recupera tutte le prenotazioni
        public List<BookingModel> GetListaPrenotazioniAdmin()
        {
            List<Prenotazione> result = this.DBContext.ElencoPrenotazioni.ToList();
            result = result.ToList();
            List<BookingModel> model = new List<BookingModel>();
            foreach (Prenotazione p in result)
                model.Add(new BookingModel()
                {
                    Id = p.ID,
                    Utente = p.Utente,
                    Tipologia = p.Tipologia
                });
            return model;
        }

        //Funzione che recupera le prenotazioni di un utente specifico
        public List<BookingModel> GetListaPrenotazioniUser(String username)
        {
            List<Prenotazione> result = this.DBContext.ElencoPrenotazioni.ToList();
            result = result.Where(p => p.Utente == username).ToList();
            List<BookingModel> model = new List<BookingModel>();
            foreach (Prenotazione p in result)
                model.Add(new BookingModel()
                {
                    Id = p.ID,
                    Utente = p.Utente,
                    Tipologia = p.Tipologia
                });
            return model;
        }

        //Funzione che converte la tabella ElencoCamere in una lista
        public List<ElencoCamere> GetCamere()
        {
            List<ElencoCamere> result = this.DBContext.ElencoCamere.ToList();
            return result;
        }

        //Funzione che popola la tabella Elenco Prenotazioni e che aggiorna la colonna Camera della tabella ElencoCamere
        public void InserisciPrenotazione(Prenotazione prenotazione)
        {
            bool camereTerminate = false;
            List<ElencoCamere> camere = this.GetCamere();
            camere = camere.ToList();
            camere = camere.Where(camera => camera.Tipologia == prenotazione.Tipologia).ToList();
            foreach (ElencoCamere camera in camere)
            {
                if(camera.Camera > 0)
                {
                    camera.Tipologia = prenotazione.Tipologia;
                    camera.Camera = camera.Camera - 1;
                    this.DBContext.ElencoCamere.Update(camera);
                }
                else
                {
                    camereTerminate = true;
                }
            };
            if (camereTerminate == false)
            {
                try
                {
                    this.DBContext.ElencoPrenotazioni.Add(prenotazione);

                    this.DBContext.SaveChanges();
                }
                catch (Exception ex)
                {
                }
            }         
            
        }
    }
}
