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
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void ItemAddCustomer_Click(object sender, RoutedEventArgs e)
        {
            DisplayPage.Navigate(new AddCustomer());
        }

        private void ItemListCustomers_Click(object sender, RoutedEventArgs e)
        {
            DisplayPage.Navigate(new CustomersList());
        }

        private void Home(object sender, RoutedEventArgs e)
        {
            DisplayPage.Content = new Home();
        }

        private void ItemAddBroker_Click(object sender, RoutedEventArgs e)
        {
            DisplayPage.Navigate(new AddBroker());
        }

        private void ItemListBrokers_Click(object sender, RoutedEventArgs e)
        {
            DisplayPage.Navigate(new BrokersList());
        }

        private void ItemAddAppointment_Click(object sender, RoutedEventArgs e)
        {
            DisplayPage.Navigate(new AddAppointment());
        }

        private void ItemListAppointments_Click(object sender, RoutedEventArgs e)
        {
            DisplayPage.Navigate(new AppointmentList());
        }
        private void DisplayPage_Initialized(object sender, EventArgs e)
        {
            DisplayPage.Navigate(new Home());
        }
    }
}
