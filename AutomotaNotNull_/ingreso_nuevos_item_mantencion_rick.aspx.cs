using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
namespace AutomotaNotNull_
{
    public partial class ingreso_nuevos_item_mantencion_rick : System.Web.UI.Page
    {
        Mantenciones m = new Mantenciones();
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox txtIdMantenciones = (TextBox)DetailsView1.FindControl("txtIdMantenciones");
            txtIdMantenciones.Text = m.countMantenciones();
        }

        protected void txtIdMantenciones_Load(object sender, EventArgs e)
        {
            TextBox txtIdMantenciones = (TextBox)DetailsView1.FindControl("txtIdMantenciones");
            txtIdMantenciones.Text = m.countMantenciones();
        }
    }
}