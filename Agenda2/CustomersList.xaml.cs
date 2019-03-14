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
using System.Data.Entity;

namespace Agenda2
{
    /// <summary>
    /// Logique d'interaction pour CustomersList.xaml
    /// </summary>
    public partial class CustomersList : Page
    {
        private AgendaContext db = new AgendaContext();
        private CollectionViewSource customerViewSource;
        public CustomersList()
        {
            InitializeComponent();
            customerViewSource = ((CollectionViewSource)(FindResource("customerViewSource")));
            
        }
        

        private void BtnModify_Click(object sender, RoutedEventArgs e)
        {
            try
            { 
            var CurrentCustomer = customerViewSource.View.CurrentItem as Customer;
            var customer = (from c in db.Customers
                            where c.CustomerID == CurrentCustomer.CustomerID
                            select c).SingleOrDefault();
            if (customer != null)
            {
                db.Entry(customer).State = EntityState.Modified;
                db.SaveChanges();
                    MessageBox.Show("Bravo!", "Succès", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                else
                {
                    MessageBox.Show("l'élément que vous voulez modifier n'existe pas!", "error", MessageBoxButton.OK, MessageBoxImage.Stop);
                }

            }
            catch { 
            MessageBox.Show("error!", "error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var CurrentCustomer = customerViewSource.View.CurrentItem as Customer;
            var customer =(from c in db.Customers
                where c.CustomerID == CurrentCustomer.CustomerID
                select c).SingleOrDefault();
            if(customer != null)
                {
                db.Entry(customer).State = EntityState.Deleted;
                db.SaveChanges();
                    //MessageBox.Show("êtes vous sur", "??", MessageBoxButton.YesNo, MessageBoxImage.Warning);

                    MessageBox.Show("Bravo!", "Succès", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                else
                {
                    MessageBox.Show("l'élément que vous voulez modifier n'existe pas!", "error", MessageBoxButton.OK, MessageBoxImage.Stop);
                }

            }
            catch
            {
                MessageBox.Show("error!", "error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            db.Customers.Load();//quand on charge la page sa va chargé tout nos customer
            customerViewSource.Source = db.Customers.Local;
        }
    }
}
