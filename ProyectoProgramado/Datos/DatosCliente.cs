using Entidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class DatosCliente
    {
        PedidosExpressEntities datos = new PedidosExpressEntities();

        public void BloquearCliente(String idCliente, bool bloquear)
        {
                datos.p_BloquearCliente(bloquear,idCliente);
        }

        public void AgregarCliente(String StrPrimerNombre, String StrSegundoNombre, String StrPrimerApellido,
                    String StrSegundoApellido, String StrContraseña, String StrValorMecanismo,
                    short ShTipoMecanismo, String StrPartyID, Boolean BoolHabilitado)
        {
            datos.p_agregarCliente(StrPartyID, StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido, StrContraseña, StrValorMecanismo, ShTipoMecanismo, BoolHabilitado);
        }
    }
}
