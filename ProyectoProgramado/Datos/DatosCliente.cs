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
            datos.p_BloquearCliente(bloquear, idCliente);
        }

        public void AgregarCliente(String StrPrimerNombre, String StrSegundoNombre, String StrPrimerApellido, String StrSegundoApellido,
                    String StrContraseña, String StrValorMecanismo, short ShTipoMecanismo, String StrPartyID, 
                    Boolean BoolHabilitado, short ShGeoID, String StrLineaDireccion1, 
                    String StrLineaDireccion2, String StrLineaDireccion3,
                    String StrInstrucciones, Byte ByteTipoDireccionID)
        {
            datos.p_agregarCliente(StrPartyID, StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido,
                StrContraseña, StrValorMecanismo, ShTipoMecanismo, BoolHabilitado, ShGeoID, StrLineaDireccion1,
                StrLineaDireccion2, StrLineaDireccion3, StrInstrucciones, ByteTipoDireccionID);
        }

        public List<f_mostrarClientes_Result> MostrarClientes() {

            return datos.f_mostrarClientes().ToList();
        }

        public List<f_buscarClienteID_Result> BusquedaClienteID(String StrIDCliente)
        {
            return datos.f_buscarClienteID(StrIDCliente).ToList();
        }

        public List<f_buscarClienteNombre_Result> BusquedaClienteNombre(String StrNombreCliente)
        {
            return datos.f_buscarClienteNombre(StrNombreCliente).ToList();
        }

    }
}
