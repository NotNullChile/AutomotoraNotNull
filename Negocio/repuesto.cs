using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
namespace Negocio
{
    [System.ComponentModel.DataObject]
    public class repuesto
    {
        Datos.AutomotoraTableAdapters.repuestosTableAdapter respuesto;
        public repuesto()
        {
            respuesto = new Datos.AutomotoraTableAdapters.repuestosTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert, true)]
        public int insertRespuesto(int idRepuesto,string nombreRepuesto, int stockRepuesto, int valorRepuesto)
        {
            return respuesto.Insert(idRepuesto, nombreRepuesto, stockRepuesto, valorRepuesto);
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
        public Datos.Automotora.repuestosDataTable showAll()
        {
            return respuesto.GetData();
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public string countIdRepuesto()
        {
            return respuesto.countRepuesto().ToString();
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public string stockRepuesto(int idRepuesto)
        {
            return respuesto.stockRepuesto(idRepuesto).ToString();
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update, true)]
        public int updateStock(int stock, int idRepuesto, int stockRepuesto, int original_idRepuesto)
        {
            return respuesto.UpdateStockRepuesto(stockRepuesto, original_idRepuesto);
           
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update, true)]
        public int UpdateStockEnMantencionRepuesto(int cantidad, int idRepuesto, int original_idRepuesto)
        {
            return respuesto.UpdateStockEnMantencionRepuesto(cantidad, idRepuesto);
            
        }
    }
}
