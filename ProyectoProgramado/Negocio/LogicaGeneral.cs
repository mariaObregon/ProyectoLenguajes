﻿using Datos;
using System;

namespace Negocio
{
    public class LogicaGeneral
       
    {
        DatosGeneral dg = new DatosGeneral();

        public void ModificarParty(String StrPrimerNombre, String StrSegundoNombre, String StrPrimerApellido,
                   String StrSegundoApellido, String StrContraseña, String StrPartyID)
        {
            dg.ModificarParty(StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido, StrContraseña, StrPartyID);
        }

        public void ModificarMecanismo(String StrValorMecanismoNuevo, String StrValorMecanismo, short ShTipoMecanismo, short ShMecanismoID, String StrPartyID)
        {
            dg.ModificarMecanismo(StrValorMecanismoNuevo, StrValorMecanismo, ShTipoMecanismo, ShMecanismoID, StrPartyID);
        }

        public void ModificarDireccion(Byte ByteDireccionID, short ShGeoID, String StrLineaDireccion1,
            String StrLineaDireccion2, String StrLineaDireccion3, String StrInstrucciones,
            Byte ByteTipoDireccionID, String StrPartyID)


        {
            dg.ModificarDireccion(ByteDireccionID, ShGeoID, StrLineaDireccion1, StrLineaDireccion2,
                                       StrLineaDireccion3, StrInstrucciones, ByteTipoDireccionID,
                                       StrPartyID);
        }
    }
}