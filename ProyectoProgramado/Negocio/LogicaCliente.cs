using Datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class LogicaCliente
    {
        DatosCliente dc = new DatosCliente();

        public String BloquearCliente(String idCliente, bool bloquear)
        {
            if (idCliente.Trim() != "" || idCliente != null)
            {
                 dc.BloquearCliente(idCliente, bloquear);
                if (bloquear == true)
                {
                    return "Cliente bloqueado con exito";
                }
                else
                {
                    return "Cliente desbloqueado con exito";
                }
            }
            else
            {
                return "Cliente inválido";
            }
        }

        public void AgregarCliente(String StrPrimerNombre, String StrSegundoNombre, String StrPrimerApellido, String StrSegundoApellido,
                   String StrContraseña, String StrValorMecanismo, short ShTipoMecanismo, String StrPartyID,
                   Boolean BoolHabilitado, short ShGeoID, String StrLineaDireccion1,
                   String StrLineaDireccion2, String StrLineaDireccion3,
                   String StrInstrucciones, Byte ByteTipoDireccionID)
        {
            dc.AgregarCliente(StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido,
                StrContraseña, StrValorMecanismo, ShTipoMecanismo, StrPartyID, BoolHabilitado , ShGeoID, StrLineaDireccion1,
                StrLineaDireccion2, StrLineaDireccion3, StrInstrucciones, ByteTipoDireccionID);
        }

    }
}
