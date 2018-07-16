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
    public partial class InsertarPlato : System.Web.UI.Page
    {
        LogicaPlato lp = new LogicaPlato();

        protected void Page_Load(object sender, EventArgs e)
        {
            Master.MenuVisible = true;
            lp.MaximoCaracteres(txtNombrePlato,50);
            lp.MaximoCaracteres(txtDescPlato, 50);
            

        }

        protected void ButGuardarPlato_Click(object sender, EventArgs e)
        {

            try {


                byte[] newB = lp.ConvertirImagenBinario(InsertarImagenPlato);

                lp.AgregarPlato(txtNombrePlato.Text, txtDescPlato.Text, txtPrecioPlato.Text, newB, lp.EstadoHabilitado(DropDownList1.SelectedValue));

                txtNombrePlato.Text = "";
                txtDescPlato.Text = "";
                txtPrecioPlato.Text = "";

                //String script = string.Format("MensajeNotificacion('{0}')", resultado);
                //ClientScript.RegisterStartupScript(this.GetType(), "key", script, true);

            }
            catch (ExcepcionNoCoincide ex) {

                String script = string.Format("MensajeError('{0}')", ex.Message);
                ClientScript.RegisterStartupScript(this.GetType(), "key", script, true);

            }





        }
    
    }
}