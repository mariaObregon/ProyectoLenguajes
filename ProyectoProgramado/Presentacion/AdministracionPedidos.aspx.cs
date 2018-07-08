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
                
                TextBox1.Enabled = false;
                Calendar1.Enabled = false;
                Calendar2.Enabled = false;
                Estado.Enabled = false;
                Button4.Enabled = false;
                Estado.DataValueField = "EstadoID";
                Estado.DataTextField = "DescripcionEstado";
                Estado.DataSource = lgp.MostrarEstados();
                Estado.DataBind();
                Lista.DataSource = lgp.TodosLosPedidos();
                Lista.DataBind();

            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        
        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {

        }


        protected void Nombre_Click(object sender, EventArgs e)
        {
            if (Nombre.Text.Equals("Habilitar Nombre"))
            {
                Filtros.SetNombre(1);
                TextBox1.Enabled = true;
                Button4.Enabled = true;
                Nombre.Text = "Deshabilitar Nombre";
            }
            else if(Nombre.Text.Equals("Deshabilitar Nombre"))
            {
                Filtros.SetNombre(0);
                TextBox1.Enabled = false;
                Nombre.Text = "Habilitar Nombre";
            }
        }


        protected void Fecha_Click(object sender, EventArgs e)
        {
            if (Fecha.Text.Equals("Habilitar Fecha"))
            {
                Filtros.SetFecha(1);
                Calendar1.Enabled = true;
                Calendar2.Enabled = true;
                Button4.Enabled = true;
                Fecha.Text = "Deshabilitar Fecha";
            }
            else if(Fecha.Text.Equals("Deshabilitar Fecha"))
            {
                Filtros.SetFecha(0);
                Calendar1.Enabled = false;
                Calendar2.Enabled = false;
                Fecha.Text = "Habilitar Fecha";
            }
        }

        protected void Estadoo_Click(object sender, EventArgs e)
        {
            if (Estadoo.Text.Equals("Habilitar Estado"))
            {
                Filtros.SetEstado(1);
                Estado.Enabled = true;
                Button4.Enabled = true;
                Estadoo.Text = "Deshabilitar Estado";
            }
            else if(Estadoo.Text.Equals("Deshabilitar Estado"))
            {
                Filtros.SetEstado(0);
                Estado.Enabled = false;
                Estadoo.Text = "Habilitar Estado";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Buscar();
        }

        public void Buscar() {

            if (Filtros.GetNombre() == 1)
            {
                if (Filtros.GetNombre() == 1 && Filtros.GetEstado() == 1 && Filtros.GetFecha() == 1)
                {
                    List<f_pedidoEstado_Cliente_Fecha_Result> dt = lgp.BusquedaPedidoCliente_Fecha_Estado(TextBox1.Text, Calendar1.SelectedDate, Calendar2.SelectedDate, int.Parse(Estado.SelectedValue));
                    Lista.DataSource = dt;
                    Lista.DataBind();
                }
                else if (Filtros.GetNombre() == 1 && Filtros.GetFecha() == 1)
                {
                    List<f_pedido_Fecha_Cliente_Result> dt = lgp.BusquedaPedidoCliente_Fecha(TextBox1.Text, Calendar1.SelectedDate, Calendar2.SelectedDate);
                    Lista.DataSource = dt;
                    Lista.DataBind();
                }
                else if (Filtros.GetNombre() == 1 && Filtros.GetEstado() == 1)
                {
                    List<f_pedidoEstado_Cliente_Result> dt = lgp.BusquedaPedidoEstado_Cliente(int.Parse(Estado.SelectedValue), TextBox1.Text);
                    Lista.DataSource = dt;
                    Lista.DataBind();
                }
                else
                {
                    List<f_pedidoCliente_Result> dt = lgp.BusquedaPedidoNombre(TextBox1.Text);
                    Lista.DataSource = dt;
                    Lista.DataBind();

                    List<f_pedidoCliente_Result> dtt = lgp.BusquedaPedidoNombre(TextBox1.Text);
                    Lista.DataSource = dtt;
                    Lista.DataBind();
                }



            }
            else if (Filtros.GetFecha() == 1)
            {
                if (Filtros.GetNombre() == 1 && Filtros.GetEstado() == 1 && Filtros.GetFecha() == 1)
                {
                    List<f_pedidoEstado_Cliente_Fecha_Result> dt = lgp.BusquedaPedidoCliente_Fecha_Estado(TextBox1.Text, Calendar1.SelectedDate, Calendar2.SelectedDate, int.Parse(Estado.SelectedValue));
                    Lista.DataSource = dt;
                    Lista.DataBind();
                }
                else if (Filtros.GetNombre() == 1 && Filtros.GetFecha() == 1)
                {
                    List<f_pedido_Fecha_Cliente_Result> dt = lgp.BusquedaPedidoCliente_Fecha(TextBox1.Text, Calendar1.SelectedDate, Calendar2.SelectedDate);
                    Lista.DataSource = dt;
                    Lista.DataBind();
                }
                else if (Filtros.GetFecha() == 1 && Filtros.GetEstado() == 1)
                {
                    List<f_pedidoEstado_Fecha_Result> dt = lgp.BusquedaPedidoEstado_Fecha(int.Parse(Estado.SelectedValue), Calendar1.SelectedDate, Calendar2.SelectedDate);
                    Lista.DataSource = dt;
                    Lista.DataBind();
                }
                else
                {
                    List<f_pedidoFecha_Result> dt = lgp.BusquedaPedidoFecha(Calendar1.SelectedDate.ToShortDateString(), Calendar2.SelectedDate.ToShortDateString());
                    Lista.DataSource = dt;
                    Lista.DataBind();
                }

            }
            else if (Filtros.GetEstado() == 1)
            {
                if (Filtros.GetNombre() == 1 && Filtros.GetEstado() == 1 && Filtros.GetFecha() == 1)
                {
                    List<f_pedidoEstado_Cliente_Fecha_Result> dt = lgp.BusquedaPedidoCliente_Fecha_Estado(TextBox1.Text, Calendar1.SelectedDate, Calendar2.SelectedDate, int.Parse(Estado.SelectedValue));
                    Lista.DataSource = dt;
                    Lista.DataBind();
                }
                else if (Filtros.GetFecha() == 1 && Filtros.GetEstado() == 1)
                {
                    List<f_pedidoEstado_Fecha_Result> dt = lgp.BusquedaPedidoEstado_Fecha(int.Parse(Estado.SelectedValue), Calendar1.SelectedDate, Calendar2.SelectedDate);
                    Lista.DataSource = dt;
                    Lista.DataBind();
                }
                else if (Filtros.GetNombre() == 1 && Filtros.GetEstado() == 1)
                {
                    List<f_pedidoEstado_Cliente_Result> dt = lgp.BusquedaPedidoEstado_Cliente(int.Parse(Estado.SelectedValue), TextBox1.Text);
                    Lista.DataSource = dt;
                    Lista.DataBind();
                }
                else
                {
                    List<f_pedidoEstado_Result> dt = lgp.BusquedaPedidoEstado(int.Parse(Estado.SelectedValue));
                    Lista.DataSource = dt;
                    Lista.DataBind();
                }
            }
            else {
                Lista.DataSource = lgp.TodosLosPedidos();
                Lista.DataBind();
            }
        }

        protected void Lista_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            GridViewRow item;
            GridView gv2;
            int id;
            if ((e.Row.RowType == DataControlRowType.DataRow))
            {
                item = e.Row;
                id = int.Parse((item.Cells[0]).Text);
                gv2 = (GridView)e.Row.Cells[4].Controls[1];
                gv2.DataSource = lgp.MostrarLineasPedido(id);
                gv2.DataBind();
            }
        }
    }
    }
