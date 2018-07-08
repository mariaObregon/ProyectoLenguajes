using Entidad;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion.ModificarClienteUsuario
{
    public partial class PrincipalModificar : System.Web.UI.Page
    {
        LogicaGeneral lg = new LogicaGeneral();
        LogicaCliente lc = new LogicaCliente();
        LogicaUsuario lu = new LogicaUsuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            FillDataGrid();
            if (!IsPostBack)
            {

                ListaTipoDireccion();
                ListaTipoMecanismo();
                ListaUbicacion();

            }
        }



        private void ListaTipoDireccion()
        {

            DropDownListTipoDireccion.DataValueField = "TipoDireccionID";
            DropDownListTipoDireccion.DataTextField = "Descripcion";
            DropDownListTipoDireccion.DataSource = lg.CargarTipoDireccion();
            DropDownListTipoDireccion.DataBind();

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



        private void FillDataGrid()
        {

            String tipo = Request.QueryString["Valor"].ToString();
            GridViewLista.DataBind();

            if (TbNombre.Text.Trim().Equals(String.Empty))
            {
                switch (tipo)
                {
                    case "usuario":
                        GridViewLista.DataSource = lu.MostrarUsuarios();
                        break;

                    case "cliente":
                        GridViewLista.DataSource = lc.MostrarClientes();
                        break;
                    default:
                        break;
                }
            }

            else
            {

                switch (tipo)
                {
                    case "usuario":
                        GridViewLista.DataSource = lu.busquedaUsuarioNombre(TbNombre.Text);
                        break;

                    case "cliente":
                        GridViewLista.DataSource = lc.BusquedaClienteNombre(TbNombre.Text);
                        break;
                    default:
                        break;
                }
            }

            GridViewLista.DataBind();
        }


        protected void BtnFiltrar_Click(object sender, EventArgs e)
        {

            FillDataGrid();
            Clear();
        }

        protected void GridViewLista_SelectedIndexChanged(object sender, EventArgs e)
        {
            String StrPartyID = GridViewLista.SelectedRow.Cells[1].Text;

            System.Diagnostics.Debug.WriteLine(StrPartyID);

            TbUsuario.Text = StrPartyID;
            LLenarCampos();
        }

        protected void BtnModificarDireccion_Click(object sender, EventArgs e)
        {
            Byte ByteDireccionID = Byte.Parse(DropDownListTipoDireccion.SelectedValue);
            short ShGeoID = short.Parse(DropDownListUbicacion.SelectedValue);
            String StrLineaDireccion1 = TbLinea1.Text;
            String StrLineaDireccion2 = TbLinea2.Text;
            String StrLineaDireccion3 = TbLinea3.Text;
            String StrInstrucciones = TbInstrucciones.Text;
            Byte ByteTipoDireccionID = Byte.Parse(DropDownListTipoDireccion.SelectedValue);
            String StrPartyID = TbUsuario.Text;

            lg.ModificarDireccion(ByteDireccionID, ShGeoID, StrLineaDireccion1, StrLineaDireccion2, StrLineaDireccion3,
                StrInstrucciones, ByteTipoDireccionID, StrPartyID);

            FillDataGrid();

        }

        protected void BtnModificarContacto_Click(object sender, EventArgs e)
        {
            String StrValorMecanismo = TbContacto.Text;
            short ShTipoMecanismo = short.Parse(DropDownListContacto.SelectedValue);

            String StrPartyID = TbUsuario.Text;

            v_MecanismoContacto contacto = lg.ObtenerMecanismo(StrPartyID).Single();

            short ShMecanismoID = contacto.MecanismoID;

            lg.ModificarMecanismo(StrValorMecanismo, ShTipoMecanismo, ShMecanismoID, StrPartyID);

            FillDataGrid();


        }

        protected void BtnModificarDatosP_Click(object sender, EventArgs e)
        {
            String StrPrimerNombre = TbPrimerNombre.Text;
            String StrSegundoNombre = TbSegundoNombre.Text;
            String StrPrimerApellido = TbPrimerApellido.Text;
            String StrSegundoApellido = TbSegundoApellido.Text;
            String StrContraseña = TbPass.Text;
            String StrPartyID = TbUsuario.Text;

            lg.ModificarParty(StrPrimerNombre, StrSegundoNombre, StrPrimerApellido, StrSegundoApellido, StrContraseña
                , StrPartyID);

            FillDataGrid();
        }

        private void LLenarCampos()
        {

            v_Direccion direccion = lg.ObtenerDireccion(TbUsuario.Text).Single();
            v_MecanismoContacto contacto = lg.ObtenerMecanismo(TbUsuario.Text).Single();
            v_Party party = lg.ObtenerParty(TbUsuario.Text).Single();

            TbPrimerNombre.Text = party.Nombre;
            TbSegundoNombre.Text = party.SegundoNombre;
            TbPrimerApellido.Text = party.Apellido1;
            TbSegundoApellido.Text = party.Apellido2;

            TbContacto.Text = contacto.Valor;
            DropDownListContacto.SelectedValue = contacto.TipoMecanismoID.ToString();

            DropDownListTipoDireccion.SelectedValue = direccion.TipoDireccionID.ToString();
            DropDownListUbicacion.SelectedValue = direccion.GeoID.ToString();
            TbLinea1.Text = direccion.LineaDireccion1;
            TbLinea2.Text = direccion.LineaDireccion2;
            TbLinea3.Text = direccion.LineaDireccion3;
            TbInstrucciones.Text = direccion.Instrucciones;
        }

        protected void BtnContraseña_Click(object sender, EventArgs e)
        {
            String StrContraseña = TbPass.Text;
            String StrConfirmar = TbConfirmar.Text;
            String StrNueva = TbNuevoPass.Text;
            String StrPartyID = TbUsuario.Text;

            lg.CambiarContraseña(StrContraseña, StrNueva, StrConfirmar, StrPartyID);
        }

        private void Clear()
        {

            TbPrimerNombre.Text = "";
            TbSegundoNombre.Text = "";
            TbPrimerApellido.Text = "";
            TbSegundoApellido.Text = "";

            TbContacto.Text = "";
            ListaTipoDireccion();
            ListaTipoMecanismo();
            ListaUbicacion();
            TbLinea1.Text = "";
            TbLinea2.Text = "";
            TbLinea3.Text = "";
            TbUsuario.Text = "";
            TbInstrucciones.Text = "";
        }

    }
}