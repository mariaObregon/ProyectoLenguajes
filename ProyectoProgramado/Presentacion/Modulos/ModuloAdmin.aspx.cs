using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion.Menus
{
    public partial class MenuAdmin : System.Web.UI.Page
    {
        String tipo;
        protected void Page_Load(object sender, EventArgs e)
        {

            Master.MenuVisible = true;
            tipo = Request.QueryString["tipo"].ToString();
        }


        protected void BtnHabilitar_Click(object sender, EventArgs e)
        {
            Response.Redirect("../AdministracionCliente/BloqueoCliente.aspx?tipo=" + tipo, false);
        }

        protected void BtnModificarP_Click(object sender, EventArgs e)
        {
            Response.Redirect("../AdministracionPlato/ModificarPlato.aspx?tipo=" + tipo, false);
        }

        protected void BtnInsertarP_Click(object sender, EventArgs e)
        {
            Response.Redirect("../AdministracionPlato/InsertarPlato.aspx?tipo=" + tipo, false);
        }

        protected void BtnMostrarP_Click(object sender, EventArgs e)
        {
            Response.Redirect("../AdministracionPedido/AdministracionPedidos.aspx?tipo=" + tipo, false);
        }

        protected void BtnEstado_Click(object sender, EventArgs e)
        {
            Response.Redirect("../AdministracionPedido/EstadoPedido.aspx?tipo=" + tipo, false);
        }

        protected void BtnBuscarC_Click(object sender, EventArgs e)
        {
            Response.Redirect("../BuscarUsuarioCliente/BuscarUsuarioCliente.aspx?valor=cliente&tipo=" + tipo, false);
        }

    }
}