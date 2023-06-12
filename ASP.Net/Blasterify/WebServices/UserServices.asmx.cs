using Blasterify.DataAccess;
using System.Web.Services;

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
        public string GetAll()
            => userDataAccess.GetAll();
    }
}
