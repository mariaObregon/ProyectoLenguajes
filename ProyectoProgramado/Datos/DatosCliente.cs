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
                    String StrContraseña, String StrDireccion,  String StrPartyID, Boolean BoolHabilitado)
        {
            datos.p_agregarCliente(StrPartyID, StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, 
                StrSegundoApellido,null, BoolHabilitado, StrContraseña, StrDireccion);
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

        public void AgregarClienteFacebook(String StrPrimerNombre, String StrPartyID, String StrFacebookID)
        {

            datos.p_agregarCliente(StrPartyID, StrPrimerNombre, null, null, null, StrFacebookID, true, null, "Sin definir");
        }

        public Boolean EsClienteFacebook(String StrPartyID) {
            var party = from p in datos.Party
                        where p.PartyID == StrPartyID
                        select p.FacebookID;
            
               return party.Single() == null;
                    
                
            }

        }
    }

