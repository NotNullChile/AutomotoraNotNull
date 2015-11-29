using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
namespace AutomotaNotNull_
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        usuario u = new usuario();
        private void consultaMantenedor()
        {
            try
            {
                string username = txt_username_sesion.Text;
                string password = txt_password_sesion.Text;

                DataTable res = u.validarUser(username, password);

                if (res.DefaultView.Count > 0)
                {
                    DataRow row = res.Rows[0];
                    string rut = row["rutUsuario"].ToString();
                    int rol = int.Parse(row["rol"].ToString());

                    
                    if (rol == 0)
                    {
                        Session["rutCliente"] = rut;
                        Session["rol"] = rol;
                        Response.Redirect("Index_User.aspx");
                    }
                    else if (rol == 1)
                    {
                        Session["rutAdmin"] = rut;
                        Session["rol"] = rol;
                        Response.Redirect("default.aspx");
                    }


                }
            }
            catch (Exception)
            {


            }
        }


        protected void btn_iniciar_sesion_Click1(object sender, EventArgs e)
        {
            consultaMantenedor();
        }

    }
}