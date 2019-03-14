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
    /// Logique d'interaction pour AddAppointment.xaml
    /// </summary>
    public partial class AddAppointment : Page
    {
        private AgendaContext db = new AgendaContext();
        public AddAppointment()
        {
            InitializeComponent();
            List<Customer> CustomersList = db.Customers.ToList();
            CustomersList_ComboBox.DataContext = CustomersList;

            List<Broker> BrokersList = db.Brokers.ToList();
            BrokersList_ComboBox.DataContext = BrokersList;
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            Appointment appointment = new Appointment()
            {
                DateHour = DateTime.Parse(dtpStartTime.Text),
                BrokerID = Convert.ToInt32(BrokersList_ComboBox.SelectedValue),
                CustomerID = Convert.ToInt32(CustomersList_ComboBox.SelectedValue),
                Subject = subjectTextBox.Text
            };
            db.Appointments.Add(appointment);
            db.SaveChanges();
            MessageBox.Show("Vous avez bien ajouté un nouveau Rendez-Vous", "Succès", MessageBoxButton.OK, MessageBoxImage.Information);
            NavigationService.Navigate(new System.Uri("AppointmentList.xaml", UriKind.RelativeOrAbsolute));
        }

    }
   
}
