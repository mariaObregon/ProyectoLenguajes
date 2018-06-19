using Entidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class DatosCliente
    {
        PedidosExpressEntities datos = new PedidosExpressEntities();

        public void BloquearCliente(String idCliente, bool bloquear)
        {
                datos.p_BloquearCliente(bloquear,idCliente);
        }
    }
}
