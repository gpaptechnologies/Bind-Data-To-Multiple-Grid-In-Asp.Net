using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace MultiGrid
{
    public class BLL_GridData
    {
        public static string connectionstring()
        {
            string cstr = string.Empty;
            cstr = ConfigurationManager.ConnectionStrings["myConn"].ToString();
            return cstr;
        }

        public DataSet GetData()
        {
            SqlConnection conn = null;
            SqlCommand cmd = null;
            SqlDataAdapter sqlda = null;
            DataSet ds = null;

            using (conn = new SqlConnection(connectionstring()))
            {
                cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "USP_GETEMPLOYEEANDDEPTMASTERDATA";
                sqlda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                sqlda.Fill(ds);
            }
            return ds;
        }

    }
}