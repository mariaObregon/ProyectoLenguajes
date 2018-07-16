using Entidad;
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

            if (listaOrdenes == null || listaOrdenes.Count <= 0) 
            {
                String script = string.Format("MensajeError('{0}')", "No cuenta con ordenes en el carrito");
                ClientScript.RegisterStartupScript(this.GetType(), "key", script, true);
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


        }

        protected void butCambioPlato_Click(object sender, EventArgs e)
        {
            //Refrescar Para que se vea el cambio en cantidad una vez terminado despues de setear valores a falso

            numSeleccionadoModificar = (int)Session["index"];
            listaOrdenes = lp.ModificarPlatoPedido(numSeleccionadoModificar,listaOrdenes, Int32.Parse(dropCantidadModificar.SelectedValue));
            Session["ordenes"] = listaOrdenes;
            dropCantidadModificar.Visible = false;
            butCambioPlato.Visible = false;
        }

        protected void gridPlatosAgregados_RowEditing1(object sender, GridViewEditEventArgs e)
        {

            numSeleccionadoModificar = e.NewEditIndex;
            Session["index"] = numSeleccionadoModificar;
            dropCantidadModificar.Visible = true;
            butCambioPlato.Visible = true;

        }

        protected void gridPlatosAgregados_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //No hace nada solo ver que no se caiga X=xD
            for (int i = 0; i < 5; i++)
            {

            }
        }

        /*   protected void gridPlatosAgregados_RowCommand(object sender, GridViewCommandEventArgs e)
           {
               //No he probado mucho

               //GridViewRow row = (GridViewRow)((e.CommandSource).NamingContainer);

               // numSeleccionadoModificar = row.RowIndex;

               //GridViewRow row = (GridViewRow)(((Button)e.CommandSource).NamingContainer);
             //  numSeleccionadoModificar = row.RowIndex;

               dropCantidadModificar.Visible = true;
               butCambioPlato.Visible = true;

           }*/
    }
}