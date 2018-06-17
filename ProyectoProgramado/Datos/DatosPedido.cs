using Entidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    class DatosPedido
    {
        public void HabDesHabPlato(byte estadoID, int idPedido)
        {
            using (PedidosExpressEntities datos = new PedidosExpressEntities())
            {
                datos.p_CambiarEstadoPedido(estadoID ,idPedido );
            }
        }
    }
}
