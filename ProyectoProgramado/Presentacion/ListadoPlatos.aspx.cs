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

        protected void Page_Load(object sender, EventArgs e)
        {
            carrito = (List<f_buscarPlatoID_Result>)Session["carrito"];

            if (carrito == null)
            {
                //Poner un msj de que no hay platos agregados a la lista para realizar el pedido
                String script = "No se cuenta con Platos en el carrito";
               // ScriptManager.RegisterStartupScript(this,type,);
            }
            else
            {
                gridPlatosAgregados.DataSource = carrito;
                gridPlatosAgregados.DataBind();
            }

        }
    }
}