using Datos;
using Entidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class LogicaUsuario
    {
        DatosUsuario du = new DatosUsuario();
        public String EliminarUsuario(String idUsuario)
        {
            if (idUsuario.Trim() != "" || idUsuario != null)
            {
                return du.EliminarUsuario(idUsuario);
            }
            else {
                return "Usuario inválido";
            }
        }

        public List<f_buscarUsuarioID_Result> busquedaUsuarioId(String idUsuario)
        {
            return du.BusquedaUsuarioId(idUsuario);
        }
        public List<f_buscarUsuarioNombre_Result> busquedaUsuarioNombre(String nombreUsuario)
        {
            return du.BusquedaUsuarioNombre(nombreUsuario);
        }
    }
}
