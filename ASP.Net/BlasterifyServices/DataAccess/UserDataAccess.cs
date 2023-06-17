using Newtonsoft.Json;
using Oracle.ManagedDataAccess.Client;
using Oracle.ManagedDataAccess.Types;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using BlasterifyServices.FirebaseServices.Auth;
using System.Threading.Tasks;

namespace Blasterify.DataAccess {
    public class UserDataAccess {
        private Connection connection;

        public UserDataAccess() {
            connection = new Connection();
        }

        public async Task<bool> Create(string name, string card_number, string email, string password, int id_subscription, int id_country) {
            var userAuth = new UserAuth();
            var firebase_uid = await userAuth.CreateUser(email, password, name);

            if (string.IsNullOrEmpty(firebase_uid)) return false;
            DateTime subscription_date = DateTime.Now;

            OracleConnection oracleConnection = connection.conn();
            oracleConnection.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = oracleConnection;

            cmd.CommandText = "Insert_User";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("u_firebase_uid", OracleDbType.Varchar2).Value = firebase_uid;
            cmd.Parameters.Add("u_name", OracleDbType.Varchar2).Value = name;
            cmd.Parameters.Add("u_card_number", OracleDbType.Varchar2).Value = card_number;
            cmd.Parameters.Add("u_email", OracleDbType.Varchar2).Value = email;
            cmd.Parameters.Add("u_password", OracleDbType.Varchar2).Value = password;
            cmd.Parameters.Add("u_subscription_date", OracleDbType.Date).Value = subscription_date;
            cmd.Parameters.Add("u_id_subscription", OracleDbType.Int64).Value = id_subscription;
            cmd.Parameters.Add("u_id_country", OracleDbType.Int64).Value = id_country;
            cmd.Parameters.Add("result", OracleDbType.Boolean).Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();

            bool result;
            try {
                result = cmd.Parameters["result"].Value.ToString() == "True";
            }
            catch (Exception) {
                result = false;
            }

            oracleConnection.Close();
            return result;
        }

        public string Get(int id) {
            string json = "";

            OracleConnection oracleConnection = connection.conn();
            oracleConnection.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = oracleConnection;

            cmd.CommandText = "Select_User";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("u_id", OracleDbType.Int64).Value = id;
            cmd.Parameters.Add("u_firebase_uid", OracleDbType.Varchar2,30).Direction = ParameterDirection.Output;
            cmd.Parameters.Add("u_name", OracleDbType.Varchar2, 40).Direction = ParameterDirection.Output;
            cmd.Parameters.Add("u_card_number", OracleDbType.Varchar2, 16).Direction = ParameterDirection.Output;
            cmd.Parameters.Add("u_status", OracleDbType.Int32).Direction = ParameterDirection.Output;
            cmd.Parameters.Add("u_email", OracleDbType.Varchar2, 35).Direction = ParameterDirection.Output;
            cmd.Parameters.Add("u_subscription_date", OracleDbType.TimeStamp).Direction = ParameterDirection.Output;
            cmd.Parameters.Add("s_name", OracleDbType.Varchar2, 20).Direction = ParameterDirection.Output;
            cmd.Parameters.Add("c_name", OracleDbType.Varchar2, 30).Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();

            try {
                var u_firebase_uid = cmd.Parameters["u_firebase_uid"].Value.ToString();
                var u_name = cmd.Parameters["u_name"].Value.ToString();
                var u_card_number = cmd.Parameters["u_card_number"].Value.ToString();
                var u_email = cmd.Parameters["u_email"].Value.ToString();
                var s_name = cmd.Parameters["s_name"].Value.ToString();
                var c_name = cmd.Parameters["c_name"].Value.ToString();

                int u_status = int.Parse(cmd.Parameters["u_status"].Value.ToString());
                
                DateTime u_subscription_date = DateTime.Parse(cmd.Parameters["u_subscription_date"].Value.ToString());

                var user = new
                {
                    id = id,
                    firebase_uid = u_firebase_uid,
                    name = u_name,
                    card_number = u_card_number,
                    email = u_email,
                    subscription_date = u_subscription_date,
                    subscription = s_name,
                    country = c_name,
                    status = u_status
                };
                json = JsonConvert.SerializeObject(user);
            }
            catch (Exception ex)
            {
                json = ex.ToString();
            }

            oracleConnection.Close();
            return json;
        }

        public string GetAll() {
            using (OracleConnection oracleConnection = connection.conn()) {
                oracleConnection.Open();

                using (OracleCommand command = new OracleCommand())  {
                    command.Connection = oracleConnection;
                    command.CommandText = "Select_All_Users";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("users", OracleDbType.RefCursor).Direction = ParameterDirection.Output;

                    using (DataSet dataSet = new DataSet()) {
                        using (OracleDataAdapter adapter = new OracleDataAdapter(command)) {
                            adapter.Fill(dataSet);
                        }
                        oracleConnection.Close();
                        return JsonConvert.SerializeObject(dataSet, Formatting.Indented);
                    }
                }
            }

            /*
            OracleConnection oracleConnection = connection.conn();

            oracleConnection.Open();

            OracleCommand cmd = new OracleCommand();
            cmd.Connection = oracleConnection;

            OracleParameter oracleParameter = new OracleParameter();
            oracleParameter.OracleDbType = OracleDbType.RefCursor;

            cmd.CommandText = "Select_All_Users";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("users", OracleDbType.RefCursor).Direction = ParameterDirection.Output;

            DataSet ds = new DataSet();
            OracleDataAdapter da = new OracleDataAdapter(cmd);
            da.Fill(ds);

            return JsonConvert.SerializeObject(ds, Formatting.Indented);
            */
        }

        public bool Update(int id, string name, double price, string features)
        {
            bool result = false;

            OracleConnection oracleConnection = connection.conn();
            oracleConnection.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = oracleConnection;

            cmd.CommandText = "Update_Subscription";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("subscription_id", OracleDbType.Int32).Value = id;
            cmd.Parameters.Add("subscription_name", OracleDbType.Varchar2, 20).Value = name;
            cmd.Parameters.Add("subscription_price", OracleDbType.Decimal).Value = price;
            cmd.Parameters.Add("subscription_features", OracleDbType.Clob).Value = features;
            cmd.Parameters.Add("result", OracleDbType.Boolean).Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();

            try
            {
                result = (cmd.Parameters["result"].Value.ToString() == "True");
            }
            catch (Exception)
            {
                result = false;
            }

            oracleConnection.Close();
            return result;
        }

        public bool Delete(int id)
        {
            bool result = false;

            OracleConnection oracleConnection = connection.conn();
            oracleConnection.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = oracleConnection;

            cmd.CommandText = "Delete_Subscription";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("subscription_id", OracleDbType.Int32).Value = id;
            cmd.Parameters.Add("result", OracleDbType.Boolean).Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();

            try
            {
                result = (cmd.Parameters["result"].Value.ToString() == "True");
            }
            catch (Exception)
            {
                result = false;
            }

            oracleConnection.Close();
            return result;
        }
    }
}