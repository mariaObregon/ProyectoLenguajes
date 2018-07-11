using Negocio;
using Entidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class PrincipalLineaPedido : System.Web.UI.Page
    {
        LogicaPlato lp = new LogicaPlato();
      //  List<f_buscarPlatoID_Result> platosCarrito = new List<f_buscarPlatoID_Result>();


        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                dropPlatosHab.Items.Clear();
                dropPlatosHab.DataSource = lp.PlatosHabilitados();
                dropPlatosHab.DataValueField = "PlatoID";
                dropPlatosHab.DataTextField = "NamePrice";
                dropPlatosHab.DataBind();

                ///Borrar probar

         /*       if (platosCarrito.Count <= 0)
                {
                    lbPrueba.Text = "Lista Nula";
                }
                else {

                    String f = "";
                    for (int i = 0; i < platosCarrito.Count; i++)
                    {
                        f += platosCarrito[i].Nombre + "\n";
                    }

                    lbPrueba.Text = f;

                }
                */

                ///// Borrar probar


            }

            /*
            dropPlatosHab.Items.Clear();
            dropPlatosHab.DataSource = lp.PlatosHabilitados();
            dropPlatosHab.DataValueField = "PlatoID";
            dropPlatosHab.DataTextField = "NamePrice";
            dropPlatosHab.DataBind();
            */

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Session["idPlato"] = dropPlatosHab.SelectedValue;
         /*   Session["carritoPlatos"] = platosCarrito; */
            Response.Redirect("DetallePlato.aspx");

        }

      /*  protected void imgButCarritoCliente_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ListadoPlatos.aspx");
        }*/
    }
}