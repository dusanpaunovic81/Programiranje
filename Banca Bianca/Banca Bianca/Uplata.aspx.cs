using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Windows;
using System.Text;
using System.Data.SqlClient;

namespace Banca_Bianca
{
    public partial class Uplata : System.Web.UI.Page
    {
        
        Dictionary<string, string> recnik = new Dictionary<string, string>();
        protected void Page_Load(object sender, EventArgs e)
        {
                if (Session["tip"].ToString() != "Z" || Session["tip"] == null)
                {

                    if (Session["tip"].ToString() != "A" || Session["tip"] == null)
                    {
                        Response.Redirect("Login.aspx");
                        Response.Write("Nemate ovlascenje za ovu stranicu!");
                        Response.Write("<a href=" + "'Login.aspx'" + ">VRATI SE</a>");

                    }
                }
            }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //this.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string naredba = "select * FROM Kontakti WHERE JMBG='" + TextBox3.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(naredba, Konekcija.Connect());
            DataTable korisnik = new DataTable();
            da.Fill(korisnik);
           

            if (korisnik.Rows.Count != 0)
            {
                Session["klijent"] = korisnik.Rows[0]["Id_racuna"];
                TextBox1.Text = korisnik.Rows[0]["Ime"].ToString();
                TextBox2.Text = korisnik.Rows[0]["Prezime"].ToString();
                string provera = Session["id_zaposlenog"].ToString();
                SqlDataAdapter da11 = new SqlDataAdapter("select Id_partije, Naziv_proizvoda from Partija_kredita inner join proizvodi on Partija_kredita.Vrsta_kredita = Proizvodi.Id_proizvoda where Id_klijenta =" + korisnik.Rows[0]["Id_racuna"].ToString(), Konekcija.Connect());
                DataTable partija1 = new DataTable();
                da11.Fill(partija1);
                DropDownList1.DataSource = partija1;
                DropDownList1.DataTextField = "Id_partije";
                DropDownList1.DataValueField = "Id_partije";
                DropDownList1.DataBind();
                for(int i = 0; i < partija1.Rows.Count; i++)
                {
                    recnik.Add(partija1.Rows[i]["Id_partije"].ToString(), partija1.Rows[i]["Naziv_proizvoda"].ToString());

                }

                Session["partije_kredita"] = recnik;

              
            }


        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            Dictionary<string, string> novi = (Dictionary<string, string>)Session["partije_kredita"];

            TextBox4.Text = novi[DropDownList1.SelectedValue];

            //string provera = DropDownList1.SelectedValue;
            //TextBox4.Text = DropDownList1.SelectedValue;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string Id_zaposlenog = Session["Id_zaposlenog"].ToString();
            DateTime trenutni = DateTime.Now;
            string Datum = "'" + trenutni.Year.ToString() + trenutni.Month.ToString().PadLeft(2, '0') + trenutni.Day.ToString().PadLeft(2, '0') + "'";
            string Id_klijenta = Session["klijent"].ToString();
            string Id_partije = DropDownList1.SelectedValue;
            string Iznos_uplate = TextBox5.Text;

            string CS = "Data Source=DESKTOP-UEEU1BK\\SQLEXPRESS; Initial Catalog=Banca2;Integrated Security=True";
            SqlConnection conn = new SqlConnection(CS);
            SqlCommand komanda = new SqlCommand("Insert into Uplate(Id_zaposlenog, Datum, Id_klijenta, Id_partije, Iznos_uplate) values(" + Id_zaposlenog + ", " + Datum + ", " + Id_klijenta + ", " + Id_partije + ", " + Iznos_uplate + ")", conn);
            conn.Open();
            komanda.ExecuteNonQuery();
            conn.Close();
        }
    }
}