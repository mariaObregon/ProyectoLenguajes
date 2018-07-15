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
        public const int maxPlatoPermitido = 100;
        int platoID;
        List<OrdenCliente> listaOrdenes;

        protected void Page_Load(object sender, EventArgs e)
        {

            if ((List<OrdenCliente>)Session["ordenes"] == null)
            {
                listaOrdenes = new List<OrdenCliente>();
                Session["ordenes"] = listaOrdenes;

            }
            else
            {
                listaOrdenes = (List<OrdenCliente>)Session["ordenes"];
                Session["ordenes"] = listaOrdenes;


            }

            String idPlato = Session["idPlato"].ToString(); // Capturar error si viene null el id o es un string, no se caiga redireccione pagina errores
            platoID = Int32.Parse(idPlato);
            plato = lp.BuscarPlatoId(platoID);//Capturar  variable session viene plato id
            lbNombrePlato.Text = plato[0].Nombre;
            lbPrecioPlato.Text = String.Concat(plato[0].Precio);
            lbDescPlato.Text = plato[0].Descripcion;
            imgPlatoDeta.ImageUrl = lp.RutaImagen(plato[0].Fotografia);
            imgPlatoDeta.DataBind();
            imgPlatoDeta.Visible = true;


            if (!IsPostBack) {

                dropCantidadPlatos.DataSource = lp.CantidadPlato(maxPlatoPermitido);
                dropCantidadPlatos.DataBind();

            }


            }


        protected void butRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrincipalLineaPedido.aspx");
        }

        protected void butAgregarPlato_Click(object sender, EventArgs e)
        {
            OrdenCliente orden = new OrdenCliente();
            orden.platoID = lp.BuscarPlatoId(platoID)[0];
            orden.cantidad = Int32.Parse(dropCantidadPlatos.SelectedValue);
            listaOrdenes.Add(orden);
            Response.Redirect("PrincipalLineaPedido.aspx");
        }
    }
}