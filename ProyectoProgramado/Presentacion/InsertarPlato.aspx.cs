using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class InsertarPlato : System.Web.UI.Page
    {
        LogicaPlato lp = new LogicaPlato();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void butGuardarPlato_Click(object sender, EventArgs e)
        {
            byte[] newB = lp.ConvertirImagenBinario(InsertarImagenPlato);

            lp.AgregarPlato(txtNombrePlato.Text, txtDescPlato.Text, Decimal.Parse(txtPrecioPlato.Text), newB, lp.EstadoHabilitado(DropDownList1.SelectedValue));
        }
    }
}