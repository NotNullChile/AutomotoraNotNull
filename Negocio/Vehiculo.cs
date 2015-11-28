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
        public Vehiculo()
        {
            vehiculo = new Datos.AutomotoraTableAdapters.vehiculosTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert,true)]
        public int insertVehiculo(string patenteVehiculo, int numeroMotor, int numeroChasis, string modelo, string tipoVehiculo, string color, bool estado, int idCompra, string urlFoto)
        {
            return vehiculo.Insert(patenteVehiculo, numeroMotor, numeroChasis, modelo, tipoVehiculo, color, estado, idCompra, urlFoto);
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
        public Datos.Automotora.vehiculosDataTable showAll()
        {
            return vehiculo.GetData();
        }
    }
}
