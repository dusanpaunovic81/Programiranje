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
                Response.Redirect("Default.aspx?error=NemateOvlascenje");
            }
            else
            {

                SqlConnection conn = Konekcija.Connect();
                SqlDataAdapter da = new SqlDataAdapter("select * from Kontakti", conn);

                DataTable podaci = new DataTable();
                da.Fill(podaci);

                GridView1.DataSource = podaci;
                GridView1.DataBind();
                odgovor.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string naredba = "select * FROM Kontakti WHERE JMBG='" + TextBox1.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(naredba, Konekcija.Connect());
            DataTable korisnik = new DataTable();
            da.Fill(korisnik);

            GridView2.DataSource = korisnik;
            GridView2.DataBind();
            odgovor.Visible = false;



            //if (korisnik.Rows.Count != 0)
            //{
            //    Session["id_klijenta"] = korisnik.Rows[0][0].ToString();
            //    string naredba1 = "select Naziv_proizvoda, Id_proizvoda,Kamata FROM Proizvodi";
            //    SqlDataAdapter da1 = new SqlDataAdapter(naredba1, Konekcija.Connect());
            //    DataTable proizvodi = new DataTable();
            //    da1.Fill(proizvodi);
            //    DropDownList1.DataSource = proizvodi;
            //    DropDownList1.DataTextField = "Naziv_proizvoda";
            //    DropDownList1.DataValueField = "Id_proizvoda";
            //    DropDownList1.DataBind();

            //    for (int i = 0; i < proizvodi.Rows.Count; i++)
            //    {
            //        string prvi = proizvodi.Rows[i][1].ToString();
            //        string drugi = proizvodi.Rows[i][2].ToString();
            //        recnik.Add(proizvodi.Rows[i][1].ToString(), proizvodi.Rows[i][2].ToString());
            //        Session["recnik"] = recnik;


            //    }



            //}
        }
    }
}