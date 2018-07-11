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

        public void ModificarMecanismo( String StrValorMecanismo, short ShTipoMecanismo, short ShMecanismoID, String StrPartyID)
        {
            datos.p_modificarMecanismo( StrValorMecanismo, ShTipoMecanismo, ShMecanismoID, StrPartyID);
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

        public List<v_Party> ObtenerParty(String StrPartyID) {

            var party = from p in datos.v_Party
                        where p.PartyID == StrPartyID
                        select p;


            return party.ToList();
        }

        public List<v_MecanismoContacto> ObtenerMecanismo(String StrPartyID)
        {
            var contacto = from c in datos.v_MecanismoContacto
                           where c.PartyID == StrPartyID
                           select c;
            return contacto.ToList();
        }

        public List<v_Direccion> ObtenerDireccion(String StrPartyID)
        {

            var direccion = from d in datos.v_Direccion
                            where d.PartyID == StrPartyID
                            select d;

            return direccion.ToList();
        }

        public void CambiarContraseña(String StrNuevoPass, String StrPartyID) {

            datos.p_cambiarContraseña(StrPartyID, StrNuevoPass);

        }

        public String  ObtenerContraseña(String StrPartyID) {

            var party = from p in datos.v_Party
                        where p.PartyID == StrPartyID
                        select p.Contraseña;


            return party.ToString();

        }

    }
}
