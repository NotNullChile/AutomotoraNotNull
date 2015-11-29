using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
namespace Negocio
{
    [System.ComponentModel.DataObject]
    public class Vehiculo_Cliente
    {
        Datos.AutomotoraTableAdapters.vehiculo_clienteTableAdapter vehiculoCliente;
        public Vehiculo_Cliente()
        {
            vehiculoCliente = new Datos.AutomotoraTableAdapters.vehiculo_clienteTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert, true)]
        public int insertMantenciones(int rutCliente, string patenteVehiculo, int idCliente)
        {
            return vehiculoCliente.Insert(idCliente, patenteVehiculo);
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
        public Datos.Automotora.vehiculo_clienteDataTable showAll(int rut)
        {
            return vehiculoCliente.GetData(rut);
        }
        
    }
}
