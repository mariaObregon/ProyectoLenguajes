using Negocio;
using Negocio.Excepciones;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion.AdministracionCliente
{
    public partial class AgregarCliente : System.Web.UI.Page
    {
        LogicaCliente lc = new LogicaCliente();
        LogicaGeneral lg = new LogicaGeneral();

        protected void Page_Load(object sender, EventArgs e)
        {
/**
            if (!IsPostBack)
            {

                ListaTipoDireccion();
                ListaTipoMecanismo();
                ListaUbicacion();

            }

            Master.MenuVisible = true; // YA NO PERTENECE A ADMIN

            */

        }

        protected void BtnAgregarCliente_Click(object sender, EventArgs e)
        {
            String StrPrimerNombre = primerNombre.Value;
            String StrSegundoNombre = segundoNombre.Value;
            String StrPrimerApellido = primerApellido.Value;
            String StrSegundoApellido = segundoApellido.Value;
            String StrContraseña = password.Value;
            String StrConfContraseña = confirm_password.Value;
            String StrDireccion = direccion.Value;
            String StrPartyID = email.Value;

            try
            {
                

                System.Diagnostics.Debug.WriteLine("Entra a try");
                lc.AgregarCliente(StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido
                   , StrContraseña, StrConfContraseña, StrDireccion, StrPartyID, true);

                String  scriptExito = string.Format("MensajeCorrecto('{0}')", "Registro con éxito");
                ClientScript.RegisterStartupScript(this.GetType(), "key", scriptExito, true);

                Response.Redirect("../IndexCliente.aspx", false);

            }
            catch (ExcepcionExisteID ex)
            {
                System.Diagnostics.Debug.WriteLine("Entra a excepcion");

                String  script = string.Format("MensajeError('{0}')", ex.Message);
                ClientScript.RegisterStartupScript(this.GetType(), "key",script, true);
            }
            catch (ExcepcionNoCoincide ex)
            {

                String script = string.Format("MensajeError('{0}')", ex.Message);
                ClientScript.RegisterStartupScript(this.GetType(), "key", script, true);
            }
            

        }

        /**
       protected void BtnCancelar_Click(object sender, EventArgs e)
       {
           Response.Redirect("~/AdministracionCliente/PrincipalCliente.aspx");
       }

      
      private void ListaTipoDireccion()
      {

          DropDownListDireccion.DataValueField = "TipoDireccionID";
          DropDownListDireccion.DataTextField = "Descripcion";
          DropDownListDireccion.DataSource = lg.CargarTipoDireccion();
          DropDownListDireccion.DataBind();

      }


     private void ListaTipoMecanismo()
      {

          DropDownListContacto.DataValueField = "TipoMecanismoID";
          DropDownListContacto.DataTextField = "Descripcion";
          DropDownListContacto.DataSource = lg.CargarTipoMecanismo();
          DropDownListContacto.DataBind();

      }

      private void ListaUbicacion()
      {

          DropDownListUbicacion.DataValueField = "GeoID";
          DropDownListUbicacion.DataTextField = "DescripcionGeo";
          DropDownListUbicacion.DataSource = lg.CargarUbicacion();
          DropDownListUbicacion.DataBind();

      }
  */

    }
}