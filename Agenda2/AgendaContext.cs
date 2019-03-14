namespace Agenda2
{
    using System;
    using System.Data.Entity;
    using System.Linq;

    public class AgendaContext : DbContext
    {
        // Votre contexte a été configuré pour utiliser une chaîne de connexion « Agenda2 » du fichier 
        // de configuration de votre application (App.config ou Web.config). Par défaut, cette chaîne de connexion cible 
        // la base de données « Agenda2.Agenda2 » sur votre instance LocalDb. 
        // 
        // Pour cibler une autre base de données et/ou un autre fournisseur de base de données, modifiez 
        // la chaîne de connexion « Agenda2 » dans le fichier de configuration de l'application.
        public AgendaContext()
            : base("name=Agenda2")
        {
        } 
        public DbSet<Customer> Customers { get; set; }
        public DbSet<Broker> Brokers { get; set; }
        public DbSet<Appointment> Appointments { get; set; }

        // Ajoutez un DbSet pour chaque type d'entité à inclure dans votre modèle. Pour plus d'informations 
        // sur la configuration et l'utilisation du modèle Code First, consultez http://go.microsoft.com/fwlink/?LinkId=390109.

        // public virtual DbSet<MyEntity> MyEntities { get; set; }
    }  
}