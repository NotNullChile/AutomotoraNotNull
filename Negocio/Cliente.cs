using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
namespace Negocio
{
    [System.ComponentModel.DataObject]
    public class Cliente
    {
        Datos.AutomotoraTableAdapters.clientesTableAdapter cliente;
        Datos.AutomotoraTableAdapters.usuariosTableAdapter usuario;

        Datos.AutomotoraTableAdapters.ventaTableAdapter venta;
        Datos.AutomotoraTableAdapters.vehiculo_clienteTableAdapter vehiculoCliente;
        Datos.AutomotoraTableAdapters.mantencionesTableAdapter mantenciones;
        public Cliente()
        {
            cliente = new Datos.AutomotoraTableAdapters.clientesTableAdapter();
            usuario = new Datos.AutomotoraTableAdapters.usuariosTableAdapter();
            venta = new Datos.AutomotoraTableAdapters.ventaTableAdapter();
            vehiculoCliente = new Datos.AutomotoraTableAdapters.vehiculo_clienteTableAdapter();
            mantenciones = new Datos.AutomotoraTableAdapters.mantencionesTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert, true)]
        public int insertCliente(int rutCliente, string nombreCliente, DateTime fechaNacimiento, string direccion, string clave)
        {
            int res = 0;

            res = cliente.Insert(rutCliente, nombreCliente, fechaNacimiento, direccion);
            if(res == 1)
            {
                int? cero = 0;
                usuario.Insert(rutCliente.ToString(), clave, cero);              
            }
            return res;
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
        public Datos.Automotora.clientesDataTable showAll()
        {
            return cliente.GetData();
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,false)]
        public string nombreCliente(int rut)
        {
            return cliente.nombreCliente(rut);
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Delete, false)]
        public int deleteCliente(int Original_rutCliente)
        {
            int res1 = 0;
            int res2 = 0;
            int res3 = 0;
            int res4 = 0;

            res1 = venta.deleteCliente(Original_rutCliente);
            res2 = vehiculoCliente.deleteCliente(Original_rutCliente);
            res3 = mantenciones.deleteCliente(Original_rutCliente);
            if (res1 == 1 || res2 == 1 || res2 == 1 )
            {
                res4 = cliente.Delete(Original_rutCliente);
            }
            return res4;
        }
    }
 }

