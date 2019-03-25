using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

namespace Banca_Bianca
{
    public partial class Zaposleni : Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {

          //  if (Session["korisnik"].ToString() == "")
            {
           //     Response.Redirect("Login.aspx");
            }
            SqlConnection conn = Konekcija.Connect();
            SqlCommand komanda = new SqlCommand("select * from Kontakti", conn);
            conn.Open();
            SqlDataReader citac = komanda.ExecuteReader();
            while (citac.Read())
            {
                TableRow TR = new TableRow();
                if (citac[2].ToString().Length != 0)
                {
                    for (int i = 0; i < citac.FieldCount; i++)
                    {
                        TableCell TD = new TableCell();
                        TD.Text = citac[i].ToString();
                        TR.Cells.Add(TD);
                    }
                   Table1.Rows.Add(TR);
                }
            }
            conn.Close();
        }
    }
}