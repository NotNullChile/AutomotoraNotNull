using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutomotaNotNull_
{
    public partial class Ingreso_Vehiculo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rutCliente"] == null || Session["rol"] == null)
            {
                Response.Redirect("default.aspx");
            }
            TextBox txtRut = (TextBox)DetailsView1.FindControl("txtRut");
            txtRut.Text = Session["rutCliente"].ToString();
        }
    }
}