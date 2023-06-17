using Blasterify.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Blasterify.WebServices
{
    /// <summary>
    /// Summary description for Subscription_Services
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class SubscriptionServices : System.Web.Services.WebService {

        private SubscriptionDataAccess subscriptionDataAccess;
        public SubscriptionServices() {
            subscriptionDataAccess = new SubscriptionDataAccess();
        }

        [WebMethod]
        public bool Create(string name, double price, string features) 
            => subscriptionDataAccess.Create(name, price, features);

        [WebMethod]
        public string Get(int id)
            => subscriptionDataAccess.Get(id);

        [WebMethod]
        public string GetAll()
            => subscriptionDataAccess.GetAll();

        [WebMethod]
        public bool Update(int id, string name, double price, string features)
            => subscriptionDataAccess.Update(id, name, price, features);

        [WebMethod]
        public bool Delete(int id)
            => subscriptionDataAccess.Delete(id);
    }
}
