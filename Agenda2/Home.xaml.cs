using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Agenda2
{
    /// <summary>
    /// Logique d'interaction pour Home.xaml
    /// </summary>
    public partial class Home : Page
    {
        System.Windows.Threading.DispatcherTimer Timer = new System.Windows.Threading.DispatcherTimer(); // Affichage du temps
        public Home()
        {
            InitializeComponent();
            Timer.Tick += new EventHandler(Timer_Click); // Incrémentation quand l'interval de 1 seconde est écoulé et appel de la méthode qui affiche le temps dans la textbox Horloge
            Timer.Interval = new TimeSpan(0, 0, 1); // Intervalle de temps de 1 seconde
            Timer.Start(); // Départ de l'horloge
        }
        private void Timer_Click(object sender, EventArgs e)
        {
            DateTime today; // Date du jour
            today = DateTime.Now; // Variable today qui prend la valeur de la date du jour
            Horloge.Text = today.Hour + " : " + today.Minute + " : " + today.Second; // Concaténation
        }
    }
}
