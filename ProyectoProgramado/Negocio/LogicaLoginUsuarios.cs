using Datos;
using Entidad;
using Negocio.Excepciones;
using System;
using System.Collections.Generic;

namespace Negocio
{
    public class LogicaLoginUsuarios
    {
        DatosLoginUsuario dl = new DatosLoginUsuario();

      
    
        public void VerificarLogin(String StrContraseña, byte ByteTipo, String StrUsuario)
        {
            if (!dl.ValidarContraseña(StrContraseña, ByteTipo, StrUsuario))

            { throw new ExcepcionUsuarioIncorrecto(); }

        }

        public List<v_TipoUsuario> CargarTipoUsuario()
        {
            return dl.CargarTipoUsuario();
        }

    }
}
