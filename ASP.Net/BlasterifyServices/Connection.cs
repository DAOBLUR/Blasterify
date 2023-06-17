using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Blasterify {
    public class Connection {
        public Connection() { }
        public OracleConnection conn() {
            //string connectionString = "DATA SOURCE = localhost:1521 / xe; PERSIST SECURITY INFO = True; USER ID = Blasterify; PASSWORD = admin";
            string connectionString = "Data Source=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=xe)));User Id=Blasterify;Password=admin;";
            OracleConnection oracleConnection = new OracleConnection(connectionString);
            /*
            OracleConfiguration.TnsAdmin = @"D:\home\site\wwwroot\DB";
            OracleConfiguration.WalletLocation = OracleConfiguration.TnsAdmin;
          */
            return oracleConnection;
        }
    }
}