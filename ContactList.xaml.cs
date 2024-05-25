using ContactsApp.Classes;
using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel;
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
using System.Windows.Shapes;

namespace ContactsApp
{
    /// <summary>
    /// Interaction logic for ContactList.xaml
    /// </summary>
    public partial class ContactList : Window
    {
        List<Contact> contacts;
        public ContactList()
        {
            InitializeComponent();
        }

        public void ReadDatabase()
        {
            
            using (SQLite.SQLiteConnection connection = new SQLite.SQLiteConnection(App.databasePath))
            {
                connection.CreateTable<Contact>();
                contacts = (connection.Table<Contact>()).OrderBy(c=>c.firstName).ToList();//sorting by firstname
            }

            if (contacts != null)
            {
                contactListView.ItemsSource = contacts; 
            }
        }

        private void SearchTextBox_TextChanged(object sender, System.Windows.Controls.TextChangedEventArgs e)
        {
            string filter = searchTextBox.Text.ToLower();
            ICollectionView view = CollectionViewSource.GetDefaultView(contacts);
            if (string.IsNullOrEmpty(filter))
            {
                view.Filter = null;
            }
            else
            {
                view.Filter = contact =>
                {
                    Contact c = contact as Contact;
                    return c.firstName.ToLower().Contains(filter) ||
                           c.lastName.ToLower().Contains(filter) ||
                           c.phoneNumber.ToLower().Contains(filter);
                };
            }
            view.Refresh();
        }

        private void contactListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Contact selectedContact = contactListView.SelectedItem as Contact;
            if (selectedContact != null)
            {
                NewContactWindow newContactWindow = new NewContactWindow();
                newContactWindow.ShowDialog();
            }
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            var button = sender as Button;
            var contact = button.Tag as Contact;

            if (contact != null)
            {
                DeleteContact(contact);
                ReadDatabase(); // Refresh the list after deletion
            }
        }

        private void DeleteContact(Contact contact)
        {
            using (SQLiteConnection connection = new SQLiteConnection(App.databasePath))
            {
                connection.CreateTable<Contact>();
                connection.Delete(contact);
            }
        }
        private void UpdateButton_Click(object sender, RoutedEventArgs e)
        {
            var button = sender as Button;
            var contact = button.Tag as Contact;

            if (contact != null)
            {
                OpenUpdateContactWindow(contact);
            }
        }
        private void OpenUpdateContactWindow(Contact contact)
        {
            UpdateContactWindow updateContactWindow = new UpdateContactWindow(contact);
            if (updateContactWindow.ShowDialog() == true)
            {
                ReadDatabase(); // Refresh the list after updating
            }
        }
    }
}
