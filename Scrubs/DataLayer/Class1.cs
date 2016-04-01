using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.OleDb;
using System.IO;

namespace DataLayer
{
    public class DataConnector
    {
        protected OleDbDataAdapter DataAdapter1 = new OleDbDataAdapter();
        public string ErrorMessage = "";
        public DataConnector(string ConnectionString)
        {
            OleDbConnection Connection1 = new OleDbConnection(ConnectionString);
            this.DataAdapter1.SelectCommand = new OleDbCommand("",Connection1);
            this.DataAdapter1.InsertCommand = new OleDbCommand("", Connection1);
        }
        public DataTable DataSelect(string query)
        {
            DataTable dt = new DataTable();
            try
            {
            }
            catch
            {
            }
            return dt;
        }
    }
}
