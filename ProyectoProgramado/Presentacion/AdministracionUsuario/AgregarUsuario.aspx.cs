using Negocio;
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

            if (DropDownListTipo.SelectedValue.Equals("2"))
            {
                lu.AgregarUsuarioAdmin(StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido
                    , StrContraseña, StrValorMecanismo, ShMecanismoID, StrPartyID, ShGeoID, StrLinea1, StrLinea2
                    , StrLinea3, StrInstrucciones, ByteTipoDireccion);

            }
            else if (DropDownListTipo.SelectedValue.Equals("3"))
            {
                lu.AgregarUsuarioCocina(StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido
                    , StrContraseña, StrValorMecanismo, ShMecanismoID, StrPartyID, ShGeoID, StrLinea1, StrLinea2
                    , StrLinea3, StrInstrucciones, ByteTipoDireccion);
            }
        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdministracionUsuario/PrincipalUsuario.aspx");
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