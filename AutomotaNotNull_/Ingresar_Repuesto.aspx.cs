using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
namespace AutomotaNotNull_
{
    public partial class Ingresar_Repuesto : System.Web.UI.Page
    {
        repuesto r = new repuesto();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rutAdmin"] == null || Session["rol"] == null)
            {
                Response.Redirect("default.aspx");
            }
            TextBox txtIdRepuesto = (TextBox)DetailsView1.FindControl("txtIdRepuesto");
            txtIdRepuesto.Text = r.countIdRepuesto();
        }

        protected void txtIdRepuesto_Load(object sender, EventArgs e)
        {
            TextBox txtIdRepuesto = (TextBox)DetailsView1.FindControl("txtIdRepuesto");
            txtIdRepuesto.Text = r.countIdRepuesto();
        }

        protected void txtStock_PreRender(object sender, EventArgs e)
        {
        }

        protected void DDLRepuesto_PreRender(object sender, EventArgs e)
        {
            try
            {

           
            TextBox txtStock = (TextBox)DetailsView2.FindControl("txtStock");
            DropDownList DDLRepuesto = (DropDownList)DetailsView2.FindControl("DDLRepuesto");
            string repuesto = DDLRepuesto.SelectedValue;
            txtStock.Text = r.stockRepuesto(int.Parse(repuesto));
            }
            catch(Exception ex)
            {

            }
        }
    }
}