using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutomotaNotNull_
{
    public partial class Index_ADmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rutAdmin"] == null || Session["rol"] == null)
            {
                Response.Redirect("default.aspx");
            }
            int rut = int.Parse(Session["rutAdmin"].ToString());
            //lblSaludo.Text = "Bienvenido <br>" + c.nombreCliente(rut);
        }
    }
}