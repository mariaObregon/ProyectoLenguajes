using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class Principal : System.Web.UI.MasterPage
    {
        LogicaUsuario lu = new LogicaUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void MenuAdministrador_MenuItemClick(object sender, MenuEventArgs e)
        {
            String opcion = MenuAdministrador.SelectedValue;
            String tipo = Request.QueryString["tipo"].ToString();
            
            switch (opcion)
            {
                case "Inicio":

                    
      
                    
                     if (tipo.Equals("admin"))
                    {
                        Response.Redirect("/Modulos/ModuloAdmin.aspx?tipo=admin");
                    }
                    else if (tipo.Equals("superAdmin"))
                    {
                        Response.Redirect("~/Modulos/ModuloSuperAdmin.aspx?tipo=superAdmin");
                    }
                    else {
                        Response.Redirect("~/Modulos/ModuloCocina.aspx?UltimaEntregada=0&EstadoAnterior=0");
                    }
                    break;

                case "Habilitar cliente":
                    Response.Redirect("~/AdministracionCliente/BloqueoCliente.aspx?tipo=" + tipo, false);

                    break;

                case "Buscar cliente":
                    Response.Redirect("~/BuscarUsuarioCliente/BuscarUsuarioCliente.aspx?valor=cliente&tipo=" + tipo, false);

                    break;



                case "Mostrar pedidos":
                    Response.Redirect("~/AdministracionPedido/AdministracionPedidos.aspx?tipo=" + tipo, false);

                    break;

                case "Cambiar estado":
                    Response.Redirect("~/AdministracionPedido/EstadoPedido.aspx?tipo=" + tipo, false);

                    break;



                case "Agregar plato":
                    Response.Redirect("~/AdministracionPlato/InsertarPlato.aspx?tipo=" + tipo, false);

                    break;

                case "Modificar plato":
                    Response.Redirect("~/AdministracionPlato/ModificarPlato.aspx?tipo=" + tipo, false);

                    break;

                default:
                    break;
            }
        }

        public bool MenuVisible
        {
            get { return MenuAdministrador.Visible; }
            set { MenuAdministrador.Visible = value; }
        }

        public bool MenuClienteVisible
        {

            get { return MenuCliente.Visible; }
            set { MenuCliente.Visible = value; }
        }

        public bool MenuSuperAdminVisible
        {

            get { return MenuSuperAdmin.Visible; }
            set { MenuSuperAdmin.Visible = value; }
        }

        protected void MenuCliente_MenuItemClick(object sender, MenuEventArgs e)
        {
            String opcion = MenuCliente.SelectedValue;

            switch (opcion)
            {
                case "inicio":
                    Response.Redirect("/ModuloCliente/PrincipalLineaPedido.aspx?nombre= &correo=" + Session["Party"].ToString() + "&id= ", false);
                    break;

                case "configuracion":
                    Response.Redirect("/ModuloCliente/ModificarCliente.aspx", false);
                    break;

                default:
                    break;
            }
        }

        protected void MenuSuperAdmin_MenuItemClick(object sender, MenuEventArgs e)
        {

            String opcion = MenuSuperAdmin.SelectedValue;
            switch (opcion)
            {


                case "Agregar Usuario":
                    Response.Redirect("~/AdministracionUsuario/AgregarUsuario.aspx", false);

                    break;

                case "Modificar usuario":
                    Response.Redirect("~/AdministracionUsuario/ModificarUsuario.aspx?valor=usuario", false);

                    break;
                case "Eliminar usuario":
                    Response.Redirect("~/AdministracionUsuario/EliminarUsuario.aspx", false);

                    break;

                case "Buscar usuario":
                    Response.Redirect("~/BuscarUsuarioCliente/BuscarUsuarioCliente.aspx?valor=usuario", false);

                    break;



                case "Habilitar cliente":
                    Response.Redirect("~/AdministracionCliente/BloqueoCliente.aspx", false);

                    break;

                case "Buscar cliente":
                    Response.Redirect("~/BuscarUsuarioCliente/BuscarUsuarioCliente.aspx?valor=cliente", false);

                    break;



                case "Mostrar pedidos":
                    Response.Redirect("~/AdministracionPedido/AdministracionPedidos.aspx", false);

                    break;

                case "Cambiar estado":
                    Response.Redirect("~/AdministracionPedido/EstadoPedido.aspx", false);

                    break;



                case "Agregar plato":
                    Response.Redirect("~/AdministracionPlato/InsertarPlato.aspx", false);

                    break;

                case "Modificar plato":
                    Response.Redirect("~/AdministracionPlato/ModificarPlato.aspx", false);

                    break;

                default:
                    break;
            }
        }
    }
}