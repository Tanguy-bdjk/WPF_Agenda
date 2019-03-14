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
    /// Logique d'interaction pour BrokersList.xaml
    /// </summary>
    public partial class BrokersList : Page
    {
        private AgendaContext db = new AgendaContext();
        private CollectionViewSource brokerViewSource;
        public BrokersList()
        {
            InitializeComponent();
            brokerViewSource = ((CollectionViewSource)(FindResource("brokerViewSource")));
        }

        private void BtnModify_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var CurrentBroker = brokerViewSource.View.CurrentItem as Broker;
                var broker = (from c in db.Brokers
                                where c.BrokerID == CurrentBroker.BrokerID
                                select c).SingleOrDefault();
                if (broker != null)
                {
                    MessageBoxResult Result = MessageBox.Show("Voulez-vous confirmer la modification?", "??", MessageBoxButton.YesNo, MessageBoxImage.Warning);
                    if (Result == MessageBoxResult.Yes)
                    {
                        db.Entry(broker).State = EntityState.Modified;
                        db.SaveChanges();
                        MessageBox.Show("Bravo le courtier à bien été modifier!", "Succès", MessageBoxButton.OK, MessageBoxImage.Information);
                        NavigationService.Navigate(new System.Uri("BrokersList.xaml", UriKind.RelativeOrAbsolute));
                    }
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

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var CurrentBroker = brokerViewSource.View.CurrentItem as Broker;
                var broker = (from c in db.Brokers
                                where c.BrokerID == CurrentBroker.BrokerID
                                select c).SingleOrDefault();

                if (broker != null)
                {
                    MessageBoxResult result = MessageBox.Show("Voulez-vous confirmer la suppression?", "??", MessageBoxButton.YesNo, MessageBoxImage.Warning);
                    if (result == MessageBoxResult.Yes)
                    {
                        db.Entry(broker).State = EntityState.Deleted;
                        db.SaveChanges();
                        MessageBox.Show("Bravo, le courtier à bien été supprimé!", "Succès", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                   
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

        private void Page_Loaded_1(object sender, RoutedEventArgs e)
        {
            db.Brokers.Load();//quand on charge la page sa va chargé tout nos customer
            brokerViewSource.Source = db.Brokers.Local;
        }
    }
}
