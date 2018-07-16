using Datos;
using Entidad;
using Negocio.Excepciones;
using System;
using System.Collections.Generic;

namespace Negocio
{
    public class LogicaLogin
    {
        DatosLogin dl = new DatosLogin();

      
    
        public void VerificarLogin(String StrContraseña,  String StrUsuario)
        {
            if (!dl.ValidarContraseña(StrContraseña, StrUsuario))

            { throw new ExcepcionUsuarioIncorrecto(); }

        }

        public List<v_TipoUsuario> CargarTipoUsuario()
        {
            return dl.CargarTipoUsuario();
        }

        public Boolean UsuarioCliente(String StrUsuario)
        {

            return dl.UsuarioCliente(StrUsuario);

        }

        public Boolean UsuarioAdmin(String StrUsuario)
        {

            return dl.UsuarioAdmin(StrUsuario);

        }


        public Boolean UsuarioCocina(String StrUsuario)
        {

            return dl.UsuarioCocina(StrUsuario);
        }

        public Boolean UsuarioSuperAdmin(String StrUsuario)
        {

            return dl.UsuarioSuperAdmin(StrUsuario);
        }

    }
}
