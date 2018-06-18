using Datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class LogicaPedido
    {
        DatosPedido dp = new DatosPedido();

        public String CambiarEstadoPedido(byte estadoID, int idPedido)
        {
            if (estadoID > 0 && idPedido > 0)
            {
                dp.HabilitarPedido(estadoID, idPedido);
                return "Estado cambiado con exito";
            }
            else
            {
                return "Estado o pedido no válidos";
            }
                
        }
    }
}
