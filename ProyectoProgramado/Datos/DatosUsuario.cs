using Entidad;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    class DatosUsuario
    {

        public String EliminarUsuario(String idUsuario)
        {
            using (PedidosExpressEntities datos = new PedidosExpressEntities())
            {

                ObjectParameter salida = new ObjectParameter("Retorno", typeof(String));
                datos.p_EliminarUsuario(idUsuario, salida);
                return salida.ToString();
            }
        }
    }
}
