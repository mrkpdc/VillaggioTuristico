using VillaggioTuristico.Entities;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using VillaggioTuristico.DB.Entities;

namespace VillaggioTuristico.DB
{
    public class UserDBContext : IdentityDbContext<User>
    {
        public UserDBContext(DbContextOptions<UserDBContext> options)
            : base(options)
        {
        }

        public DbSet<Prenotazione> ElencoPrenotazioni { get; set; }

        public DbSet<ElencoCamere> ElencoCamere { get; set; }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
            // Customize the ASP.NET Identity model and override the defaults if needed.
            // For example, you can rename the ASP.NET Identity table names and more.
            // Add your customizations after calling base.OnModelCreating(builder);
        }
    }
}
