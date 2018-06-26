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

        public List<f_pedidoCliente_Result> BusquedaPedidoNombre(String nombre)
        {
            return dp.PedidoPorCliente(nombre);
        }

        public List<f_pedidoFecha_Result> BusquedaPedidoFecha(String fechaUno, String fechaDos)
        {
            return dp.PedidoPorFecha(DateTime.Parse(fechaUno), DateTime.Parse(fechaDos));
        }

        public List<f_pedidoEstado_Result> BusquedaPedidoEstado(int estado)
        {
            return dp.PedidoPorEstado(estado);
        }

        public List<f_pedidoEstado_Fecha_Result> BusquedaPedidoEstado_Fecha(int estado, DateTime fechaInicioo, DateTime fechaFin)
        {
            return dp.PedidoPorEstadoYFecha(estado, fechaInicioo, fechaFin);
        }

        public List<f_pedidoEstado_Cliente_Result> BusquedaPedidoEstado_Cliente(int estadoPedido, String nombreCliente)
        {
            return dp.PedidoPorEstadoYCliente(estadoPedido, nombreCliente);
        }

        public List<f_pedido_Fecha_Cliente_Result> BusquedaPedidoCliente_Fecha(String nombreCliente, DateTime fechaInicioo, DateTime fechaFin)
        {
            return dp.PedidoPorClienteYFecha(nombreCliente, fechaInicioo, fechaFin);
        }

        public List<f_pedidoEstado_Cliente_Fecha_Result> BusquedaPedidoCliente_Fecha_Estado(String nombreCliente, DateTime fechaInicioo, DateTime fechaFin, int estadoPedido)
        {
            return dp.PedidoPorClienteYFechaYEstado(nombreCliente, fechaInicioo, fechaFin, estadoPedido);
        }

        public List<v_Estado> MostrarEstados() {
            return dp.MostrarEstados();
        }

        public List<f_LineasPedido_Result> MostrarLineasPedido(int idOrden)
        {
            return dp.LineasPedido(idOrden);
        }

        public List<f_MostrarPedidos_Result> TodosLosPedidos()
        {
            return dp.MostrarPedidos();
        }
    }
}
