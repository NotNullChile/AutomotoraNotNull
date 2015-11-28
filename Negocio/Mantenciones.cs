using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
namespace Negocio
{
    [System.ComponentModel.DataObject]
    public class Mantenciones
    {
        Datos.AutomotoraTableAdapters.mantencionesTableAdapter mantenciones;
        public Mantenciones()
        {
            mantenciones = new Datos.AutomotoraTableAdapters.mantencionesTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert, true)]
        public int insertMantenciones(int idMantenciones, string tipoMantencion, int? valor, int rutCliente, string patenteVehiculo)
        {
            return mantenciones.Insert(idMantenciones, tipoMantencion, valor,rutCliente,patenteVehiculo);
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
        public Datos.Automotora.mantencionesDataTable showAll()
        {
            return mantenciones.GetData();
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public string countMantenciones()
        {
            return mantenciones.countIdMantenciones().ToString();
        }
        
    }
}
