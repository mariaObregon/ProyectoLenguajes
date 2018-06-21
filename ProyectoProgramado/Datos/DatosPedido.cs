using Entidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class DatosPedido
    {
        PedidosExpressEntities datos = new PedidosExpressEntities();

        public void HabilitarPedido(byte estadoID, int idPedido)
        {
                datos.p_CambiarEstadoPedido(estadoID ,idPedido );
        }

        public List<f_pedidoFecha_Result> PedidoPorFecha(DateTime fechaInicioo, DateTime fechaFin)
        {
            return datos.f_pedidoFecha(fechaInicioo,fechaFin).ToList();
        }

        public List<f_pedidoCliente_Result> PedidoPorCliente(String nombreCliente)
        {
            return datos.f_pedidoCliente(nombreCliente).ToList();
        }

        public List<f_pedidoEstado_Result> PedidoPorEstado(int estadoPedido)
        {
            return datos.f_pedidoEstado(estadoPedido).ToList();
        }

        public List<v_Estado> MostrarEstados()
        {
            return datos.v_Estado.ToList();
        }
    }
}
