using Entidad;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Datos
{


    public class DatosGeneral
    {

        PedidosExpressEntities datos = new PedidosExpressEntities();

        public void ModificarParty(String StrPrimerNombre, String StrSegundoNombre, String StrPrimerApellido,
                   String StrSegundoApellido, String StrContraseña, String StrPartyID)
        {
            datos.p_modificarParty(StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido, StrContraseña, StrPartyID);
        }

        public void ModificarMecanismo(String StrValorMecanismoNuevo, String StrValorMecanismo, short ShTipoMecanismo, short ShMecanismoID, String StrPartyID)
        {
            datos.p_modificarMecanismo(StrValorMecanismoNuevo, StrValorMecanismo, ShTipoMecanismo, ShMecanismoID, StrPartyID);
        }

        public void ModificarDireccion(Byte ByteDireccionID, short ShGeoID, String StrLineaDireccion1,
            String StrLineaDireccion2, String StrLineaDireccion3, String StrInstrucciones, 
            Byte ByteTipoDireccionID, String StrPartyID)


        {
            datos.p_modificarDireccion(ByteDireccionID, ShGeoID, StrLineaDireccion1, StrLineaDireccion2, 
                                       StrLineaDireccion3, StrInstrucciones, ByteTipoDireccionID, 
                                       StrPartyID);
        }

        public List<v_TipoMecanismo> CargarTipoMecanismo()
        {
            return datos.v_TipoMecanismo.ToList();
           
        }

        public List<v_TIpoDireccion> CargarTipoDireccion()
        {
            return datos.v_TIpoDireccion.ToList();

        }

        public List<v_Geo> CargarUbicacion() {

            return datos.v_Geo.ToList();
        }

        public List<v_TipoUsuario> CargarTipoUsuario()
        {
            var usuario = from u in datos.v_TipoUsuario
                          where u.TipoID != 1
                          select u;

            return usuario.ToList();
        }



    }
}
