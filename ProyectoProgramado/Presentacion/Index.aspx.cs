using Negocio;
using Negocio.Excepciones;
using System;

namespace Presentacion
{
    public partial class Index : System.Web.UI.Page
    {

        LogicaLogin lg = new LogicaLogin();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //  ListaTipoUsuario();

            }

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            try
            {
                String StrPass = password.Value;
                String StrUsuario = username.Value;
                //  byte tipo = byte.Parse(TypeDropDownList.SelectedValue);

                lg.VerificarLogin(StrPass, StrUsuario);

                if (lg.UsuarioAdmin(StrUsuario))
                {
                    Response.Redirect("~/Modulos/ModuloAdmin.aspx");
                }
                else if (lg.UsuarioSuperAdmin(StrUsuario))
                {
                    Response.Redirect("~/Modulos/ModuloSuperAdmin.aspx");
                }
                else if (lg.UsuarioCocina(StrUsuario))
                {
                    Response.Redirect("~/Modulos/ModuloCocina.aspx?UltimaEntregada=0&EstadoAnterior=0");
                }




            }
            catch (ExcepcionUsuarioIncorrecto ex)
            {
                String script = string.Format("MensajeError('{0}')", ex.Message);
                ClientScript.RegisterStartupScript(this.GetType(), "key", script, true);
            }

        }

        /**private void ListaTipoUsuario()
        {

            TypeDropDownList.DataValueField = "TipoID";
            TypeDropDownList.DataTextField = "Descripcion";
            TypeDropDownList.DataSource = lg.CargarTipoUsuario();
            TypeDropDownList.DataBind();

        }
    */

    }
}