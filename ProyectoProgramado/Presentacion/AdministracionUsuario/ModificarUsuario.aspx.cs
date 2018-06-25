using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class ModificarClienteUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

            DeshabilitarPaneles();
            int opcion = int.Parse(Menu1.SelectedValue);

            switch (opcion)
            {
              

                case 0:
                    PanelDatosPersonales.Visible = true;
                    break;
            
                case 2:
                    PanelAgregarDireccion.Visible = true;
                    break;

                case 3:
                    PanelModificarDireccion.Visible = true;
                    break;

                case 5:
                    PanelAgregarContacto.Visible = true;
                    break;
                case 6:
                    PanelModificarContacto.Visible = true;
                    break;

                default:
                    break;
            }


        }

        private void DeshabilitarPaneles() {
            PanelAgregarContacto.Visible = false;
            PanelAgregarDireccion.Visible = false;
            PanelDatosPersonales.Visible = false;
            PanelModificarContacto.Visible = false;
            PanelModificarDireccion.Visible = false;
           
        }

        protected void ChangePasswordPushButton_Click(object sender, EventArgs e)
        {

        }

        protected void CancelPushButton_Click(object sender, EventArgs e)
        {

        }
    }
}