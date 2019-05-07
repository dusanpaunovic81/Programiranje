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
    public partial class Reset_lozinke : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //reset.Disabled;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string JMBG = TextBox1.Text;
            string naredba = "select * FROM Kontakti WHERE JMBG='" + TextBox1.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(naredba, Konekcija.Connect());
            DataTable korisnik = new DataTable();
            da.Fill(korisnik);
            if (korisnik.Rows.Count != 0)
            {
                TextBox2.Text = korisnik.Rows[0]["Ime"].ToString();
                TextBox3.Text = korisnik.Rows[0]["Prezime"].ToString();
            }
            else
            {
                Response.Write("Korisnik ne postoji!!!");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string JMBG = TextBox1.Text;
            string Ime = TextBox2.Text;
            string Prezime = TextBox3.Text;
            string Email = Request.Form["email"];
            string korisnicko_ime = Request.Form["korisnicko_ime"];
            string password = Request.Form["lozinka"];
            string password2 = Request.Form["lozinka1"];

            string naredba = "select * FROM Kontakti WHERE JMBG='" + TextBox1.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(naredba, Konekcija.Connect());
            DataTable korisnik = new DataTable();
            da.Fill(korisnik);
            if (korisnik.Rows[0]["Email"].ToString() == Email && korisnik.Rows[0]["Korisnicko_ime"].ToString() == korisnicko_ime)
            {
                StringBuilder Naredba11 = new StringBuilder("UPDATE Kontakti set Lozinka='"+ password + "' where JMBG = ");
                //Naredba.Append("JMBG");
                Naredba11.Append($"'{JMBG}'");
                SqlConnection conn = Konekcija.Connect();
                SqlCommand Komanda6 = new SqlCommand(Naredba11.ToString(), conn);
                conn.Open();
                Komanda6.ExecuteNonQuery();
                conn.Close();
                izmena_lozinke.InnerHtml = "Lozinka je uspešno promenjena! ";


            }
            else
            {
                Response.Write("Podaci se ne poklapaju!");
            }
        }
    }
}