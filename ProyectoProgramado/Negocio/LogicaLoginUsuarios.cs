using Datos;
using Entidad;
using Negocio.Excepciones;
using System;
using System.Collections.Generic;

namespace Negocio
{
    public class LogicaLoginUsuarios
    {
        DatosLoginUsuario lg = new DatosLoginUsuario();

        public List<v_TipoUsuario> CargarTipoUsuario()
        {
            return lg.CargarTipoUsuario();
        }

        public void VerificarLogin(String StrContraseña, byte ByteTipo, String StrUsuario)
        {
            if (!lg.ValidarContraseña(StrContraseña, ByteTipo, StrUsuario))

            { throw new ExcepcionUsuarioIncorrecto(); }

        }
    }
}
