using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using System.Data;
namespace AutomotaNotNull_
{
    public partial class Mis_Mantenciones : System.Web.UI.Page
    {
        Mantenciones m = new Mantenciones();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rutCliente"] == null || Session["rol"] == null)
            {
                Response.Redirect("default.aspx");
            }
            lblRut.Text = Session["rutCliente"].ToString();
            int rut = int.Parse(lblRut.Text);
            DataTable res = m.misMantenciones(rut);
            if(res.DefaultView.Count == 0)
            {
                lblSinRegistro.Text  = ("<h1> No Existen Mantenciones </h1>");
            }
        }
    }
}