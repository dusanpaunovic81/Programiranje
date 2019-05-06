using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Banca_Bianca
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            admin2.Visible = false;
            zaposleni.Visible = false;
            moji_krediti.Visible = false;
            if (Session["tip"] != null)
            {

            
            if (Session["tip"].ToString() == "A") { admin2.Visible = true; zaposleni.Visible = true;
                    //Response.Redirect("Admin2.aspx");
                }
            if (Session["tip"].ToString() == "Z") { zaposleni.Visible = true;
                //Response.Redirect("Zaposleni.aspx");
            }
            if (Session["tip"].ToString() == "K") { moji_krediti.Visible = true;
                //Response.Redirect("Moji_krediti.aspx");
            }
            }
        }
    }
}