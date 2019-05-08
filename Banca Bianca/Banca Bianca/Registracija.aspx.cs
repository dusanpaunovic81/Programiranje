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
    public partial class Registracija : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // if (Session["korisnik"].ToString() == "")
            {
             // Response.Redirect("Login.aspx");
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Ime = Request.Form["Ime"];
            string Prezime = Request.Form["Prezime"];
            string JMBG = Request.Form["JMBG"];
            string email = Request.Form["email"];
            string korisnicko_ime = Request.Form["korisnicko_ime"];
            string password = Request.Form["lozinka"];
            string password2 = Request.Form["lozinka1"];
            string datum_rodj = Request.Form["datum_rodj"];
            string Adresa = Request.Form["adresa"];
            string Mesto = Request.Form["grad"];
            string Mobilni = Request.Form["tel"];
            string Fiksni = Request.Form["tel1"];
            string Pol = "M";
            
          //  Response.Write(Ime + " " + Prezime + " " + JMBG + " " + " " + email + " " + korisnicko_ime + " " + password + " " + password2 + " " + datum_rodj + " " + Adresa + " " + Mesto + " " + Mobilni + " " + Fiksni + " " + Pol);
            string naredba = "select * from Kontakti where korisnicko_ime ='" + korisnicko_ime + "'";
            SqlDataAdapter da = new SqlDataAdapter(naredba, Konekcija.Connect());
            DataTable korisnik = new DataTable();
            da.Fill(korisnik);
            if (korisnik.Rows.Count == 0)
            {
                //upis novog
                Response.Write("Nema ga!!!");
                string sad_d = DateTime.Now.ToString("yyyy-MM-dd");
                DateTime sad = DateTime.Now;
                String sad_v = sad.Hour.ToString() + ":" + sad.Minute.ToString();
                StringBuilder Naredba = new StringBuilder("INSERT INTO ");
                Naredba.Append(" Kontakti(");
                Naredba.Append("ime, prezime, JMBG, email, korisnicko_ime, Lozinka,  datum_rodj, ");
                Naredba.Append(" Adresa, Mesto, Mobilni, Fiksni, Pol, Pozicija, login_date, login_time )");
                Naredba.Append($" VALUES('{Ime}','{Prezime}','{JMBG}', '{email}','{korisnicko_ime}','{password}','{datum_rodj}','{Adresa}','{Mesto}','{Mobilni}','{Fiksni}','{Pol}','K', '{sad_d}','{sad_v}') ");
                //Response.Write(Naredba.ToString());
                SqlConnection conn = Konekcija.Connect();
                SqlCommand Komanda = new SqlCommand(Naredba.ToString(), conn);
                conn.Open();
                Komanda.ExecuteNonQuery();
                conn.Close();
                registracija.InnerHtml = "Registracija je uspešno izvršena!";
            }
            else
            {
                //vec postoji
                Response.Write("Korisnik već postoji u bazi!!!");
            }


            string ime = Request.Form["Ime"];
            Response.Write(ime);


        
    }
    }
}