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
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session.Abandon();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text;
            string pass = TextBox2.Text;
          
            string naredba = "select * FROM Kontakti WHERE Korisnicko_ime='" + username + "'";
            SqlDataAdapter da = new SqlDataAdapter(naredba, Konekcija.Connect());
            DataTable korisnik = new DataTable();
            da.Fill(korisnik);
            if (korisnik.Rows.Count == 0)
            {
                Response.Write("Nema ga");
            }
            else
            {
                naredba = "select * FROM Kontakti WHERE Korisnicko_ime='" + username + "' AND Lozinka='" + pass + "'";
                da = new SqlDataAdapter(naredba, Konekcija.Connect());
                korisnik = new DataTable();
                da.Fill(korisnik);
                if (korisnik.Rows.Count == 0)
                {
                    Response.Write("Los password");
                }
                else
                {
                    //pravi sesiju...
                    Session["Kontakti"] = username;
                    Session["tip"] = korisnik.Rows[0]["Pozicija"].ToString();
                    Session["ime"] = korisnik.Rows[0]["Korisnicko_ime"].ToString();
                    Session["Last_date"] = korisnik.Rows[0]["login_date"].ToString();
                    Session["Last_time"] = korisnik.Rows[0]["login_time"].ToString();
                    Session["id_zaposlenog"] = korisnik.Rows[0]["Id_racuna"].ToString();
                    Session["JMBG"] = korisnik.Rows[0]["JMBG"].ToString();

                    //upisi u SQL podatke o logovanju time, date, korisnik...
                    SqlConnection conn = Konekcija.Connect();
                    SqlCommand komanda2 = new SqlCommand("update Kontakti set login_date = GETDATE() where Korisnicko_ime = '" + TextBox1.Text + "'", conn);
                    SqlCommand komanda3 = new SqlCommand("update Kontakti set login_time= convert(time, concat( datepart(hour, getdate()), ':', datepart(minute, getdate()), ':', datepart(second, getdate()))) where Korisnicko_ime = '" + TextBox1.Text + "'", conn);
                    conn.Open();
                    komanda2.ExecuteNonQuery();
                    komanda3.ExecuteNonQuery();

                    Response.Write("Ima ga:" + Session["ime"] + Session["tip"]);
                    if (Equals(Session["tip"], "A"))
                    { Response.Redirect("Admin2.aspx"); }
                    else if (string.Equals(Session["tip"], "Z"))
                    { Response.Redirect("Zaposleni.aspx"); }
                    else if (string.Equals(Session["tip"], "K"))
                    { Response.Redirect("Moji_krediti.aspx"); }

                }
            }


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}