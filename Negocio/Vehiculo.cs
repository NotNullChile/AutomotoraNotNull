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
             try
            {
            int res = 0;
            res= vehiculo.Insert(patenteVehiculo, numeroMotor, numeroChasis, modelo, tipoVehiculo, color, estado, idCompra, urlFoto);
            if (idCliente > 0)
            {
                if (res == 1)
                {
                    vehiculoCliente.Insert(idCliente, patenteVehiculo);
                }
            }
            return res;
            }
             catch (Exception e)
             {
                 return 0;
             }
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
        public Datos.Automotora.vehiculosDataTable showAll()
        {
             try
            {
            return vehiculo.GetData();
                 }
            catch(Exception e)
            {
                return null;
            }
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public Datos.Automotora.vehiculosDataTable ListadoVehiculoParaVender()
        {
             try
            {
            return vehiculo.GetDataByListadoVehiculo();
                 }
            catch(Exception e)
            {
                return null;
            }
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public Datos.Automotora.vehiculosDataTable Patente(string patente)
        {
            try
            {
                return vehiculo.GetDataByPatente(patente);
            }
            catch(Exception e)
            {
                return null;
            }
            
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public Datos.Automotora.vehiculosDataTable listadoVehiculosParaVenderDDL()
        {
            try
            {
                
                return vehiculo.GetDataByListaAutoDDLParaVender();
            }
            catch (Exception e)
            {
                return null;
            }

        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public int updateCompraCliente(string urlFoto, string patente, string patenteVehiculo, string original_patenteVehiculo)
        {
            try
            {
                int res = 0;
                res = vehiculo.UpdateCompraCliente(urlFoto, patenteVehiculo);
                if (res == 1)
                {
                    vehiculoCliente.deletePatente(patenteVehiculo);
                }
                return res;
            }
            catch (Exception e)
            {
                return 0;
            }

        }
    }
}
