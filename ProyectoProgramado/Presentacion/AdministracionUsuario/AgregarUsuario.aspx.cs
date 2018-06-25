using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class AgregarUsuarioCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAgregarUsuario_Click(object sender, EventArgs e)
        {
            String primerN = TbPrimerNombre.Text;
            String segundoN = TbSegundoNombre.Text;
            String primerA = TbPrimerApellido.Text;
            String segundoA = TbSegundoApellido.Text;
            String contraseña = TbPass.Text;
            String ConfContraseña = TbConfirmarPass.Text;
            String usuario = TbUsuario.Text;
            String linea1 = TbLinea1.Text;
            String linea2 = TbLinea2.Text;
            String linea3 = TbLinea3.Text;
            String contacto = TbContacto.Text;
            String instrucciones = TbInstrucciones.Text;
        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {

        }
    }
}