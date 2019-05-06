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
    public partial class Admin21 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["tip"].ToString() == "A")
            {

                SqlConnection conn = Konekcija.Connect();
                SqlDataAdapter da = new SqlDataAdapter("select Broj_racuna, Ime, Prezime, JMBG, Email, datum_rodj AS Datum_Rodjenja, Adresa, Mesto, Mobilni, Fiksni, Pol, Pozicija from Kontakti", conn);

                DataTable podaci = new DataTable();
                da.Fill(podaci);

                GridView1.DataSource = podaci;
                GridView1.DataBind();
            }
            else if (Session["tip"].ToString() != "A")
            {
                //Response.Redirect("Login.aspx");
                Response.Write("Nemate ovlascenje za ovu stranicu!");
                Response.Write("<a href=" + "'Login.aspx'" + ">VRATI SE</a>");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string naredba = "select * FROM Kontakti WHERE JMBG='" + TextBox1.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(naredba, Konekcija.Connect());
            DataTable korisnik = new DataTable();
            da.Fill(korisnik);
            if (korisnik.Rows.Count != 0)
            {
                TextBox2.Text = korisnik.Rows[0]["Ime"].ToString();
                TextBox4.Text = korisnik.Rows[0]["Prezime"].ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string JMBG = TextBox1.Text;

            StringBuilder Naredba = new StringBuilder("UPDATE Kontakti set Pozicija='Z' where JMBG = ");
            //Naredba.Append("JMBG");
            Naredba.Append($"'{JMBG}'");
            SqlConnection conn = Konekcija.Connect();
            SqlCommand Komanda1 = new SqlCommand(Naredba.ToString(), conn);
            conn.Open();
            Komanda1.ExecuteNonQuery();
            conn.Close();
            odobren.InnerHtml = "Status je uspesno promenjen u Zaposleni! ";
        }
    }
}