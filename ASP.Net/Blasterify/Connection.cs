using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Blasterify {
    public class Connection {
        public Connection() { }
        public OracleConnection conn() {
            string connectionString = "DATA SOURCE = localhost:1521 / xe; PERSIST SECURITY INFO = True; USER ID = Blasterify; PASSWORD = admin";
            OracleConnection oracleConnection = new OracleConnection(connectionString);
            return oracleConnection;
        }
    }
}