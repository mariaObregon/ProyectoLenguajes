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

                

                if (lg.UsuarioAdmin(StrUsuario))
                {
                    lg.VerificarLogin(StrPass, StrUsuario);
                    Response.Redirect("/Modulos/ModuloAdmin.aspx?tipo=admin");
                    
                }
                else if (lg.UsuarioSuperAdmin(StrUsuario))
                {
                    lg.VerificarLogin(StrPass, StrUsuario);
                    Response.Redirect("~/Modulos/ModuloSuperAdmin.aspx?tipo=superAdmin");
                   
                }
                else if (lg.UsuarioCocina(StrUsuario))
                {
                    lg.VerificarLogin(StrPass, StrUsuario);
                    Response.Redirect("~/Modulos/ModuloCocina.aspx?UltimaEntregada=0&EstadoAnterior=0");
                    
                }





            }
            catch (ExcepcionUsuarioIncorrecto ex)
            {
                // String script = string.Format("MensajeError('{0}')", ex.Message);
                //ClientScript.RegisterStartupScript(this.GetType(), "key", script, true);

                divMsj.Attributes.Add("style", "display:inline");
                msj.Text = ex.Message;
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