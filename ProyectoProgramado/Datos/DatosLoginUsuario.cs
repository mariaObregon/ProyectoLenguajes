using Entidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class DatosLoginUsuario
    {

        PedidosExpressEntities datos = new PedidosExpressEntities();

        public Boolean ValidarContraseña(String StrContraseña, byte ByteTipo, String StrUsuario) {


            Boolean coincide = false;
                var usuario = from p in datos.v_Party
                             join u in datos.v_Usuario
                             on p.PartyID equals u.PartyID
                             where p.PartyID.Equals(StrUsuario)
                                   && (p.Contraseña.Equals(StrContraseña) 
                                   && (u.TipoID.Equals(ByteTipo)))
                             select p;
            Console.WriteLine("CANTIDAD DE USUARIOS ENCONTRADOS: " + usuario.ToList().Count);
            if (usuario.Any<v_Party>())
            {
                coincide = true;
                
            }
            return coincide;
        }

        public List<v_TipoUsuario> CargarTipoUsuario() {
            return datos.v_TipoUsuario.ToList();
        }
    }
}
