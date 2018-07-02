using Negocio;
using Negocio.Excepciones;
using System;

namespace Presentacion
{
    public partial class Index : System.Web.UI.Page
    {

        LogicaLoginUsuarios lg = new LogicaLoginUsuarios();
       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListaTipoUsuario();

            }



        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            try
            {
                String StrPass = Password.Text;
                String StrUsuario = UserName.Text;
                byte tipo = byte.Parse(TypeDropDownList.SelectedValue);
                System.Diagnostics.Debug.WriteLine("TIPO: " + tipo);
                lg.VerificarLogin(StrPass, tipo, StrUsuario);

                switch (tipo)
                {
                    case 1:
                        Response.Redirect("~/Menus/MenuAdmin.aspx");
                        break;

                    case 2:
                        Response.Redirect("~/Menus/MenuAdmin.aspx");
                        break;
                    case 3:
                        Response.Redirect("~/Menus/MenuCocina.aspx");
                        break;
                    default:
                        break;

                }


            }
            catch (ExcepcionUsuarioIncorrecto ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);
            }


        }

        private void ListaTipoUsuario()
        {

            TypeDropDownList.DataValueField = "TipoID";
            TypeDropDownList.DataTextField = "Descripcion";
            TypeDropDownList.DataSource = lg.CargarTipoUsuario();
            TypeDropDownList.DataBind();

        }

    }
}