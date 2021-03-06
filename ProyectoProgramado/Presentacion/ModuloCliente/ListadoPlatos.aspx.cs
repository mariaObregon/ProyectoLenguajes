﻿using Entidad;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion.ModuloCliente
{
    public partial class ListadoPlatos : System.Web.UI.Page
    {
        LogicaPedido lp = new LogicaPedido();
        LogicaPlato lpp = new LogicaPlato();
        List<OrdenCliente> listaOrdenes;
        int numSeleccionadoModificar;
        public const int maxPlatoPermitido = 100;

        protected void Page_Load(object sender, EventArgs e)
        {

            listaOrdenes = (List<OrdenCliente>)Session["ordenes"];

            lblPago.Text = lp.CancelarMonto(listaOrdenes).ToString();

            if (listaOrdenes == null || listaOrdenes.Count <= 0) 
            {
                String script = string.Format("alert('No se tiene ningun elemento en la lista')");
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta",script ,true);
            }
            else
            {
                List<String> lista = lp.ListaPedidoCliente(listaOrdenes);
                gridPlatosAgregados.DataSource = lista;
                gridPlatosAgregados.DataBind();
            }

            if (!IsPostBack)
            {

                dropCantidadModificar.DataSource = lpp.CantidadPlato(maxPlatoPermitido);
                dropCantidadModificar.DataBind();

            }

        }

        protected void butConfirmarPedido_Click(object sender, EventArgs e)
        {
            lp.AgregarPedido(Session["Party"].ToString());

            for (int i = 0; i < listaOrdenes.Count; i++)
            {
                lp.InsertarLineaPedido(listaOrdenes[i].platoID.PlatoID, lp.UltimoPedido(), (short)listaOrdenes[i].cantidad, listaOrdenes[i].platoID.Precio);
            }

            listaOrdenes = new List<OrdenCliente>();
            Session["ordenes"] = listaOrdenes;

            Response.Redirect("/ModuloCliente/PrincipalLineaPedido.aspx?nombre= &correo=" + Session["Party"].ToString() + "&id= ", false);

            String script = string.Format("alert('Pedido Confirmado')");
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);

        }

        protected void butPagPrincipal_Click(object sender, EventArgs e)
        {
            Response.Redirect("/ModuloCliente/PrincipalLineaPedido.aspx?nombre= &correo=" + Session["Party"].ToString() + "&id= ", false);
        }

        protected void butLimpCarrito_Click(object sender, EventArgs e)
        {

            listaOrdenes = new List<OrdenCliente>();
            Session["ordenes"] = listaOrdenes;


            Response.Redirect("/ModuloCliente/PrincipalLineaPedido.aspx?nombre= &correo=" + Session["Party"].ToString() + "&id= ", false);

            String script = string.Format("alert('Se elimino las ordenes del carrito')");
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);

        }

        protected void gridPlatosAgregados_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void gridPlatosAgregados_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            int numSeleccionado = e.RowIndex;

            listaOrdenes = lp.RetirarPlatoPedido(numSeleccionado, listaOrdenes);

            Session["ordenes"] = listaOrdenes;

            Response.Redirect("/ModuloCliente/PrincipalLineaPedido.aspx?nombre= &correo=" + Session["Party"].ToString() + "&id= ", false);

            String script = string.Format("alert('Se elimino la orden del carrito')");
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);

        }

        protected void butCambioPlato_Click(object sender, EventArgs e)
        {

            numSeleccionadoModificar = (int)Session["index"];
            listaOrdenes = lp.ModificarPlatoPedido(numSeleccionadoModificar,listaOrdenes, Int32.Parse(dropCantidadModificar.SelectedValue));
            Session["ordenes"] = listaOrdenes;
            dropCantidadModificar.Visible = false;
            butCambioPlato.Visible = false;
            lblNuevaCantidad.Visible = false;

            String script = string.Format("alert('Se altero la cantidad del plato en el pedido')");
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
        }

        protected void gridPlatosAgregados_RowEditing1(object sender, GridViewEditEventArgs e)
        {

            numSeleccionadoModificar = e.NewEditIndex;
            Session["index"] = numSeleccionadoModificar;
            dropCantidadModificar.Visible = true;
            butCambioPlato.Visible = true;
            lblNuevaCantidad.Visible = true;

        }

        protected void gridPlatosAgregados_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Response.Redirect("/ModuloCliente/ListadoPLato.aspx?nombre= &correo=" + Session["Party"].ToString() + "&id= ", false);
        }

    }
}