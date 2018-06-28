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
}