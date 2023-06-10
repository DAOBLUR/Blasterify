using Blasterify.Procedures;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Blasterify
{
    /// <summary>
    /// Summary description for Users_Services
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Users_Services : System.Web.Services.WebService
    {
        private User_CRUD user_CRUD;
        public Users_Services()
        {
            user_CRUD = new User_CRUD();
        }

        [WebMethod]
        public string GetAll()
            => user_CRUD.GetAll();
    }
}
