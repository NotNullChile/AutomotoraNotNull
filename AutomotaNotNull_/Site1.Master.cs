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
        private void consultaMantenedor()
        {
            try
            {
                string username = txt_username.Text;
                string password = txt_password.Text;

                DataTable res = u.validarUser(username, password);

                if (res.DefaultView.Count > 0)
                {
                    DataRow row = res.Rows[0];
                    string nombreUser = row["rutUsuario"].ToString();
                    int rol = int.Parse(row["rol"].ToString());
                    if(rol == 0)
                    {
                        Session["user"] = nombreUser;
                        Response.Redirect("default.aspx");
                    }
                    else if(rol == 1)
                    {
                        Session["admin"] = nombreUser;
                        Response.Redirect("default.aspx");
                    }
                    

                }
            }
            catch (Exception)
            {


            }
        }
        protected void btn_sesion_inicio__Click(object sender, EventArgs e)
        {
            consultaMantenedor();
        }

        protected void btn_sesion_nuevo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro_Cliente.aspx");
        }
    }
}