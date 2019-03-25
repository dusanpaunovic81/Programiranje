using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace Banca_Bianca
{
    public class Konekcija
    {
        static public SqlConnection Connect()
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
            return conn;
        }
    }
}