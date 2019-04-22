using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Banca_Bianca
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            //Session["tip"] = null;
            //Session["Kontakti"] = "";
            //Session["ime"] = "";
            //Session["Last_date"] = "";
            //Session["Last_time"] = "";
            //Session["id_zaposlenog"] = "";
            //Session["id_klijenta"] = "";
        }

    }
}