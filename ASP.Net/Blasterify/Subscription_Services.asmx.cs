using Blasterify.Procedures;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Blasterify
{
    /// <summary>
    /// Summary description for Subscription_Services
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Subscription_Services : System.Web.Services.WebService {

        private Subscription_CRUD subscription_CRUD;
        public Subscription_Services() {
            subscription_CRUD = new Subscription_CRUD();
        }

        [WebMethod]
        public bool Create(string name, double price, string features) 
            => subscription_CRUD.Create(name, price, features);

        [WebMethod]
        public string Get(int id)
            => subscription_CRUD.Get(id);

        [WebMethod]
        public string GetAll()
            => subscription_CRUD.GetAll();

        [WebMethod]
        public bool Update(int id, string name, double price, string features)
            => subscription_CRUD.Update(id, name, price, features);

        [WebMethod]
        public bool Delete(int id)
            => subscription_CRUD.Delete(id);
    }
}
