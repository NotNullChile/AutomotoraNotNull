using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using System.Data.SqlClient;
namespace Negocio
{
    [System.ComponentModel.DataObject]
    public class Compra
    {
        public Datos.AutomotoraTableAdapters.compraTableAdapter compra;
        public Compra()
        {
            compra = new Datos.AutomotoraTableAdapters.compraTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert,true)]
        public int insertCompra(int idCompra, string proveedor, int? valorVehiculo, DateTime? fechaCompra)
        {
            try
            {
                return compra.Insert(idCompra, proveedor, valorVehiculo, fechaCompra);
            }
            catch(SqlException e)
            {
                return e.Number;               
            }
            catch(Exception ex)
            {
                return ex.HResult;
            }

           
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
        public Datos.Automotora.compraDataTable showAll()
        {
            return compra.GetData();
        }
    }
}
