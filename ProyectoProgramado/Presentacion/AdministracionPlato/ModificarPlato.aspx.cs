using Entidad;
using Negocio;
using Negocio.Excepciones;
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
        List<f_buscarPlatoNombre_Result> plato1;
        int campo;
        int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            Master.MenuVisible = true;
            lp.MaximoCaracteres(txtBuscPLato, 50);
            lp.MaximoCaracteres(txtModNombPlato, 50);
            lp.MaximoCaracteres(txtModDescPlato, 50);
        }

        protected void ButBuscarPlato_Click(object sender, EventArgs e)
        {

            try {


                if (lp.idBusquedaNombre(txtBuscPLato.Text))
                {
                    plato = lp.BuscarPlatoId(Int32.Parse(txtBuscPLato.Text));

                    txtModNombPlato.Text = plato[0].Nombre;
                    txtModPrePlato.Text = String.Concat(plato[0].Precio);
                    txtModDescPlato.Text = plato[0].Descripcion;
                    dropModHabPlato.Text = lp.PlatoHabilitado(plato[0].HabilitadoSN);
                    imageShowModPlato.ImageUrl = lp.RutaImagen(plato[0].Fotografia);
                    imageShowModPlato.DataBind();
                    imageShowModPlato.Visible = true;

                    campo = 0;
                    Session["lugar"] = campo;

                }
                else
                {

                    plato1 = lp.BuscarPlatoNombre(txtBuscPLato.Text);

                    txtModNombPlato.Text = plato1[0].Nombre;
                    txtModPrePlato.Text = String.Concat(plato1[0].Precio);
                    txtModDescPlato.Text = plato1[0].Descripcion;
                    dropModHabPlato.Text = lp.PlatoHabilitado(plato1[0].HabilitadoSN);
                    imageShowModPlato.ImageUrl = lp.RutaImagen(plato1[0].Fotografia);
                    imageShowModPlato.DataBind();
                    imageShowModPlato.Visible = true;

                    campo = 1;
                    Session["lugar"] = campo;

                    id = plato1[0].PlatoID;
                    Session["idPlato"] = id;


                }


            }
            catch {

                String script = string.Format("alert('No se Encontro Plato revise parametros')");
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);

            }


            








        }

        protected void ButModifPlato_Click(object sender, EventArgs e)
        {

            try {

                byte[] newB = lp.ConvertirImagenBinario(fileUpModimgPlato);

                if ((int)Session["lugar"] == 0)
                {
                   String m = lp.ModificarPlato(Int32.Parse(txtBuscPLato.Text), txtModNombPlato.Text, txtModDescPlato.Text, txtModPrePlato.Text, newB, lp.EstadoHabilitado(dropModHabPlato.SelectedValue));
                    String script = string.Format("alert('" + m + "')");
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                }
                else
                {

                    String m = lp.ModificarPlato((int)Session["idPlato"], txtModNombPlato.Text, txtModDescPlato.Text, txtModPrePlato.Text, newB, lp.EstadoHabilitado(dropModHabPlato.SelectedValue));
                    String script = string.Format("alert('" + m + "')");
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);

                }

            }
            catch {

                String script = string.Format("alert('No se Modifico revise parametros')");
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
            }
           
        }
    

    
    }
}