using Negocio;
using Entidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion.ModuloCliente
{
    public partial class PrincipalLineaPedido : System.Web.UI.Page
    {
        LogicaPlato lp = new LogicaPlato();
        LogicaCliente lc = new LogicaCliente();

        protected void Page_Load(object sender, EventArgs e)
        {
            String nombre = Request.QueryString["nombre"].ToString();
            String correo = Request.QueryString["correo"].ToString();
            String id = Request.QueryString["id"].ToString();
            if (!id.Trim().Equals(""))
            {
                Session["Party"] = correo;

            }
            System.Diagnostics.Debug.WriteLine(correo + nombre + id);
            if (!lc.BusquedaClienteID(correo).Any<f_buscarClienteID_Result>())
            {
                System.Diagnostics.Debug.WriteLine(correo + nombre + id);
                lc.AgregarClienteFacebook(nombre, correo, id);
            }

            Master.MenuClienteVisible = true;

            if (!IsPostBack)
            {
                dropPlatosHab.Items.Clear();
                dropPlatosHab.DataSource = lp.PlatosHabilitados();
                dropPlatosHab.DataValueField = "PlatoID";
                dropPlatosHab.DataTextField = "NamePrice";
                dropPlatosHab.DataBind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {   
            Session["idPlato"] = dropPlatosHab.SelectedValue;
            Response.Redirect("/ModuloCliente/DetallePlato.aspx");
        }
    }
}