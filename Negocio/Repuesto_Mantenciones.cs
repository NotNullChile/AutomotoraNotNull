using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
namespace Negocio
{
    [System.ComponentModel.DataObject]
    public class Repuesto_Mantenciones
    {
        Datos.AutomotoraTableAdapters.repuestos_mantencionesTableAdapter respuestoMantenciones;
        public Repuesto_Mantenciones()
        {
            respuestoMantenciones = new Datos.AutomotoraTableAdapters.repuestos_mantencionesTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert, true)]
        public int insertRespuestoMantenciones(int idRepuesto,int idMantenciones)
        {
            return respuestoMantenciones.Insert(idRepuesto, idMantenciones);
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
        public Datos.Automotora.repuestos_mantencionesDataTable showAll()
        {
            return respuestoMantenciones.GetData();
        }
    }
}
