using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
namespace Negocio
{
    [System.ComponentModel.DataObject]
    public class Venta
    {
        Datos.AutomotoraTableAdapters.ventaTableAdapter venta;
        public Venta()
        {
            venta = new Datos.AutomotoraTableAdapters.ventaTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert, true)]
        public int insertVentaVehiculo(int idVenta, int idCliente,string patenteVehiculo, int valorVenta, DateTime fechaVenta)
        {
            return venta.Insert(idVenta, idCliente, patenteVehiculo, valorVenta, fechaVenta);
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
        public Datos.Automotora.ventaDataTable showAll()
        {
            return venta.GetData();
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,false)]
        public string countVenta()
        {
            return venta.countIdVenta().ToString();
        }
    }
}
