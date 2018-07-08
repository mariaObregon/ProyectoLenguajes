using Entidad;
using Negocio;
using System;
using System.Collections.Generic;
using System.Drawing;
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

                alertarPedidos();
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

                   TimeSpan tiempo = TimeSpan.Parse((item.Cells[4]).Text);

                   double diferencia = DateTime.Now.Minute - tiempo.Minutes;
                   if (diferencia < 0)
                   {
                       lgp.ActualizarEstadoPedido(4, id);
                       e.Row.BackColor = Color.Coral;

                   }
                   else if (diferencia >=  0 && diferencia < 5) {
                       lgp.ActualizarEstadoPedido(2, id);
                       e.Row.BackColor = Color.DarkSeaGreen;

                   }
                   else if (diferencia >= 5 && diferencia < 10)
                   {
                       lgp.ActualizarEstadoPedido(3, id);
                       e.Row.BackColor = Color.Yellow;

                   }
                   else if (diferencia >= 10)
                   {
                       lgp.ActualizarEstadoPedido(4, id);
                       e.Row.BackColor = Color.Coral;

                   }
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

                Response.Redirect("ModuloCocina.aspx?UltimaEntregada=" + idPedido + "&EstadoAnterior=" + estAnt);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int ultimaEntregadaID = int.Parse(Request.QueryString["UltimaEntregada"].ToString());
            byte estadoAnterior = byte.Parse(Request.QueryString["EstadoAnterior"].ToString());

            lgp.ActualizarEstadoPedido(estadoAnterior, ultimaEntregadaID);

            Response.Redirect("ModuloCocina.aspx?UltimaEntregada=0&EstadoAnterior=0");
        }


        public void alertarPedidos() {
            if (lgp.ConteoPedidos() > 10) {
                Label2.Text = "Hay pedidos en espera";
            }
            else
            {
                Label2.Text = "";
            }
        }

        protected void Tiempo_Tick(object sender, EventArgs e)
        {
            List<f_pedidosActivos_Result> dtt = lgp.MostrarPedidosActivos();
            Ordenes.DataSource = dtt;
            Ordenes.DataBind();
        }
    }
}