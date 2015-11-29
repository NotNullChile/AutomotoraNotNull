using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutomotaNotNull_
{
    public partial class Index_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rutCliente"] == null || Session["rol"] == null)
            {
                Response.Redirect("default.aspx");
            }
            lblSaludo.Text = Session["rutCliente"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}