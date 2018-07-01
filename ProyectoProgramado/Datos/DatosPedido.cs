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

        public List<f_pedidoEstado_Fecha_Result> PedidoPorEstadoYFecha(int estadoPedido, DateTime fechaInicioo, DateTime fechaFin)
        {
            return datos.f_pedidoEstado_Fecha(estadoPedido, fechaInicioo, fechaFin).ToList();
        }

        public List<f_pedidoEstado_Cliente_Result> PedidoPorEstadoYCliente(int estadoPedido, String nombreCliente )
        {
            return datos.f_pedidoEstado_Cliente(estadoPedido, nombreCliente).ToList();
        }


        public List<f_pedido_Fecha_Cliente_Result> PedidoPorClienteYFecha(String nombreCliente, DateTime fechaInicioo, DateTime fechaFin)
        {
            return datos.f_pedido_Fecha_Cliente(fechaInicioo, fechaFin, nombreCliente).ToList();
        }

        public List<f_pedidoEstado_Cliente_Fecha_Result> PedidoPorClienteYFechaYEstado(String nombreCliente, DateTime fechaInicioo, DateTime fechaFin, int estadoPedido)
        {
            return datos.f_pedidoEstado_Cliente_Fecha(estadoPedido, nombreCliente,fechaInicioo, fechaFin ).ToList();
        }

        public List<v_Estado> MostrarEstados()
        {
            return datos.v_Estado.ToList();
        }

        public List<f_LineasPedido_Result> LineasPedido(int idOrden) {
            return datos.f_LineasPedido(idOrden).ToList();
        }

        public List<f_MostrarPedidos_Result> MostrarPedidos() {
            return datos.f_MostrarPedidos().ToList();
        }

        public void CambiarEstadoPedido(byte estadoID, int pedidoID)
        {

            datos.p_CambiarEstadoPedido(estadoID, pedidoID);
        }

        public List<f_pedidosActivos_Result> PedidosActivos() {
            return datos.f_pedidosActivos().ToList();
        }
    }
}
