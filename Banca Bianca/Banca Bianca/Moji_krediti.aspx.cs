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
        Dictionary<string, string> recnik = new Dictionary<string, string>();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["tip"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else if (Session["tip"].ToString() != "K")
            {
                //Response.Write("Nemate ovlascenje za ovu stranicu!");
                //Response.Write("<a href=" + "'Login.aspx'" + ">VRATI SE</a>");
                Response.Redirect("Default.aspx?error=Nemate_Ovlašćenje_za_ovu_stranicu!");
            }
            else
            {
                string naredba4 = "select * FROM Kontakti WHERE JMBG='" + Session["JMBG"] + "'";
                SqlDataAdapter da4 = new SqlDataAdapter(naredba4, Konekcija.Connect());
                DataTable korisnik4 = new DataTable();
                da4.Fill(korisnik4);
                GridView1.DataSource = korisnik4;
                GridView1.DataBind();

                string naredba2 = "EXECUTE PregledUserKredita " + korisnik4.Rows[0]["Id_racuna"].ToString();
                SqlDataAdapter da2 = new SqlDataAdapter(naredba2, Konekcija.Connect());
                DataTable pregledKredita = new DataTable();
                da2.Fill(pregledKredita);
                string naredba3 = "EXECUTE PregledUplata " + korisnik4.Rows[0]["Id_racuna"].ToString();
                SqlDataAdapter da3 = new SqlDataAdapter(naredba3, Konekcija.Connect());
                DataTable pregledUplata = new DataTable();
                da3.Fill(pregledUplata);

                GridView2.DataSource = pregledKredita;
                GridView2.DataBind();
                GridView3.DataSource = pregledUplata;
                GridView3.DataBind();
                int bruplata = pregledUplata.Rows.Count;
                int brkredita = pregledKredita.Rows.Count;
                IDictionary<int, double> krediti = new Dictionary<int, double>();
                for (int i = 0; i < brkredita; i++)
                {
                    krediti.Add(Convert.ToInt32(pregledKredita.Rows[i]["Partija"]), Convert.ToDouble(pregledKredita.Rows[i]["Total"]));
                }

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
                if (krediti.Count == 0)
                {
                    Label4.Visible = false;
                    Label5.Visible = false;
                    Label6.Visible = false;
                    otplate.Visible = false;
                }
            }
            
        }

       
        
    }
}