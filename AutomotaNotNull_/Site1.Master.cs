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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        usuario u = new usuario();
        
        protected void btn_sesion_inicio__Click(object sender, EventArgs e)
        {
            //consultaMantenedor();
        }

        protected void btn_sesion_nuevo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro_Cliente.aspx");
        }
    }
}