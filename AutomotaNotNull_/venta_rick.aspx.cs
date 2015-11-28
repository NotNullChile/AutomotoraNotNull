using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
namespace AutomotaNotNull_
{
    public partial class venta_rick : System.Web.UI.Page
    {
        Venta v = new Venta();
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox txtIdVenta = (TextBox)DetailsView1.FindControl("txtIdVenta");
            txtIdVenta.Text = v.countVenta();
        }
    }
}