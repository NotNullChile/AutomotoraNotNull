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
        Datos.AutomotoraTableAdapters.vehiculosTableAdapter vehiculo;
        Datos.AutomotoraTableAdapters.vehiculo_clienteTableAdapter vehiculoCliente;
        public Venta()
        {
            venta = new Datos.AutomotoraTableAdapters.ventaTableAdapter();
            vehiculo = new Datos.AutomotoraTableAdapters.vehiculosTableAdapter();
            vehiculoCliente = new Datos.AutomotoraTableAdapters.vehiculo_clienteTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert, true)]
        public int insertVentaVehiculo(int idVenta, int idCliente,string patenteVehiculo, int valorVenta, DateTime fechaVenta)
        {
            int res = 0;
            res = venta.Insert(idVenta, idCliente, patenteVehiculo, valorVenta, fechaVenta);
            if (res == 1)
            {
                vehiculo.updateEstado(patenteVehiculo);
                vehiculoCliente.Insert(idCliente, patenteVehiculo);
            }
            return res;
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
