using Entidad;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class ModuloCocina : System.Web.UI.Page
    {
        LogicaPedido lgp = new LogicaPedido();

        protected void Page_Load(object sender, EventArgs e)
        {
            List<f_pedidosActivos_Result> dt = lgp.MostrarPedidosActivos();
            Ordenes.DataSource = dt;
            Ordenes.DataBind();
        }

        protected void Ordenes_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            GridViewRow item;
            GridView gv2;
            int id;
            if ((e.Row.RowType == DataControlRowType.DataRow))
            {
                item = e.Row;
                id = int.Parse((item.Cells[0]).Text);
                gv2 = (GridView)e.Row.Cells[5].Controls[1];
                gv2.DataSource = lgp.MostrarLineasPedido(id);
                gv2.DataBind();
            }
        }

       
        protected void Ordenes_SelectedIndexChanged(object sender, EventArgs e)
        {
          //   int Celda = 0;
           //   Celda = int.Parse(this.Ordenes.SelectedRow.Cells[0].Text);
        }


        protected void Ordenes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Entregar") {

                int index;
                int idPedido;

                index = int.Parse(e.CommandArgument.ToString());
                idPedido = int.Parse(Ordenes.DataKeys[index].Value.ToString());

                lgp.ActualizarEstadoPedido(1, idPedido);

                Response.Redirect("ModuloCocina.aspx?UltimaEntregada"+idPedido);
            }
        }
    }
}