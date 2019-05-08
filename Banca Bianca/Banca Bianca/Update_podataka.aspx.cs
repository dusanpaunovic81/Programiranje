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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["tip"].ToString() != "Z" && (Session["tip"].ToString() != "A" || Session["tip"] == null))
            {

                    Response.Redirect("Login.aspx");
                    Response.Write("Nemate ovlašćenje za ovu stranicu!");
                    Response.Write("<a href=" + "'Login.aspx'" + ">VRATI SE</a>");

               
            }
          

                SqlConnection conn = Konekcija.Connect();
                SqlDataAdapter da = new SqlDataAdapter("select Broj_racuna, Ime, Prezime, JMBG, Email, datum_rodj AS Datum_Rodjenja, Adresa, Mesto, Mobilni, Fiksni, Pol, Pozicija from Kontakti", conn);
                DataTable podaci = new DataTable();
                da.Fill(podaci);
                GridView1.DataSource = podaci;
                GridView1.DataBind();
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string naredba4 = "select Broj_racuna, Ime, Prezime, JMBG, Email, datum_rodj AS Datum_Rodjenja, Adresa, Mesto, Mobilni, Fiksni, Pol, Pozicija FROM Kontakti WHERE JMBG='" + TextBox1.Text + "'";
            SqlDataAdapter da4 = new SqlDataAdapter(naredba4, Konekcija.Connect());
            DataTable korisnik4 = new DataTable();
            da4.Fill(korisnik4);
            GridView2.DataSource = korisnik4;
            GridView2.DataBind();

            if (korisnik4.Rows.Count == 0)
            {
                poruka.InnerHtml = "Korisnik ne postoji!!!";
            }

            else
            {
                TextBox2.Text = korisnik4.Rows[0]["Ime"].ToString();
                TextBox3.Text = korisnik4.Rows[0]["Prezime"].ToString();
                TextBox4.Text = korisnik4.Rows[0]["Email"].ToString();
                TextBox5.Text = korisnik4.Rows[0]["Adresa"].ToString();
                TextBox6.Text = korisnik4.Rows[0]["Mesto"].ToString();
                TextBox7.Text = korisnik4.Rows[0]["Mobilni"].ToString();
                TextBox8.Text = korisnik4.Rows[0]["Fiksni"].ToString();
                TextBox9.Text = korisnik4.Rows[0]["Pol"].ToString();
                Label1.Visible = true;
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string JMBG = TextBox1.Text;
            string Ime = TextBox2.Text;
            string Prezime = TextBox3.Text;
            string Email = TextBox4.Text;
            string Adresa = TextBox5.Text;
            string Mesto = TextBox6.Text;
            string Mobilni = TextBox7.Text;
            string Fiksni = TextBox8.Text;
            string Pol = TextBox9.Text;

            StringBuilder Naredba5 = new StringBuilder("UPDATE Kontakti set Ime='"+Ime+ "', Prezime='" + Prezime + "', Email='" + Email + "', Adresa='" + Adresa + "' , Mesto='" + Mesto + "', Mobilni='" + Mobilni + "', Fiksni='" + Fiksni + "', Pol='" + Pol + "'where JMBG ='" + JMBG + "' ");
            //Naredba.Append("JMBG");
            //Naredba5.Append($"'{JMBG}'");
            SqlConnection conn = Konekcija.Connect();
            SqlCommand Komanda5 = new SqlCommand(Naredba5.ToString(), conn);
            conn.Open();
            Komanda5.ExecuteNonQuery();
            conn.Close();
            izmena_uneta.InnerHtml = "Podaci su uspešno promenjeni! ";
        }
    }
}