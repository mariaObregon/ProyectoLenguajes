using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class pruebas : System.Web.UI.Page
    {
        LogicaPlato lp = new LogicaPlato();
        LogicaUsuario lu = new LogicaUsuario();
        LogicaGeneral lg = new LogicaGeneral();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void butGuardarPlato_Click(object sender, EventArgs e)
        {

            byte[] newB = lp.ConvertirImagenBinario(InsertarImagenPlato);
            
            lp.AgregarPlato(txtNombrePlato.Text,txtDescPlato.Text,Decimal.Parse(txtPrecioPlato.Text),newB, lp.EstadoHabilitado(DropDownList1.SelectedValue));
          

        }

        protected void AgregarAdmin_Click(object sender, EventArgs e)
        {
            //lu.AgregarUsuarioAdmin("Pedro", null, "Arguedas", "Barrantes", "123", "Heredia", 1, "pedro.arguedas");
        }

        protected void AgregarCocina_Click(object sender, EventArgs e)
        {
           // lu.AgregarUsuarioCocina("Stefano", null, "Maietta", "Bolivar", "123", "San Jose", 1, "stefano.maietta");
        }

        protected void ModificarPlato_Click(object sender, EventArgs e)
        {
            lp.ModificarPlato(8, "Casado", "Arroz y pescado", 3200, null, true);
        }

        protected void ModUsuario_Click(object sender, EventArgs e)
        {
            lu.ModificarUsuario("stefano.maietta", 3);
        }

        protected void ModParty_Click(object sender, EventArgs e)
        {
            lg.ModificarParty("Pedro", "Jose", "Arguedas", "Barrantes", "258", "pedro.arguedas");
        }

        protected void ModMecanismo_Click(object sender, EventArgs e)
        {
            lg.ModificarMecanismo("San jose", "Heredia", 1, 16, "pedro.arguedas");
        }
    }
}