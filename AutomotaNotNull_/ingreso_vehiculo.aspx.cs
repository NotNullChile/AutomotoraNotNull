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
    [System.ComponentModel.DataObject]
    public partial class ingreso_vehiculo : System.Web.UI.Page
    {
        Vehiculo v = new Vehiculo();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
        
    }
}