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

        protected void Page_Load(object sender, EventArgs e)
        {
            //Cargar todo mediante el id que viene de la otra pagina apenas cargue
            //Recibir el int mediante variable de ssesion que viene del otro lado

            plato = lp.BuscarPlatoId(Int32.Parse("16"));//Capturar  variable session viene plato id
            //txtModNombPlato.Text = plato[0].Nombre;
            lbNombrePlato.Text = plato[0].Nombre;
            //txtModPrePlato.Text = String.Concat(plato[0].Precio);
            lbPrecioPlato.Text = String.Concat(plato[0].Precio);
            //txtModDescPlato.Text = plato[0].Descripcion;
            lbDescPlato.Text = plato[0].Descripcion;
            //dropModHabPlato.Text = lp.PlatoHabilitado(plato[0].HabilitadoSN);
            imgPlatoDeta.ImageUrl = lp.RutaImagen(plato[0].Fotografia);
            imgPlatoDeta.DataBind();
            imgPlatoDeta.Visible = true;

        }
    }
}