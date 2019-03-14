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
    /// Logique d'interaction pour AddCustomer.xaml
    /// </summary>
    public partial class AddCustomer : Page
    {
        private AgendaContext db = new AgendaContext();
        public AddCustomer()
        {
            InitializeComponent();
        }
        private void Save_Click(object sender, RoutedEventArgs e)
        {
            
            Customer AddCustomer = new Customer();
            //List<Customers> customers = customersQ.ToList();



            AddCustomer.Lastname = lastnameTextBox.Text;
            AddCustomer.Firstname = firstnameTextBox.Text;
            AddCustomer.Mail = mailTextBox.Text;
            AddCustomer.PhoneNumber = phoneNumberTextBox.Text;
            AddCustomer.Budget = decimal.Parse(budgetTextBox.Text);
            //db.Entry(AddCustomer).State = EntityState.Added;
            db.Customers.Add(AddCustomer);
            db.SaveChanges();
            MessageBox.Show("Bravo, Client ajouté avec succès!", "Succès", MessageBoxButton.OK, MessageBoxImage.Information);
            lastnameTextBox.Clear();
            firstnameTextBox.Clear();
            mailTextBox.Clear();
            phoneNumberTextBox.Clear();
            budgetTextBox.Clear();
            NavigationService.Navigate(new System.Uri("CustomersList.xaml", UriKind.RelativeOrAbsolute));
        }

        private void Cancel_Click(object sender, RoutedEventArgs e)
        {

            this.NavigationService.Navigate(new CustomersList());

            //public ActionResult DeleteCustomer(int id)
            //{
            //    Customer CustomerDelete = db.Customers.Find(id);
            //    db.Entry(CustomerDelete).State = EntityState.Deleted;
            //    db.Customers.Remove(CustomerDelete);
            //    db.SaveChanges();
            //    return RedirectToAction("ListCustomers");
            //}
        }
    }
}

