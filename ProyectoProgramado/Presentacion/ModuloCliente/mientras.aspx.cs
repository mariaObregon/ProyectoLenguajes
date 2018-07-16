using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidad;

namespace Presentacion.ModuloCliente
{
    public partial class mientras : System.Web.UI.Page
    {
        LogicaCliente lc = new LogicaCliente();

        protected void Page_Load(object sender, EventArgs e)
        {
            String nombre = Request.QueryString["nombre"].ToString();
            String correo = Request.QueryString["correo"].ToString();
            String id = Request.QueryString["id"].ToString();
            if (!id.Trim().Equals("")) {
                Session["Party"] = correo;
               
            }
            System.Diagnostics.Debug.WriteLine(correo + nombre + id);
            if (!lc.BusquedaClienteID(correo).Any<f_buscarClienteID_Result>()) {
                System.Diagnostics.Debug.WriteLine(correo + nombre + id);
                lc.AgregarClienteFacebook(nombre, correo, id);
            }
          
            Master.MenuClienteVisible = true;
        }
    }
}