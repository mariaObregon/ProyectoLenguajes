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

        //   int  ultimaEntregadaID = int.Parse(Request.QueryString["UltimaEntregada"].ToString());
        // byte   estadoAnterior = byte.Parse(Request.QueryString["EstadoAnterior"].ToString());
            if (!IsPostBack) {

                int ultimaEntregadaID = int.Parse(Request.QueryString["UltimaEntregada"].ToString());
                byte estadoAnterior = byte.Parse(Request.QueryString["EstadoAnterior"].ToString());
                List<f_pedidosActivos_Result> dtt = lgp.MostrarPedidosActivos();
            Ordenes.DataSource = dtt;
            Ordenes.DataBind();

                if (ultimaEntregadaID == 0) {
                    Button1.Enabled = false;
                }
                else
                {
                    Button1.Enabled = true;
                }
            }
            
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
           }

        
        protected void Ordenes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Entregar") {

                int index;
                int idPedido;

                index = int.Parse(e.CommandArgument.ToString());
                idPedido = int.Parse(Ordenes.DataKeys[index].Value.ToString());
                byte estAnt = lgp.UltimoEstadoPedido(idPedido);

                lgp.ActualizarEstadoPedido(1, idPedido);
               
                Response.Redirect("ModuloCocina.aspx?UltimaEntregada="+idPedido+"&EstadoAnterior="+ estAnt);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //debe tomar la orden y ponerle el estado anterior
            int ultimaEntregadaID = int.Parse(Request.QueryString["UltimaEntregada"].ToString());
            byte estadoAnterior = byte.Parse(Request.QueryString["EstadoAnterior"].ToString());

            lgp.ActualizarEstadoPedido(estadoAnterior, ultimaEntregadaID);

            Response.Redirect("ModuloCocina.aspx?UltimaEntregada=0&EstadoAnterior=0");
        }
    }
}