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
        public const int maxPlatoPermitido = 100;//Cantidad Maxima Pueda Agregar el cliente respecto a un plato especifico

        protected void Page_Load(object sender, EventArgs e)
        {
            //Cargar todo mediante el id que viene de la otra pagina apenas cargue
            //Recibir el int mediante variable de ssesion que viene del otro lado

            plato = lp.BuscarPlatoId(Int32.Parse("16"));//Capturar  variable session viene plato id
            lbNombrePlato.Text = plato[0].Nombre;
            lbPrecioPlato.Text = String.Concat(plato[0].Precio);
            lbDescPlato.Text = plato[0].Descripcion;
            dropCantidadPlatos.DataSource = lp.CantidadPlato(maxPlatoPermitido);
            dropCantidadPlatos.DataBind();
            imgPlatoDeta.ImageUrl = lp.RutaImagen(plato[0].Fotografia);
            imgPlatoDeta.DataBind();
            imgPlatoDeta.Visible = true;

        }
    }
}