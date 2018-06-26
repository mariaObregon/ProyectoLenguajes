using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion.CompartidoClienteUsuario
{
    public partial class MasterModificar : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            int opcion = Int32.Parse(Menu1.SelectedValue);
            switch (opcion)
            {
                case 1:
                    Response.Redirect("ModificarDatosPersonales.aspx");
                    break;

                default:
                    break;
            }
        }
    }
}