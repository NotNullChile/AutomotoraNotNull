using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
namespace AutomotaNotNull_
{
    public partial class Index_User : System.Web.UI.Page
    {
        Cliente c = new Cliente();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rutCliente"] == null || Session["rol"] == null)
            {
                Response.Redirect("default.aspx");
            }
            int rut = int.Parse(Session["rutCliente"].ToString());
            lblSaludo.Text = "Bienvenido <br>" + c.nombreCliente(rut);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}