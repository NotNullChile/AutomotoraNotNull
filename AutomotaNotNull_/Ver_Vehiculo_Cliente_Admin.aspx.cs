using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutomotaNotNull_
{
    public partial class Ver_Vehiculo_Cliente_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rutAdmin"] == null || Session["rol"] == null)
            {
                Response.Redirect("default.aspx");
            }
        }
    }
}