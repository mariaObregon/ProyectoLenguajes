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

        public void BloquearCliente(String idCliente, bool bloquear)
        {
            using (PedidosExpressEntities datos = new PedidosExpressEntities())
            {
                datos.p_BloquearCliente(bloquear,idCliente);
            }
        }
    }
}
