using Datos;
using Entidad;
using Negocio.Excepciones;
using System;
using System.Collections.Generic;

namespace Negocio
{
    public class LogicaGeneral

    {
        DatosGeneral dg = new DatosGeneral();

        public void ModificarParty(String StrPrimerNombre, String StrSegundoNombre, String StrPrimerApellido,
                   String StrSegundoApellido, String StrPartyID)
        {
            if (StrPrimerNombre.Trim().Equals("") || StrPrimerNombre == null)
            {

                throw new ExcepcionCampoVacio();
            }
            else
            {
                dg.ModificarParty(StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido, StrPartyID);
            }
        }

        public void ModificarMecanismo(String StrValorMecanismo, short ShTipoMecanismo, short ShMecanismoID, String StrPartyID)
        {
            if (StrValorMecanismo.Trim().Equals("") || StrValorMecanismo == null) {
                StrValorMecanismo = "Sin definir";
            }
            dg.ModificarMecanismo(StrValorMecanismo, ShTipoMecanismo, ShMecanismoID, StrPartyID);
        }

        public void ModificarDireccion(Byte ByteDireccionID, short ShGeoID, String StrLineaDireccion1,
            String StrLineaDireccion2, String StrLineaDireccion3, String StrInstrucciones,
            Byte ByteTipoDireccionID, String StrPartyID)


        {
            if (StrLineaDireccion1.Trim().Equals("") || StrLineaDireccion1 == null)
            {
                throw new ExcepcionCampoVacio();
            }
            else
            {
                dg.ModificarDireccion(ByteDireccionID, ShGeoID, StrLineaDireccion1, StrLineaDireccion2,
                                       StrLineaDireccion3, StrInstrucciones, ByteTipoDireccionID,
                                       StrPartyID);

            }
        }


        public List<v_TipoMecanismo> CargarTipoMecanismo()
        {
            return dg.CargarTipoMecanismo();

        }

        public List<v_TIpoDireccion> CargarTipoDireccion()
        {
            return dg.CargarTipoDireccion();

        }


        public List<v_Geo> CargarUbicacion()
        {

            return dg.CargarUbicacion();
        }

        public List<v_TipoUsuario> CargarTipoUsuario()
        {
            return dg.CargarTipoUsuario();
        }


        public List<v_Party> ObtenerParty(String StrPartyID)
        {

            return dg.ObtenerParty(StrPartyID);
        }

        public List<v_MecanismoContacto> ObtenerMecanismo(String StrPartyID)
        {

            return dg.ObtenerMecanismo(StrPartyID);
        }

        public List<v_Direccion> ObtenerDireccion(String StrPartyID)
        {


            return dg.ObtenerDireccion(StrPartyID);
        }


        public void CambiarContraseña(String StrAntiguoPass, String StrNuevoPass, String StrConfirmar, String StrPartyID)
        {
            // validar con obtener contraseña
            if (!StrNuevoPass.Equals(StrConfirmar))
            {
                throw new ExcepcionNoCoincide();

            }
            else if (dg.ObtenerContraseña(StrPartyID).Equals(StrAntiguoPass))
            {

                throw new ExcepcionNoCoincide("Contraseña incorrecta");
            }
            else
            {
                dg.CambiarContraseña(StrPartyID, StrNuevoPass);
            }
        }
    }
}
