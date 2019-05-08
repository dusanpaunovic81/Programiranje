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
    public partial class Zaposleni_pregled_kredita1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tip"].ToString() != "Z" && (Session["tip"].ToString() != "A" || Session["tip"] == null))
            {

                    Response.Redirect("Login.aspx");
                    Response.Write("Nemate ovlašćenje za ovu stranicu!");
                    Response.Write("<a href=" + "'Login.aspx'" + ">VRATI SE</a>");

              
            }

            //else if (Session["tip"].ToString() != "Z" && )
            //{
            //    //Response.Write("Nemate ovlascenje za ovu stranicu!");
            //    //Response.Write("<a href=" + "'Login.aspx'" + ">VRATI SE</a>");
            //    Response.Redirect("Default.aspx?error=NemateOvlašćenje");
            //}
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string naredba4 = ("select Id_racuna, Broj_racuna, Ime, Prezime, JMBG, Email, datum_rodj AS Datum_Rodjenja, Adresa, Mesto, Mobilni, Fiksni, Pol, Pozicija from Kontakti WHERE JMBG='" + TextBox1.Text + "'");
            SqlDataAdapter da4 = new SqlDataAdapter(naredba4, Konekcija.Connect());
            DataTable korisnik4 = new DataTable();
            da4.Fill(korisnik4);
            GridView1.DataSource = korisnik4;
            GridView1.DataBind();

            if (korisnik4.Rows.Count == 0)
            {
                poruka.InnerHtml = "Korisnik ne postoji!!!";
            }

            else
            {
                string naredba2 = "EXECUTE PregledUserKredita " + korisnik4.Rows[0]["Id_racuna"].ToString();
            SqlDataAdapter da2 = new SqlDataAdapter(naredba2, Konekcija.Connect());
            DataTable pregledKredita = new DataTable();
            da2.Fill(pregledKredita);
            string naredba3 = "EXECUTE PregledUplata " + korisnik4.Rows[0]["Id_racuna"].ToString();
            SqlDataAdapter da3 = new SqlDataAdapter(naredba3, Konekcija.Connect());
            DataTable pregledUplata = new DataTable();
            da3.Fill(pregledUplata);

          
                poruka.InnerHtml = "";
                GridView2.DataSource = pregledKredita;
                GridView2.DataBind();



                GridView3.DataSource = pregledUplata;
                GridView3.DataBind();

                //double osnovica = pregledKredita.Rows[0]["glavnica"]
                int bruplata = pregledUplata.Rows.Count;
                int brkredita = pregledKredita.Rows.Count;
                IDictionary<int, double> krediti = new Dictionary<int, double>();
                for (int i = 0; i < brkredita; i++)
                {
                    krediti.Add(Convert.ToInt32(pregledKredita.Rows[i]["Partija"]), Convert.ToDouble(pregledKredita.Rows[i]["Total"]));
                }
                //double[] PeriodOtplate = new double[pregledKredita.Rows.Count];
                //for (int i = 0; i < PeriodOtplate.Length; i++)
                //{
                //    PeriodOtplate[i] = Convert.ToInt32(pregledKredita.Rows[i]["PeriodOtplate"]) - bruplata;
                //}
                for (int i = 0; i < bruplata; i++)
                {
                    for (int j = 0; j < krediti.Count; j++)
                        if (Convert.ToInt32(pregledUplata.Rows[i]["id_partije"]) == krediti.ElementAt(j).Key)
                            krediti[krediti.ElementAt(j).Key] = krediti[krediti.ElementAt(j).Key] - Convert.ToDouble(pregledUplata.Rows[i]["Iznos_uplate"]);

                }
                otplate.InnerHtml = "<table border='1'><tr><th>Naziv kredita</th><th>Preostali iznos za otplatu</th></tr>";
                for (int i = 0; i < krediti.Count; i++)
                {
                    string naredba5 = "Select Naziv_proizvoda from Proizvodi " +
                        "inner join Partija_kredita on Proizvodi.Id_proizvoda = Partija_kredita.Vrsta_kredita" +
                        " where Id_partije ='" + krediti.ElementAt(i).Key + "'";
                    SqlDataAdapter da5 = new SqlDataAdapter(naredba5, Konekcija.Connect());
                    DataTable nazivi_kredita = new DataTable();
                    da5.Fill(nazivi_kredita);

                    otplate.InnerHtml += "<tr><td>" + nazivi_kredita.Rows[0]["Naziv_proizvoda"] + "</td>";
                    otplate.InnerHtml += "<td>" + krediti[krediti.ElementAt(i).Key].ToString() + "</td></tr>";
                    //Response.Write(nazivi_kredita.Rows[0]["Naziv_proizvoda"] + " - ");
                    //Response.Write(krediti[krediti.ElementAt(i).Key].ToString() + "" + Environment.NewLine);
                    //da5.Dispose();
                    //nazivi_kredita.Clear();

                }
                otplate.InnerHtml += "</table>";
                Label3.Visible = true;
                Label4.Visible = true;
                Label5.Visible = true;
                Label6.Visible = true;
            }
        }

    }
}