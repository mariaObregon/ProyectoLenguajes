using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion.BuscarUsuarioCliente
{
    public partial class BuscarUsuarioCliente : System.Web.UI.Page
    {
        LogicaCliente lc = new LogicaCliente();
        LogicaUsuario lu = new LogicaUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {

            FillDataGrid();
        }

        protected void BtnFiltrar_Click(object sender, EventArgs e)
        {
            FillDataGrid();

        }

        private void FillDataGrid()
        {

            String tipo = Request.QueryString["Valor"].ToString();
            GridViewLista.DataBind();

            if (RadioButtonListFiltro.SelectedValue.Equals("Completa"))
            {

               
                switch (tipo)
                {
                    case "usuario":
                        GridViewLista.DataSource = lu.MostrarUsuarios();
                        break;

                    case "cliente":
                        GridViewLista.DataSource = lc.MostrarClientes();
                        break;
                    default:
                        break;
                }
                
            }
            else
            {
                if (RadioButtonListFiltro.SelectedValue.Equals("ID"))
                {
                    switch (tipo)
                    {
                        case "usuario":
                            GridViewLista.DataSource = lu.busquedaUsuarioId(TbValorFiltro.Text);
                            break;

                        case "cliente":
                            GridViewLista.DataSource = lc.BusquedaClienteID(TbValorFiltro.Text);
                            break;
                        default:
                            break;
                    }
                }
                else if (RadioButtonListFiltro.SelectedValue.Equals("Nombre")) {

                    switch (tipo)
                    {
                        case "usuario":
                            GridViewLista.DataSource = lu.busquedaUsuarioNombre(TbValorFiltro.Text);
                            break;

                        case "cliente":
                            GridViewLista.DataSource = lc.BusquedaClienteNombre(TbValorFiltro.Text);
                            break;
                        default:
                            break;
                    }

                }

                
            }

            GridViewLista.DataBind();


        }

        protected void RadioButtonListFiltro_SelectedIndexChanged(object sender, EventArgs e)
        {
            TbValorFiltro.Text = "";
            FillDataGrid();
            
        }
    }
}