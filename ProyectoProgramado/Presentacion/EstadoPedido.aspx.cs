//using Entidad;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class EstadoPedido : System.Web.UI.Page
    {

        LogicaPedido lgp = new LogicaPedido();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
              List<f_MostrarPedidos_Result> dt = lgp.TodosLosPedidos();
            Linea.DataSource = dt;
            Linea.DataBind();  

            }
            
        }


        protected void Linea_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            byte idest;
           DropDownList estadd = new DropDownList();
            estadd = (DropDownList)Linea.Rows[e.RowIndex].FindControl("dpp");
            idest = byte.Parse(estadd.SelectedValue.ToString());
            int idPedido = int.Parse(Linea.DataKeys[e.RowIndex].Values[0].ToString());
            lgp.ActualizarEstadoPedido(idest, idPedido);

            Linea.EditIndex = -1;
            this.Linea.DataSource = lgp.TodosLosPedidos();
            this.Linea.DataBind();
        }

        protected void Linea_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
          
            this.Linea.EditIndex = e.NewEditIndex;
            this.Linea.DataSource = lgp.TodosLosPedidos();
            this.Linea.DataBind();

            

        }

        protected void Linea_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            Linea.EditIndex = -1;
            this.Linea.DataSource = lgp.TodosLosPedidos();
            this.Linea.DataBind();
        }

        protected void Linea_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}

/*

{
    if (e.Row.RowType == DataControlRowType.DataRow)
    {
        DropDownList ddl;

DataTable dt2 = LlenarTabla2();

// Celda 1 es donde esta el DropdownList

GridViewRow gvrow = (GridViewRow)e.Row.Cells[1].NamingContainer;

ddl = (DropDownList) gvrow.FindControl("DropDownList1");

ddl.ClearSelection();

        if (ddl != DBNull.Value)
        {
            ddl.DataSource = dt2;

            ddl.DataBind(); // Lleno el combo
            */