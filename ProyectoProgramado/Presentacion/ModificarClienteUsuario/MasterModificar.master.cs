using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion.ModificarClienteUsuario
{
    public partial class MasterModificar : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void TreeViewModificar_SelectedNodeChanged(object sender, EventArgs e)
        {
            int opcion = Int32.Parse(TreeViewModificar.SelectedValue);

            switch (opcion)
            {

                case 0:
                    Response.Redirect("~/ModificarClienteUsuario/ModificarDatosPersonales.aspx");
                    break;

                case 1:
                    Response.Redirect("~/ModificarClienteUsuario/PrincipalModificar.aspx");
                    break;
                case 2:
                    Response.Redirect("~/ModificarClienteUsuario/AgregarDireccion.aspx");
                    break;
                case 3:
                    Response.Redirect("~/ModificarClienteUsuario/ModificarDireccion.aspx");
                    break;
                case 4:
                    Response.Redirect("~/ModificarClienteUsuario/PrincipalModificar.aspx");
                    break;
                case 5:
                    Response.Redirect("~/ModificarClienteUsuario/AgregarContacto.aspx");
                    break;

                case 6:
                    Response.Redirect("~/ModificarClienteUsuario/ModificarContacto.aspx");
                    break;
                default:
                    break;
            }

        }
    }
}