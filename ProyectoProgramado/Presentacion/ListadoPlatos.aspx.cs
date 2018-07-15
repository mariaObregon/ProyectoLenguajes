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
    public partial class ListadoPlatos : System.Web.UI.Page
    {
        LogicaPedido lp = new LogicaPedido();
        List<OrdenCliente> listaOrdenes;


        protected void Page_Load(object sender, EventArgs e)
        {

            listaOrdenes = (List<OrdenCliente>)Session["ordenes"];

            if (listaOrdenes == null || listaOrdenes.Count <= 0) 
            {
                //Poner un msj de que no hay platos agregados a la lista para realizar el pedido
                String script = "No se cuenta con Platos en el carrito";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert", script, true);
            }
            else
            {
                List<String> lista = lp.ListaPedidoCliente(listaOrdenes);
                gridPlatosAgregados.DataSource = lista;
                gridPlatosAgregados.DataBind();
            }

        }

        protected void butConfirmarPedido_Click(object sender, EventArgs e)
        {
            //Variable Session[PartyID] en vez de hardcode
            lp.AgregarPedido("1");

            for (int i = 0; i < listaOrdenes.Count; i++)
            {
                lp.InsertarLineaPedido(listaOrdenes[i].platoID.PlatoID, lp.UltimoPedido(), (short)listaOrdenes[i].cantidad, listaOrdenes[i].platoID.Precio);
            }

            listaOrdenes = new List<OrdenCliente>();
            Session["ordenes"] = listaOrdenes;
            Response.Redirect("PrincipalLineaPedido.aspx");

        }

        protected void butPagPrincipal_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrincipalLineaPedido.aspx");
        }

        protected void butLimpCarrito_Click(object sender, EventArgs e)
        {

            listaOrdenes = new List<OrdenCliente>();
            Session["ordenes"] = listaOrdenes;
            Response.Redirect("PrincipalLineaPedido.aspx");

        }

        protected void gridPlatosAgregados_SelectedIndexChanged(object sender, EventArgs e)
        {
            //No se sie esto funciona
            //int numSeleccionado = gridPlatosAgregados.SelectedIndex;

            //lp.RetirarPlatoPedido(numSeleccionado,listaOrdenes);

            //Session["ordenes"] = listaOrdenes;
            //Response.Redirect("PrincipalLineaPedido.aspx");


        }

        protected void gridPlatosAgregados_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            int numSeleccionado = e.RowIndex;
                //gridPlatosAgregados.Rows[e.RowIndex];

            listaOrdenes = lp.RetirarPlatoPedido(numSeleccionado, listaOrdenes);

            Session["ordenes"] = listaOrdenes;
            Response.Redirect("PrincipalLineaPedido.aspx");


        }
    }
}