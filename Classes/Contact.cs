using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ContactsApp.Classes
{
    public class Contact
    {
        [PrimaryKey]
        public string ID { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string eMail { get; set; }
        public string phoneNumber { get; set; }
        public string company { get; set; }

        public override string ToString()
        {
            return $"Firstname: {firstName}, Lastname: {lastName}, Phone number: {phoneNumber}";
        }

        //optional
        //public string city { get; set; }
        //public string state { get; set; }
        //public string country { get; set; }
        //public string zipcode { get; set; }
        //public string zipdate { get; set; }
        //public string title { get; set; }
        //public string description { get; set; }
    }
}
