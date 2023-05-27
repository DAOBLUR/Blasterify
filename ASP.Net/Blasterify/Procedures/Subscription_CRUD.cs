using Newtonsoft.Json;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Blasterify.Procedures {
    public class Subscription_CRUD {

        private Connection connection;

        public Subscription_CRUD() {
            connection = new Connection();
        }

        public bool Create(string name, double price, string features) {
            bool result = false;

            OracleConnection oracleConnection = connection.conn();
            oracleConnection.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = oracleConnection;

            cmd.CommandText = "Insert_Subscription";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("subscription_name", OracleDbType.Varchar2).Value = name;
            cmd.Parameters.Add("subscription_price", OracleDbType.Decimal).Value = price;
            cmd.Parameters.Add("subscription_features", OracleDbType.Clob).Value = features;
            cmd.Parameters.Add("result", OracleDbType.Boolean).Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();

            try {
                result = (cmd.Parameters["result"].Value.ToString() == "True");
            }
            catch (Exception ex) {
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

            cmd.CommandText = "Get_Subscription";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("subscription_id", OracleDbType.Int32).Value = id;
            cmd.Parameters.Add("subscription_name", OracleDbType.Varchar2, 20).Direction = ParameterDirection.Output;
            cmd.Parameters.Add("subscription_price", OracleDbType.Decimal).Direction = ParameterDirection.Output;
            cmd.Parameters.Add("subscription_features", OracleDbType.Clob).Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();

            try {
                var subscription_name = cmd.Parameters["subscription_name"].Value.ToString();

                OracleDecimal orclDecimal = (OracleDecimal)cmd.Parameters["subscription_price"].Value;
                double subscription_price = Convert.ToDouble(orclDecimal.Value);

                OracleClob clob = (OracleClob)cmd.Parameters["subscription_features"].Value;
                string subscription_features = clob.Value;

                var subscription = new {
                    id = id,
                    name = subscription_name,
                    price = subscription_price,
                    features = subscription_features
                };
                json = JsonConvert.SerializeObject(subscription);
            }
            catch (Exception ex) {
                json = ex.ToString();
            }

            oracleConnection.Close();
            return json;
        }

        public bool Update(int id, string name, double price, string features) {
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

            try {
                result = (cmd.Parameters["result"].Value.ToString() == "True");
            }
            catch (Exception ex) {
                result = false;
            }

            oracleConnection.Close();
            return result;
        }

        public bool Delete(int id) {
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

            try {
                result = (cmd.Parameters["result"].Value.ToString() == "True");
            }
            catch (Exception ex) {
                result = false;
            }

            oracleConnection.Close();
            return result;
        }
    }
}