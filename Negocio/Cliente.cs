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
        public Cliente()
        {
            cliente = new Datos.AutomotoraTableAdapters.clientesTableAdapter();
            usuario = new Datos.AutomotoraTableAdapters.usuariosTableAdapter();
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
    }
 }

