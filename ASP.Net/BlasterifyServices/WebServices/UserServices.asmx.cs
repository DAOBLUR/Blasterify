using Blasterify.DataAccess;
using System.Threading.Tasks;
using System.Web.Services;
using System.Xml.Linq;

namespace Blasterify.WebServices
{
    /// <summary>
    /// Summary description for Users_Services
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class UserServices : WebService
    {
        private UserDataAccess userDataAccess;
        public UserServices()
        {
            userDataAccess = new UserDataAccess();
        }

        [WebMethod]
        public bool Create(string name, string card_number, string email, string password, int id_subscription, int id_country)
            => userDataAccess.Create(name, card_number, email, password, id_subscription, id_country).Result;

        [WebMethod]
        public string Get(int id)
            => userDataAccess.Get(id);

        [WebMethod]
        public string GetAll()
            => userDataAccess.GetAll();
    }
}
