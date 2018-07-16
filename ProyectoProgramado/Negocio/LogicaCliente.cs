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
                   String StrContraseña, String StrConfContraseña, String StrDireccion, String StrPartyID, Boolean BoolHabilitado)
        {
            if (dc.BusquedaClienteID(StrPartyID).Any())
            {
                throw new ExcepcionExisteID();
            }
            else if (!StrContraseña.Equals(StrConfContraseña))
            {
                throw new ExcepcionNoCoincide();
            }
            else
            {
                dc.AgregarCliente(StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido, StrContraseña,
                    StrDireccion, StrPartyID, BoolHabilitado);
            }
        }

        public List<f_mostrarClientes_Result> MostrarClientes()
        {

            return dc.MostrarClientes();
        }

        public List<f_buscarClienteNombre_Result> BusquedaClienteNombre(String StrNombreCliente)
        {
            return dc.BusquedaClienteNombre(StrNombreCliente);
        }

        public List<f_buscarClienteID_Result> BusquedaClienteID(String StrIDCliente)
        {
            return dc.BusquedaClienteID(StrIDCliente);
        }

        public void AgregarClienteFacebook(String StrPrimerNombre, String StrPartyID, String StrFacebookID)
        {

            dc.AgregarClienteFacebook(StrPrimerNombre, StrPartyID, StrFacebookID);
        }

        public Boolean EsClienteFacebook(String StrPartyID)
        {
            return !dc.EsClienteFacebook(StrPartyID);


        }

    }
}
