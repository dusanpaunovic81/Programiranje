using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Banca_Bianca
{
    public partial class Moji_krediti : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlConnection conn = Konekcija.Connect();
            SqlDataAdapter da = new SqlDataAdapter("select * from Kontakti", conn);
            
            DataTable podaci = new DataTable();
            da.Fill(podaci);

            GridView1.DataSource = podaci;
            GridView1.DataBind();
        }
    }
}