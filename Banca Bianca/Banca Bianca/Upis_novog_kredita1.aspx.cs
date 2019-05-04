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
    public partial class WebForm2 : System.Web.UI.Page
    {
        Dictionary<string, string> recnik = new Dictionary<string, string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tip"].ToString() != "Z")
            {
                Response.Redirect("Login.aspx");
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
                //Session["ime_jmbg"]= korisnik.Rows[0]["Ime"].ToString();
                //Session["prezime_jmbg"] = korisnik.Rows[0]["Prezime"].ToString();
                TextBox2.Text = korisnik.Rows[0]["Ime"].ToString();
                TextBox4.Text = korisnik.Rows[0]["Prezime"].ToString();
                Session["id_klijenta"] = korisnik.Rows[0][0].ToString();
                string naredba1 = "select Naziv_proizvoda, Id_proizvoda,Kamata FROM Proizvodi";
                SqlDataAdapter da1 = new SqlDataAdapter(naredba1, Konekcija.Connect());
                DataTable proizvodi = new DataTable();
                da1.Fill(proizvodi);
                DropDownList1.DataSource = proizvodi;
                DropDownList1.DataTextField = "Naziv_proizvoda";
                DropDownList1.DataValueField = "Id_proizvoda";
                DropDownList1.DataBind();

                DropDownList1.Items.Insert(0, new ListItem("", ""));

                for (int i = 0; i < proizvodi.Rows.Count; i++)
                {
                    string prvi = proizvodi.Rows[i][1].ToString();
                    string drugi = proizvodi.Rows[i][2].ToString();
                    recnik.Add(proizvodi.Rows[i][1].ToString(), proizvodi.Rows[i][2].ToString());
                    Session["recnik"] = recnik;


                }


            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            Dictionary<string, string> novi = (Dictionary<string, string>)Session["recnik"];

            if (DropDownList1.SelectedValue != "")
            {

                string proba = novi[DropDownList1.SelectedValue];
                TextBox3.Text = novi[DropDownList1.SelectedValue];

            }
            else
            {
                TextBox3.Text = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //  double kamata = Convert.ToDouble(recnik["kamata"]);

            Dictionary<string, string> novi = (Dictionary<string, string>)Session["recnik"];
            double kamata = Convert.ToDouble(novi[DropDownList1.SelectedValue]);
            double glavnica = Convert.ToDouble(TextBox5.Text);
            double period_otplate = Convert.ToDouble(TextBox6.Text);

            TextBox7.Text = Convert.ToString(glavnica + ((glavnica * period_otplate / 12) * kamata) / 100);
            TextBox8.Text = Convert.ToString((glavnica + ((glavnica * period_otplate / 12) * kamata) / 100) / period_otplate);

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //  string vrsta_kredita = DropDownList1.DataValueField.ToString();
            string vrsta_kredita = DropDownList1.SelectedValue;
            double glavnica = double.Parse(TextBox5.Text);
            double kamata = double.Parse(TextBox3.Text);
            string period_otplate = TextBox6.Text;
            string datum = DateTime.Now.ToString("yyyy-MM-dd");
            double total_iznos = double.Parse(TextBox7.Text);
            double mesecna_rata = double.Parse(TextBox8.Text);
            int id_klijenta = int.Parse(Session["id_klijenta"].ToString());
            int id_zaposlenog = int.Parse(Session["Id_zaposlenog"].ToString());
            // string id_zaposlenog1 = Session["Id_zaposlenog"].ToString();
            StringBuilder Naredba = new StringBuilder("INSERT INTO ");
            Naredba.Append(" Partija_kredita(");
            Naredba.Append("Id_zaposlenog, datum, Id_klijenta, Vrsta_kredita, Glavnica, Period_otplate, Kamata, Total_iznos, Mesecna_rata )");
            Naredba.Append($" VALUES('{id_zaposlenog}','{datum}','{id_klijenta}','{vrsta_kredita}','{glavnica}','{period_otplate}','{kamata}','{total_iznos}','{mesecna_rata}' )");
            SqlConnection conn = Konekcija.Connect();
            SqlCommand Komanda1 = new SqlCommand(Naredba.ToString(), conn);
            conn.Open();
            Komanda1.ExecuteNonQuery();
            conn.Close();
            odobren.InnerHtml = "Kredit je uspesno odobren";
        }
    }
}