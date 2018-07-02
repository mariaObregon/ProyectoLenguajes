using Negocio;
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

            if (!IsPostBack)
            {
                
                ListaTipoDireccion();
                ListaTipoMecanismo();
                ListaUbicacion();

            }

        }

        protected void BtnAgregarCliente_Click(object sender, EventArgs e)
        {
            String StrPrimerNombre = TbPrimerNombre.Text;
            String StrSegundoNombre = TbSegundoNombre.Text;
            String StrPrimerApellido = TbPrimerApellido.Text;
            String StrSegundoApellido = TbSegundoApellido.Text;
            String StrContraseña = TbPass.Text;
            String StrConfContraseña = TbConfirmarPass.Text;
            String StrValorMecanismo = TbContacto.Text;
            short ShMecanismoID = short.Parse(DropDownListContacto.SelectedValue);
            String StrPartyID = TbUsuario.Text;
            short ShGeoID = short.Parse(DropDownListUbicacion.SelectedValue);
            String StrLinea1 = TbLinea1.Text;
            String StrLinea2 = TbLinea2.Text;
            String StrLinea3 = TbLinea3.Text;
            String StrInstrucciones = TbInstrucciones.Text;
            byte ByteTipoDireccion = Byte.Parse(DropDownListDireccion.SelectedValue);

            lc.AgregarCliente(StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido
                   , StrContraseña, StrValorMecanismo, ShMecanismoID, StrPartyID, true, ShGeoID, StrLinea1, StrLinea2
                   , StrLinea3, StrInstrucciones, ByteTipoDireccion);

        }

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
    }
}