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
            if (Session["tip"].ToString() != "Z" || Session["tip"] == null)
            {
                Response.Redirect("Login.aspx");
                Response.Write("Nemate ovlascenje za ovu stranicu!");
                Response.Write("<a href=" + "'Login.aspx'" + ">VRATI SE</a>");

            }
            //else if (Session["tip"].Equals("Z"))
            //{

            //    SqlConnection conn = Konekcija.Connect();
            //    SqlDataAdapter da = new SqlDataAdapter("select * from Kontakti", conn);

            //    DataTable podaci = new DataTable();
            //    da.Fill(podaci);

            //    GridView1.DataSource = podaci;
            //    GridView1.DataBind();
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Upis_novog_kredita1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Zaposleni_pregled_kredita.aspx");
        }
        protected void MainContent_Button3_Click(object sender, EventArgs e)
        {
            string naredba = "select * FROM Kontakti WHERE JMBG='" + JMBG.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(naredba, Konekcija.Connect());
            DataTable korisnik = new DataTable();
            da.Fill(korisnik);
            if (korisnik.Rows.Count != 0)
            {
                Ime.Text = korisnik.Rows[0]["Ime"].ToString();
                Prezime.Text = korisnik.Rows[0]["Prezime"].ToString();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Uplata.aspx");
        }
    }
}