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
        List<f_buscarPlatoID_Result> carrito; // new List<f_buscarPlatoID_Result>();
        LogicaPedido lp = new LogicaPedido();

        protected void Page_Load(object sender, EventArgs e)
        {
            carrito = (List<f_buscarPlatoID_Result>)Session["carrito"];

            if (carrito == null || carrito.Count <= 0)
            {
                //Poner un msj de que no hay platos agregados a la lista para realizar el pedido
                //No funciona el msj :,(
                String script = "No se cuenta con Platos en el carrito";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert", script, true);
            }
            else
            {
                gridPlatosAgregados.DataSource = carrito;
                gridPlatosAgregados.DataBind();
            }

        }

        protected void butConfirmarPedido_Click(object sender, EventArgs e)
        {
            //Variable Session[PartyID] en vez de hardcode
            lp.AgregarPedido("1");

            for (int i = 0; i < carrito.Count; i++)
            {
                //Cambiar ese uno(1) x un valor que venga del dropDown correspondiente a la cantidad de ese plato que desea insertar
                lp.InsertarLineaPedido(carrito[i].PlatoID,lp.UltimoPedido(),1,carrito[i].Precio);
            }
            //***
            carrito = new List<f_buscarPlatoID_Result>();
            Session["carrito"] = carrito;//Borrar si no funciona
            //***
            Response.Redirect("PrincipalLineaPedido.aspx");

        }

        protected void butPagPrincipal_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrincipalLineaPedido.aspx");
        }
    }
}