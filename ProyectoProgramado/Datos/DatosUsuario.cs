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

        public void EliminarUsuario(String idUsuario)
        {
          
            datos.p_EliminarUsuario(idUsuario);
           
        }

        public List<f_buscarUsuarioID_Result> BusquedaUsuarioId(String usuarioId)
        {
            return datos.f_buscarUsuarioID(usuarioId).ToList();
        }

        public List<f_buscarUsuarioNombre_Result> BusquedaUsuarioNombre(String usuarioNombre)
        {
            return datos.f_buscarUsuarioNombre(usuarioNombre).ToList();
        }

        public void AgregarUsuarioAdmin(String StrPrimerNombre, String StrSegundoNombre, String StrPrimerApellido,
                    String StrSegundoApellido, String StrContraseña, String StrValorMecanismo, short ShTipoMecanismo,
                    String StrPartyID, short ShGeoID, String StrLineaDireccion1, String StrLineaDireccion2,
                    String StrLineaDireccion3, String StrInstrucciones, Byte ByteTipoDireccionID)
        {
            datos.p_agregarUsuarioAdmin(StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido,
                StrContraseña, StrValorMecanismo, ShTipoMecanismo, StrPartyID, ShGeoID, StrLineaDireccion1,
                StrLineaDireccion2, StrLineaDireccion3, StrInstrucciones, ByteTipoDireccionID);
        }

        public void AgregarUsuarioCocina(String StrPrimerNombre, String StrSegundoNombre, String StrPrimerApellido,
                   String StrSegundoApellido, String StrContraseña, String StrValorMecanismo,
                   short ShTipoMecanismo, String StrPartyID, short ShGeoID, String StrLineaDireccion1,
                   String StrLineaDireccion2, String StrLineaDireccion3, String StrInstrucciones,
                   Byte ByteTipoDireccionID)
        {
            datos.p_agregarUsuarioCocina(StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido,
                StrContraseña, StrValorMecanismo, ShTipoMecanismo, StrPartyID, ShGeoID, StrLineaDireccion1,
                StrLineaDireccion2, StrLineaDireccion3, StrInstrucciones, ByteTipoDireccionID);
        }

        public void ModificarUsuario(String StrPartyID, Byte ShTipoID)
        {
            datos.p_modificarUsuario(StrPartyID, ShTipoID);
        }

        public List<f_mostrarUsuarios_Result> MostrarUsuarios() {
            return datos.f_mostrarUsuarios().ToList();

        }

        public String ObtenerTipo(String StrPartyID) {

            var tipo = from u in datos.v_Usuario
                       join tu in datos.v_TipoUsuario
                       on u.TipoID equals tu.TipoID
                       where u.PartyID == StrPartyID
                       select tu.Descripcion;

            return tipo.ToString();           
        }

    }
  
}
