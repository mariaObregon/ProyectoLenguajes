using Negocio;
using System;

namespace Presentacion.AdministracionCliente
{
    public partial class BloqueoCliente : System.Web.UI.Page
    {
        LogicaCliente lc = new LogicaCliente();

        private Boolean habilitar;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                FillDataGrid();
            }

            Master.MenuVisible = true;
        }

        protected void GridViewBloqueo_SelectedIndexChanged(object sender, EventArgs e)
        {

            String StrPartyID = GridViewBloqueo.SelectedRow.Cells[1].Text;

            System.Diagnostics.Debug.WriteLine(StrPartyID);

            TbUsuario.Text = StrPartyID;

        }

        private void FillDataGrid()
        {

            GridViewBloqueo.DataBind();
            if (TbNombre.Text.Trim().Equals(String.Empty))
            {
                GridViewBloqueo.DataSource = lc.MostrarClientes();
            }
            else
            {
                GridViewBloqueo.DataSource = lc.BusquedaClienteNombre(TbNombre.Text);
            }

            GridViewBloqueo.DataBind();


        }

        protected void BtnFiltrar_Click(object sender, EventArgs e)
        {
            GridViewBloqueo.DataBind();
            if (TbNombre.Text.Trim().Equals(""))
            {
                GridViewBloqueo.DataSource = lc.MostrarClientes();
            }
            else {
                GridViewBloqueo.DataSource = lc.BusquedaClienteNombre(TbNombre.Text);
            }
            GridViewBloqueo.DataBind();

            TbUsuario.Text = "";
        }

        protected void BtnHabilitar_Click(object sender, EventArgs e)
        {
            habilitar = true;
            HabilitarDeshabiliar(TbUsuario.Text);

        }

        protected void BtnDeshabilitar_Click(object sender, EventArgs e)
        {
            habilitar = false;
            HabilitarDeshabiliar(TbUsuario.Text);
            FillDataGrid();

        }

        private void HabilitarDeshabiliar(String StrPartyID)
        {
            System.Diagnostics.Debug.WriteLine(StrPartyID + "Deshabilitar");

            lc.BloquearCliente(StrPartyID, habilitar);
            FillDataGrid();

        }        
    }
}