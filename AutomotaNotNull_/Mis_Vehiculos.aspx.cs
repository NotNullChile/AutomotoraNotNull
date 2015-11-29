using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutomotaNotNull_
{
    public partial class Mis_Vehiculos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rutCliente"] == null || Session["rol"] == null)
            {
                Response.Redirect("default.aspx");
            }
            lblRut.Text = Session["rutCliente"].ToString();
        }

        protected void lblRut_Load(object sender, EventArgs e)
        {
            lblRut.Text = Session["rutCliente"].ToString();
        }
    }
}