using System;
using System.Web.UI.WebControls;

namespace Presentacion.Menus
{
    public partial class MenuAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MenuAdministrador_MenuItemClick(object sender, MenuEventArgs e)
        {
            String opcion = MenuAdministrador.SelectedValue;

            switch (opcion)
            {

                case "Administrar usuarios":
                    Response.Redirect("~/AdministracionUsuario/PrincipalUsuario.aspx");
                    break;

                case "Agregar Usuario":
                    Response.Redirect("~/AdministracionUsuario/AgregarUsuario.aspx");

                    break;

                case "Modificar usuario":
                    Response.Redirect("~/ModificarClienteUsuario/PrincipalModificar.aspx?valor=usuario");

                    break;
                case "Eliminar usuario":
                    Response.Redirect("~/AdministracionUsuario/EliminarUsuario.aspx");

                    break;

                case "Buscar usuario":
                    Response.Redirect("~/BuscarUsuarioCliente/BuscarUsuarioCliente.aspx?valor=usuario");

                    break;

                case "Administrar clientes":
                    Response.Redirect("~/AdministracionCliente/PrincipalCliente.aspx");

                    break;

                case "Agregar cliente":
                    Response.Redirect("~/AdministracionCliente/AgregarCliente.aspx");

                    break;

                case "Modificar cliente":
                    Response.Redirect("~/ModificarClienteUsuario/PrincipalModificar.aspx?valor=cliente");

                    break;

                case "Habilitar cliente":
                    Response.Redirect("~/AdministracionCliente/BloqueoCliente.aspx");

                    break;

                case "Buscar cliente":
                    Response.Redirect("~/BuscarUsuarioCliente/BuscarUsuarioCliente.aspx?valor=cliente");

                    break;

                case "Administrar pedidos":
                    Response.Redirect("");

                    break;

                case "Mostrar pedidos":
                    Response.Redirect("");

                    break;

                case "Nuevo elemento":
                    Response.Redirect("");

                    break;

                case "Administrar platos":
                    Response.Redirect("");

                    break;

                case "Agregar plato":
                    Response.Redirect("");

                    break;

                case "Modificar plato":
                    Response.Redirect("");

                    break;

                case "Habilitar plato":
                    Response.Redirect("");

                    break;

                case "Buscar plato":
                    Response.Redirect("");

                    break;
                default:
                    break;
            }
        }
    }
}