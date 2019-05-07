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
    public partial class Zaposleni : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["tip"].ToString() != "Z")
            {

                if (Session["tip"].ToString() != "A" || Session["tip"] == null)
                {
                    Response.Redirect("Login.aspx");
                    Response.Write("Nemate ovlašćenje za ovu stranicu!");
                    Response.Write("<a href=" + "'Login.aspx'" + ">VRATI SE</a>");

                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Upis_novog_kredita1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Zaposleni_pregled_kredita.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Uplata.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update_podataka.aspx");
        }
    }
}