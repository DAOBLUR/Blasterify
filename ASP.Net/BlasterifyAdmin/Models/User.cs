using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BlasterifyAdmin.Models
{

    public class User
    {
        public double Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public DateTime Subscription_Date { get; set; }
        public string Subscription { get; set; }
        public string Country { get; set; }
    }

    public class UsersTable
    {
        public List<User> Table { get; set; }
    }
}