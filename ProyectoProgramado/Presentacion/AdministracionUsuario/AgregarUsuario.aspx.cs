using Negocio;
using Negocio.Excepciones;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion.AdministracionUsuario
{
    public partial class AgregarUsuario : System.Web.UI.Page
    {
        LogicaUsuario lu = new LogicaUsuario();
        LogicaGeneral lg = new LogicaGeneral();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                ListaTipoUsuario();
                ListaTipoDireccion();
                ListaTipoMecanismo();
                ListaUbicacion();

            }
            Master.MenuVisible = true;
        }

        protected void BtnAgregarUsuario_Click(object sender, EventArgs e)
        {
            try {
                String StrPrimerNombre = TbPrimerNombre.Value;
                String StrSegundoNombre = TbSegundoNombre.Value;
                String StrPrimerApellido = TbPrimerApellido.Value;
                String StrSegundoApellido = TbSegundoApellido.Value;
                String StrContraseña = TbPass.Value;
                String StrConfContraseña = TbConfirmarPass.Value;
                String StrValorMecanismo = TbContacto.Value;
                short ShMecanismoID = short.Parse(DropDownListContacto.SelectedValue);
                String StrPartyID = TbUsuario.Value;
                short ShGeoID = short.Parse(DropDownListUbicacion.SelectedValue);
                String StrLinea1 = TbLinea1.Value;
                String StrLinea2 = TbLinea2.Value;
                String StrLinea3 = TbLinea3.Value;
                String StrInstrucciones = TbInstrucciones.Value;
                byte ByteTipoDireccion = Byte.Parse(DropDownListDireccion.SelectedValue);
                String StrConfContrase = TbConfirmarPass.Value;
                if (DropDownListTipo.SelectedValue.Equals("2"))
                {
                    lu.AgregarUsuarioAdmin(StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido
                        , StrContraseña, StrConfContraseña, StrValorMecanismo, ShMecanismoID, StrPartyID, ShGeoID, StrLinea1, StrLinea2
                        , StrLinea3, StrInstrucciones, ByteTipoDireccion);

                }
                else if (DropDownListTipo.SelectedValue.Equals("3"))
                {
                    lu.AgregarUsuarioCocina(StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido
                        , StrContraseña, StrConfContraseña, StrValorMecanismo, ShMecanismoID, StrPartyID, ShGeoID, StrLinea1, StrLinea2
                        , StrLinea3, StrInstrucciones, ByteTipoDireccion);
                    Response.Redirect("/Modulos/ModuloSuperAdmin.aspx?tipo=superAdmin");
                }
            }
            catch (ExcepcionExisteID ex)
            {
                System.Diagnostics.Debug.WriteLine("Entra a excepcion");

                divMsj.Attributes.Add("style", "display:inline");
                msj.Text = ex.Message;
                //  String  script = string.Format("MensajeError('{0}')", ex.Message);
                //  ClientScript.RegisterStartupScript(this.GetType(), "key",script, true);
            }
            catch (ExcepcionNoCoincide ex)
            {
                divMsj.Attributes.Add("style", "display:inline");
                msj.Text = ex.Message;
                //String script = string.Format("MensajeError('{0}')", ex.Message);
                // ClientScript.RegisterStartupScript(this.GetType(), "key", script, true);
            }
        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Modulos/ModuloSuperAdmin.aspx");
        }

        private void ListaTipoUsuario()
        {

            DropDownListTipo.DataValueField = "TipoID";
            DropDownListTipo.DataTextField = "Descripcion";
            DropDownListTipo.DataSource = lg.CargarTipoUsuario();
            DropDownListTipo.DataBind();

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

        
    }
}