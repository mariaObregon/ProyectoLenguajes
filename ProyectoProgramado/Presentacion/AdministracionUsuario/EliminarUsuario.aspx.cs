using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion.AdministracionUsuario
{
    public partial class EliminarUsuario : System.Web.UI.Page
    {
        LogicaUsuario lu = new LogicaUsuario();

        protected void Page_Load(object sender, EventArgs e)
        {

            // if (!IsPostBack)
            //  {
            FillDataGrid();
            // }
            Master.MenuVisible = true;

        }

        protected void GridViewEliminar_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {


            String StrPartyID = GridViewEliminar.Rows[e.RowIndex].Cells[1].Text;

            System.Diagnostics.Debug.WriteLine(StrPartyID);

            lu.EliminarUsuario(StrPartyID);

            FillDataGrid();
            // Response.Redirect("~/AdministracionUsuario/EliminarUsuario.aspx");

        }



        private void FillDataGrid()
        {
            GridViewEliminar.DataBind();
            GridViewEliminar.DataSource = lu.MostrarUsuarios();
            GridViewEliminar.DataBind();

        }

        protected void BtnFiltrar_Click(object sender, EventArgs e)
        {
            GridViewEliminar.DataBind();
            GridViewEliminar.DataSource = lu.busquedaUsuarioNombre(TbNombre.Text);
            GridViewEliminar.DataBind();


        }

      
    }
}