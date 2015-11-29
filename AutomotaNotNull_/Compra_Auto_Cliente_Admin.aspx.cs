using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutomotaNotNull_
{
    public partial class Compra_Auto_Cliente_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            subirFoto();
        }
        public void subirFoto()
        {
            TextBox txtFoto = (TextBox)DetailsView1.FindControl("txtFoto");
            FileUpload FileUpload1 = (FileUpload)DetailsView1.FindControl("FileUpload2");
            if (FileUpload1.HasFile)
            {
                string ruta = Server.MapPath("~/imagesAuto/");

                string ext = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();

                string[] extensiones = { ".jpg", ".gif", ".png" };

                bool valido = false;

                for (int x = 0; x < extensiones.Length; x++)
                {
                    if (extensiones[x].Equals(ext))
                    {
                        valido = true;
                        break;
                    }
                }
                //FileUpload1.PostedFile.

                if (valido)
                {
                    FileUpload1.SaveAs(ruta + FileUpload1.FileName);
                    txtFoto.Text = "/imagesAuto/" + FileUpload1.FileName;
                }
                else
                {
                }

            }
            else
            {
            }
        }


        protected void DDLPatente_TextChanged(object sender, EventArgs e)
        {
            TextBox txtPatente = (TextBox)DetailsView1.FindControl("txtPatente");
            DropDownList DDLPatente = (DropDownList)DetailsView1.FindControl("DDLPatente");
            txtPatente.Text = DDLPatente.Text;
        }

        protected void DDLPatente_PreRender(object sender, EventArgs e)
        {
            TextBox txtPatente = (TextBox)DetailsView1.FindControl("txtPatente");
            DropDownList DDLPatente = (DropDownList)DetailsView1.FindControl("DDLPatente");
            txtPatente.Text = DDLPatente.Text;
        }
    }
}