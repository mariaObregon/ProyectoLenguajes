using Entidad;
using Negocio;
using System;
using System.Collections.Generic;

using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion.ModuloCliente
{
    public partial class ModificarCliente : System.Web.UI.Page
    {

        LogicaCliente lc = new LogicaCliente();
        LogicaGeneral lg = new LogicaGeneral();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (lc.EsClienteFacebook(Session["Party"].ToString()))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "key", "ocultar()", true);
               
            }

            if (!IsPostBack) { 
             LLenarCampos();
            }



            System.Diagnostics.Debug.WriteLine(Session["Party"].ToString());
           
            Master.MenuClienteVisible = true;
        }

    
        protected void BtnModificarDatos_Click(object sender, EventArgs e)
        {
            
            String StrPrimerNombre = primerNombre.Value;
            String StrSegundoNombre = segundoNombre.Value;
            String StrPrimerApellido = primerApellido.Value;
            String StrSegundoApellido = segundoApellido.Value;

            String StrPartyID = Session["Party"].ToString();

            System.Diagnostics.Debug.WriteLine(StrSegundoNombre + "En modificar campos");
            lg.ModificarParty(StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido, StrPartyID);

            String StrLineaDireccion1 = direccionMod.Value;

            v_Direccion direccion = lg.ObtenerDireccion(Session["Party"].ToString()).Single();
            Byte ByteDireccionID = direccion.DireccionID;
            short ShGeoID = direccion.GeoID;
           
            String StrLineaDireccion2 = null;
            String StrLineaDireccion3 = null;
            String StrInstrucciones = null;
            Byte ByteTipoDireccionID = direccion.TipoDireccionID;
           

            lg.ModificarDireccion(ByteDireccionID, ShGeoID, StrLineaDireccion1, StrLineaDireccion2, StrLineaDireccion3,
                StrInstrucciones, ByteTipoDireccionID, StrPartyID);

            String scriptExito = string.Format("MensajeCorrecto('{0}')", "Datos modificados con éxito");
            //Response.Redirect("/ModuloCliente/mientras.aspx?nombre= &correo=" + Session["Party"].ToString() + "&id= ", false);
            ClientScript.RegisterStartupScript(this.GetType(), "key", scriptExito, true);

        }

        protected void BtnModificarContraseña_Click(object sender, EventArgs e)
        {
        
           // ClientScript.RegisterStartupScript(this.GetType(), "key", "recargar()", true);
            String StrContraseña = anterior.Value;
            String StrConfirmar = confirm_password.Value;
            String StrNueva = password.Value;
            String StrPartyID = Session["Party"].ToString();
            System.Diagnostics.Debug.WriteLine(StrNueva + "En cambiar contrase");
            lg.CambiarContraseña(StrContraseña, StrNueva, StrConfirmar, StrPartyID);

            String scriptExito = string.Format("MensajeCorrecto('{0}')", "Contraseña modificada con éxito");
            ClientScript.RegisterStartupScript(this.GetType(), "key", scriptExito, true);
           // Response.Redirect("/ModuloCliente/mientras.aspx?nombre= &correo=" + Session["Party"].ToString() + "&id= ", false);
        }

        private void LLenarCampos()
        {
            String StrPartyID = Session["Party"].ToString();
            Entidad.v_Direccion direccion = lg.ObtenerDireccion(StrPartyID).Single();
            System.Diagnostics.Debug.WriteLine(StrPartyID + "En llenar campos");
            Entidad.v_Party party = lg.ObtenerParty(StrPartyID).Single();

            primerNombre.Value = party.Nombre;
            segundoNombre.Value = party.SegundoNombre;
            primerApellido.Value = party.Apellido1;
            segundoApellido.Value = party.Apellido2;
            direccionMod.Value = direccion.LineaDireccion1; 
            
        }

       

    }
}