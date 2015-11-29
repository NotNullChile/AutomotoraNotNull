using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
namespace AutomotaNotNull_
{
    public partial class Ingresar_Mantencion : System.Web.UI.Page
    {
        Mantenciones m = new Mantenciones();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rutAdmin"] == null || Session["rol"] == null)
            {
                Response.Redirect("default.aspx");
            }
            TextBox txtIdMantenciones = (TextBox)DetailsView1.FindControl("txtIdMantenciones");
            txtIdMantenciones.Text = m.countMantenciones();
            TextBox txtRut = (TextBox)DetailsView1.FindControl("txtRut");
            txtRut.Text = DDLCliente.SelectedValue;

        }
        protected void txtIdMantenciones_Load(object sender, EventArgs e)
        {
            TextBox txtIdMantenciones = (TextBox)DetailsView1.FindControl("txtIdMantenciones");
            txtIdMantenciones.Text = m.countMantenciones();
        }

        protected void DDLCliente_TextChanged(object sender, EventArgs e)
        {
            TextBox txtRut = (TextBox)DetailsView1.FindControl("txtRut");
            txtRut.Text = DDLCliente.SelectedValue;
            
        }

        protected void DDLPatente_TextChanged(object sender, EventArgs e)
        {
            TextBox txtVehiculo = (TextBox)DetailsView1.FindControl("txtVehiculo");
            txtVehiculo.Text = DDLPatente.Text;
        }


        protected void DDLPatente_PreRender(object sender, EventArgs e)
        {
            TextBox txtRut = (TextBox)DetailsView1.FindControl("txtRut");
            txtRut.Text = DDLCliente.SelectedValue;
            TextBox txtVehiculo = (TextBox)DetailsView1.FindControl("txtVehiculo");
            txtVehiculo.Text = DDLPatente.Text;
        }

        protected void DDLCliente_Load(object sender, EventArgs e)
        {
            TextBox txtRut = (TextBox)DetailsView1.FindControl("txtRut");
            txtRut.Text = DDLCliente.SelectedValue;
            TextBox txtVehiculo = (TextBox)DetailsView1.FindControl("txtVehiculo");
            txtVehiculo.Text = DDLPatente.Text;
        }
    }
}