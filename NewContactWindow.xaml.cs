using ContactsApp.Classes;
using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
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
    /// Interaction logic for NewContactWindow.xaml
    /// </summary>
    public partial class NewContactWindow : Window
    {
        
        public NewContactWindow()
        {
            InitializeComponent();
            //this.contact = contact;
        }

        private bool ValidateName(string name)
        {
            string namePattern = @"^[a-zA-Z]+$";
            if (!Regex.IsMatch(name, namePattern))
            {
                //MessageBox.Show("Please enter a valid name. Only letters are allowed.", "Invalid Input", MessageBoxButton.OK, MessageBoxImage.Warning);
                return false;
            }
            return true;
        }

        private bool ValidateEmail(string email)
        {
            string emailPattern = @"^[^@\s]+@[^@\s]+\.[^@\s]+$";
            if (!Regex.IsMatch(email, emailPattern))
            {
                MessageBox.Show("Please enter a valid email address.", "Invalid Input", MessageBoxButton.OK, MessageBoxImage.Warning);
                return false;
            }
            return true;
        }


        private bool ValidateEntry()
        {
            bool isValid = true;

            // Validate First Name
            if (!ValidateName(FirstNameTextBox.Text))
            {
                MessageBox.Show("Please enter a valid First name. Only letters are allowed.", "Invalid Input", MessageBoxButton.OK, MessageBoxImage.Warning);
                isValid = false;
            }

            // Validate Last Name
            if (!ValidateName(LastNameTextBox.Text))
            {
                MessageBox.Show("Please enter a valid last name. Only letters are allowed.", "Invalid Input", MessageBoxButton.OK, MessageBoxImage.Warning);
                isValid = false;
            }

            // Validate Email
            if (!ValidateEmail(EmailTextBox.Text))
            {
                isValid = false;
            }

            // Add any other validation checks as needed

            return isValid;
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            
            Contact contact = new Contact()
            {
                ID = IDTextBox.Text,
                eMail = EmailTextBox.Text,
                firstName = FirstNameTextBox.Text,
                lastName = LastNameTextBox.Text,
                phoneNumber = PhoneNumberTextBox.Text,
                company = CompanyTextBox.Text
            };
            if(ValidateEntry()==false) return;


            using (SQLiteConnection connection = new SQLiteConnection(App.databasePath))
            {
                connection.CreateTable<Contact>();
                connection.Insert(contact);
            }
           
            Close();
        }
    }
}
