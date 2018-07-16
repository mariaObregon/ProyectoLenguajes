using Entidad;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion.AdministracionPlatos
{
    public partial class ModificarPlato : System.Web.UI.Page
    {
        LogicaPlato lp = new LogicaPlato();
        List<f_buscarPlatoID_Result> plato;

        protected void Page_Load(object sender, EventArgs e)
        {
            Master.MenuVisible = true;
        }

        protected void ButBuscarPlato_Click(object sender, EventArgs e)
        {
            plato = lp.BuscarPlatoId(Int32.Parse(txtBuscPLato.Text));
            txtModNombPlato.Text = plato[0].Nombre;
            txtModPrePlato.Text = String.Concat(plato[0].Precio);
            txtModDescPlato.Text = plato[0].Descripcion;
            dropModHabPlato.Text = lp.PlatoHabilitado(plato[0].HabilitadoSN);
            imageShowModPlato.ImageUrl = lp.RutaImagen(plato[0].Fotografia);
            imageShowModPlato.DataBind();
            imageShowModPlato.Visible = true;





        }

        protected void ButModifPlato_Click(object sender, EventArgs e)
        {
            byte[] newB = lp.ConvertirImagenBinario(fileUpModimgPlato);
            lp.ModificarPlato(Int32.Parse(txtBuscPLato.Text), txtModNombPlato.Text, txtModDescPlato.Text, Decimal.Parse(txtModPrePlato.Text), newB, lp.EstadoHabilitado(dropModHabPlato.SelectedValue));
        }
    

    
    }
}