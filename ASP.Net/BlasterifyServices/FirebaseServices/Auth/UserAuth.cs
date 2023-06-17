using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using Firebase.Auth;
using Firebase.Auth.Providers;
using Firebase.Auth.Repository;

namespace BlasterifyServices.FirebaseServices.Auth
{
    public class UserAuth
    {
        public UserAuth() { }

        public async Task<string> CreateUser(string email, string password, string dsiplayName) {
            var result = string.Empty;

            var config = new FirebaseAuthConfig {
                ApiKey = "AIzaSyDkBhBNgXEHh-RqyzqCQrtXW6tcD15LE9w\r\n",
                AuthDomain = "blasterify.firebaseapp.com",
                Providers = new FirebaseAuthProvider[] {
                    new EmailProvider()
                }
            };

            var client = new FirebaseAuthClient(config);

            try {
                /*
                var userCredential = await client.CreateUserWithEmailAndPasswordAsync(email, password, dsiplayName);
                result = userCredential.User.Uid; 
                */
                var userCredential = client.CreateUserWithEmailAndPasswordAsync(email, password, dsiplayName);
                result = userCredential.Result.User.Uid;
            }
            catch (Exception ex) {
                result = string.Empty;
                Console.WriteLine(ex.Message);
            }

            return result;
        }

    }
}