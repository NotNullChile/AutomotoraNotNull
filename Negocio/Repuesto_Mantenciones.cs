using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
namespace Negocio
{
    [System.ComponentModel.DataObject]
    public class Repuesto_Mantenciones
    {
        Datos.AutomotoraTableAdapters.repuestos_mantencionesTableAdapter respuestoMantenciones;
        Datos.AutomotoraTableAdapters.repuestosTableAdapter repuestos;
        public Repuesto_Mantenciones()
        {
            respuestoMantenciones = new Datos.AutomotoraTableAdapters.repuestos_mantencionesTableAdapter();
            repuestos = new Datos.AutomotoraTableAdapters.repuestosTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert, true)]
        public int insertRespuestoMantenciones(int idRepuesto,int idMantenciones, int stock)
        {
            int? stockDisponible = repuestos.stockRepuesto(idRepuesto);
            int res = 0;
            if(stockDisponible >= stock)
            { 
            
            res  = respuestoMantenciones.Insert(idRepuesto, idMantenciones);
            if(res == 1)
            {
                repuestos.UpdateStockEnMantencionRepuesto(stock, idRepuesto);
            }
            
            }
            return res;
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
        public Datos.Automotora.repuestos_mantencionesDataTable showAll()
        {
            return respuestoMantenciones.GetData();
        }
    }
}
