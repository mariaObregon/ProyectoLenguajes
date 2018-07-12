using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidad;
using Negocio;

namespace Presentacion
{
    public partial class DetallePlato : System.Web.UI.Page
    {
        LogicaPlato lp = new LogicaPlato();
        List<f_buscarPlatoID_Result> plato;
        List<f_buscarPlatoID_Result> carrito;
        public const int maxPlatoPermitido = 100;//Cantidad Maxima Pueda Agregar el cliente respecto a un plato especifico
        int platoID;

        protected void Page_Load(object sender, EventArgs e)
        {

      //      if (!IsPostBack)
      //      {

                if ((List<f_buscarPlatoID_Result>)Session["carrito"] == null)
                {
                    carrito = new List<f_buscarPlatoID_Result>();
                    Session["carrito"] = carrito;//Borrar si no funciona
                }
                else
                {

                    carrito = (List<f_buscarPlatoID_Result>)Session["carrito"];
                    Session["carrito"] = carrito;//Borrar si no funciona
                }

                String idPlato = Session["idPlato"].ToString(); // Capturar error si viene null el id o es un string, no se caiga redireccione pagina errores
                platoID = Int32.Parse(idPlato);

                plato = lp.BuscarPlatoId(platoID);//Capturar  variable session viene plato id
                lbNombrePlato.Text = plato[0].Nombre;
                lbPrecioPlato.Text = String.Concat(plato[0].Precio);
                lbDescPlato.Text = plato[0].Descripcion;
                dropCantidadPlatos.DataSource = lp.CantidadPlato(maxPlatoPermitido);
                dropCantidadPlatos.DataBind();
                imgPlatoDeta.ImageUrl = lp.RutaImagen(plato[0].Fotografia);
                imgPlatoDeta.DataBind();
                imgPlatoDeta.Visible = true;

            }

      //  }

        protected void butRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrincipalLineaPedido.aspx");
        }

        protected void butAgregarPlato_Click(object sender, EventArgs e)
        {
            carrito.Add(lp.BuscarPlatoId(platoID)[0]);
           // Session["carrito"] = carrito;
            Response.Redirect("PrincipalLineaPedido.aspx");
        }
    }
}