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
        List<f_buscarPlatoID_Result> carrito;
        LogicaPedido lp = new LogicaPedido();
        List<OrdenCliente> listaOrdenes;


        protected void Page_Load(object sender, EventArgs e)
        {
            carrito = (List<f_buscarPlatoID_Result>)Session["carrito"];//-------------------

            listaOrdenes = (List<OrdenCliente>)Session["ordenes"];

            if (listaOrdenes == null || listaOrdenes.Count <= 0) //(carrito == null || carrito.Count <= 0)
            {
                //Poner un msj de que no hay platos agregados a la lista para realizar el pedido
                String script = "No se cuenta con Platos en el carrito";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert", script, true);
            }
            else
            {
                // gridPlatosAgregados.DataSource = carrito;------------------
                //Creo una lista mostrar solo para grid?
                List<String> lista = lp.ListaPedidoCliente(listaOrdenes);
                gridPlatosAgregados.DataSource = lista;
                // gridPlatosAgregados.DataSource = listaOrdenes;
                gridPlatosAgregados.DataBind();
            }

        }

        protected void butConfirmarPedido_Click(object sender, EventArgs e)
        {
            //Variable Session[PartyID] en vez de hardcode
            lp.AgregarPedido("1");

            for (int i = 0; i < listaOrdenes.Count; i++) //(int i = 0; i < carrito.Count; i++)
            {
                //Cambiar ese uno(1) x un valor que venga del dropDown correspondiente a la cantidad de ese plato que desea insertar
                //lp.InsertarLineaPedido(carrito[i].PlatoID,lp.UltimoPedido(),1,carrito[i].Precio);
                lp.InsertarLineaPedido(listaOrdenes[i].platoID.PlatoID, lp.UltimoPedido(), (short)listaOrdenes[i].cantidad, listaOrdenes[i].platoID.Precio);
            }

            //carrito = new List<f_buscarPlatoID_Result>(); ----------------
            //Session["carrito"] = carrito; -------------------
            listaOrdenes = new List<OrdenCliente>();
            Session["ordenes"] = listaOrdenes;
            Response.Redirect("PrincipalLineaPedido.aspx");

        }

        protected void butPagPrincipal_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrincipalLineaPedido.aspx");
        }
    }
}