using Entidad;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class DatosUsuario
    {

        PedidosExpressEntities datos = new PedidosExpressEntities();

        public String EliminarUsuario(String idUsuario)
        {
                ObjectParameter salida = new ObjectParameter("Retorno", typeof(String));
                datos.p_EliminarUsuario(idUsuario, salida);
                return salida.ToString();
        }

        public List<f_buscarUsuarioID_Result> BusquedaUsuarioId(String usuarioId)
        {
            return datos.f_buscarUsuarioID(usuarioId).ToList();
        }

        public List<f_buscarUsuarioNombre_Result> BusquedaUsuarioNombre(String usuarioNombre)
        {
            return datos.f_buscarUsuarioNombre(usuarioNombre).ToList();
        }
    }
}
