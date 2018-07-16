using Datos;
using Entidad;
using Negocio.Excepciones;
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
                du.EliminarUsuario(idUsuario);
                return "Usuario eliminado";
            }
            else
            {
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
                   String StrSegundoApellido, String StrContraseña, String StrConfContraseña, String StrValorMecanismo,
                   short ShTipoMecanismo, String StrPartyID, short ShGeoID,
                    String StrLineaDireccion1, String StrLineaDireccion2, String StrLineaDireccion3,
                    String StrInstrucciones, Byte ByteTipoDireccionID)
        {

            if (du.BusquedaUsuarioId(StrPartyID).Any())
            {
                throw new ExcepcionExisteID();
            }
            else if (!StrContraseña.Equals(StrConfContraseña))
            {
                throw new ExcepcionNoCoincide();
            }
            else
            {
                du.AgregarUsuarioAdmin(StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido,
                StrContraseña, StrValorMecanismo, ShTipoMecanismo, StrPartyID, ShGeoID, StrLineaDireccion1,
                StrLineaDireccion2, StrLineaDireccion3, StrInstrucciones, ByteTipoDireccionID);
            }


        }

        public void AgregarUsuarioCocina(String StrPrimerNombre, String StrSegundoNombre, String StrPrimerApellido,
                  String StrSegundoApellido, String StrContraseña, String StrConfContraseña, String StrValorMecanismo,
                  short ShTipoMecanismo, String StrPartyID, short ShGeoID,
                    String StrLineaDireccion1, String StrLineaDireccion2, String StrLineaDireccion3,
                    String StrInstrucciones, Byte ByteTipoDireccionID)
        {

            if (du.BusquedaUsuarioId(StrPartyID).Any())
            {
                throw new ExcepcionExisteID();
            }
            else if (!StrContraseña.Equals(StrConfContraseña))
            {
                throw new ExcepcionNoCoincide();
            }
            else
            {
                du.AgregarUsuarioCocina(StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido, StrContraseña,
                StrValorMecanismo, ShTipoMecanismo, StrPartyID, ShGeoID, StrLineaDireccion1,
                StrLineaDireccion2, StrLineaDireccion3, StrInstrucciones, ByteTipoDireccionID);
            }
        }

        public void ModificarUsuario(String StrPartyID, Byte ShTipoID)
        {
            du.ModificarUsuario(StrPartyID, ShTipoID);
        }


        public List<f_mostrarUsuarios_Result> MostrarUsuarios()
        {
            return du.MostrarUsuarios();

        }

        public String ObtenerTipo(String StrPartyID)
        {

            return du.ObtenerTipo(StrPartyID);
        }



    }
}
