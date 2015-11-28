using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using System.Data;
namespace Negocio
{
    [System.ComponentModel.DataObject]
    public class usuario
    {
        Datos.AutomotoraTableAdapters.usuariosTableAdapter usuarios;
        public usuario()
        {
            usuarios = new Datos.AutomotoraTableAdapters.usuariosTableAdapter();
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
        public DataTable validarUser(string rutUsuario, string clave)
        {
            return usuarios.GetDataByUsuario(rutUsuario, clave);
        }
    }
}
