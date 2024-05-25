using ContactsApp.Classes;
using SQLite;
using System.Windows;

namespace ContactsApp
{
    public partial class UpdateContactWindow : Window
    {
        private Contact contact;

        public UpdateContactWindow(Contact contact)
        {
            InitializeComponent();
            this.contact = contact;
            DataContext = this.contact;
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            using (SQLiteConnection connection = new SQLiteConnection(App.databasePath))
            {
                connection.CreateTable<Contact>();
                connection.Update(contact);
            }

            DialogResult = true;
            Close();
        }
    }
}
