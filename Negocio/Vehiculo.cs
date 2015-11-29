using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
namespace Negocio
{
    [System.ComponentModel.DataObject]
    public class Vehiculo
    {
        Datos.AutomotoraTableAdapters.vehiculosTableAdapter vehiculo;
        Datos.AutomotoraTableAdapters.vehiculo_clienteTableAdapter vehiculoCliente;
        public Vehiculo()
        {
            vehiculo = new Datos.AutomotoraTableAdapters.vehiculosTableAdapter();
            vehiculoCliente = new Datos.AutomotoraTableAdapters.vehiculo_clienteTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert,true)]
        public int insertVehiculo(string patenteVehiculo, int numeroMotor, int numeroChasis, string modelo, string tipoVehiculo, string color, bool estado, int idCompra, string urlFoto, int idCliente)
        {
            int res = 0;
            res= vehiculo.Insert(patenteVehiculo, numeroMotor, numeroChasis, modelo, tipoVehiculo, color, estado, idCompra, urlFoto);
            if(res == 1)
            {
                vehiculoCliente.Insert(idCliente, patenteVehiculo);
            }
            return res;
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
        public Datos.Automotora.vehiculosDataTable showAll()
        {
            return vehiculo.GetData();
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public Datos.Automotora.vehiculosDataTable ListadoVehiculoParaVender()
        {
            return vehiculo.GetDataByListadoVehiculo();
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public Datos.Automotora.vehiculosDataTable Patente(string patente)
        {
            return vehiculo.GetDataByPatente(patente);
        }
    }
}
