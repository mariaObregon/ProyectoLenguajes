using Negocio;
using Entidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class PrincipalLineaPedido : System.Web.UI.Page
    {
        LogicaPlato lp = new LogicaPlato();


        protected void Page_Load(object sender, EventArgs e)
        {

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
            Response.Redirect("DetallePlato.aspx");
        }
    }
}