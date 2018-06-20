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

        public void AgregarUsuarioAdmin(String StrPrimerNombre, String StrSegundoNombre, String StrPrimerApellido,
                   String StrSegundoApellido, String StrContraseña, String StrValorMecanismo,
                   short ShTipoMecanismo, String StrPartyID)
        {
            du.AgregarUsuarioAdmin(StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido, StrContraseña, StrValorMecanismo, ShTipoMecanismo, StrPartyID);
        }

        public void AgregarUsuarioCocina(String StrPrimerNombre, String StrSegundoNombre, String StrPrimerApellido,
                  String StrSegundoApellido, String StrContraseña, String StrValorMecanismo,
                  short ShTipoMecanismo, String StrPartyID)
        {
            du.AgregarUsuarioCocina(StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido, StrContraseña, StrValorMecanismo, ShTipoMecanismo, StrPartyID);
        }

        public void ModificarUsuario(String StrPartyID, Byte ShTipoID)
        {
            du.ModificarUsuario(StrPartyID, ShTipoID);
        }

    }
}
