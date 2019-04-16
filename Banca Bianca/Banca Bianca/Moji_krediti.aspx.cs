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

            if (Session["tip"].ToString() != "K")
            {
                //Response.Redirect("Login.aspx");
                Response.Write("Nemate ovlascenje za ovu stranicu!");
                Response.Write("<a href=" + "'Login.aspx'" + ">VRATI SE</a>");

            }
            else if (Session["tip"].Equals("K"))
            {

                SqlConnection conn = Konekcija.Connect();
                SqlDataAdapter da = new SqlDataAdapter("select * from Kontakti", conn);

                DataTable podaci = new DataTable();
                da.Fill(podaci);

                GridView1.DataSource = podaci;
                GridView1.DataBind();
                odgovor.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

           


        }
    }
}