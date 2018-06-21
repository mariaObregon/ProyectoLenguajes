using Entidad;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class AdministracionPedidos : System.Web.UI.Page
    {
        LogicaPedido lgp = new LogicaPedido();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                Estado.DataValueField = "EstadoID";
                Estado.DataTextField = "DescripcionEstado";
                Estado.DataSource = lgp.MostrarEstados();
                Estado.DataBind();

            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            List<f_pedidoCliente_Result> dt = lgp.BusquedaPedidoClienteNombre(TextBox1.Text);
            Pedidos.DataSource = dt;
            Pedidos.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            List<f_pedidoFecha_Result> dt = lgp.BusquedaPedidoClienteFecha(Calendar1.SelectedDate.ToShortDateString(), Calendar2.SelectedDate.ToShortDateString());
            Pedidos.DataSource = dt;
            Pedidos.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            List<f_pedidoEstado_Result> dt = lgp.BusquedaPedidoClienteEstado(int.Parse(Estado.SelectedValue));
              Pedidos.DataSource = dt;
               Pedidos.DataBind();
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
    }