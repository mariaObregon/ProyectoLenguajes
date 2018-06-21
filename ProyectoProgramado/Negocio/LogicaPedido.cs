using Datos;
using Entidad;
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

        public List<f_pedidoCliente_Result> BusquedaPedidoClienteNombre(String nombre)
        {
            return dp.PedidoPorCliente(nombre);
        }

        public List<f_pedidoFecha_Result> BusquedaPedidoClienteFecha(String fechaUno, String fechaDos)
        {
            return dp.PedidoPorFecha(DateTime.Parse(fechaUno), DateTime.Parse(fechaDos));
        }

        public List<f_pedidoEstado_Result> BusquedaPedidoClienteEstado(String estado)
        {
            return dp.PedidoPorEstado(estado);
        }

    /*    public List<v_Estado> MostrarEstados() {
            return dp.MostrarEstados();
        }*/
    }
}
