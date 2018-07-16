using Negocio;
using Negocio.Excepciones;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class IndexCliente : System.Web.UI.Page
    {
        LogicaLogin lg = new LogicaLogin();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
           
            try
            {
                String StrUsuario = username.Value;
                String StrPass = password.Value;
               
                //  byte tipo = byte.Parse(TypeDropDownList.SelectedValue);

                lg.VerificarLogin(StrPass, StrUsuario);

                if (lg.UsuarioCliente(StrUsuario))
                {
                    Session["Party"] = StrUsuario;

                    Response.Redirect("/ModuloCliente/PrincipalLineaPedido.aspx?nombre= &correo=" + StrUsuario + "&id= ", false);
                }
              
            }
            catch (ExcepcionUsuarioIncorrecto ex)
            {
                String script = string.Format("MensajeError('{0}')", ex.Message);
                ClientScript.RegisterStartupScript(this.GetType(), "key", script, true);
            }

          

        }
    }
}