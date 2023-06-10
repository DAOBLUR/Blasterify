using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BlasterifyAdmin.Models
{
    public class Subscription
    {
        public double Id { get; set; }
        public string Name { get; set; }
        public double Price { get; set; }
        public string Features { get; set; }
    }

    public class SubscriptionsTable
    {
        public List<Subscription> Table { get; set; }
    }
}