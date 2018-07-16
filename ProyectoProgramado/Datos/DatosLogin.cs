using Entidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class DatosLogin
    {

        PedidosExpressEntities datos = new PedidosExpressEntities();

        public Boolean ValidarContraseña(String StrContraseña, String StrUsuario)
        {
           
            var usuario = from p in datos.v_Party                        
                          where p.PartyID.Equals(StrUsuario)
                                && (p.Contraseña.Equals(StrContraseña)  )                          
                          select p;
            Console.WriteLine("CANTIDAD DE USUARIOS ENCONTRADOS: " + usuario.ToList().Count);
            return usuario.Any<v_Party>();
          
        }

        public List<v_TipoUsuario> CargarTipoUsuario()
        {
            return datos.v_TipoUsuario.ToList();
        }

        public Boolean UsuarioCliente(String StrUsuario)
        {

            var cliente = from p in datos.v_Party
                          join cl in datos.v_Cliente
                          on p.PartyID equals cl.PartyID
                          where p.PartyID == StrUsuario
                          select p;
           return cliente.Any<v_Party>() ; 
                          
        }

        public Boolean UsuarioAdmin(String StrUsuario)
        {
            var admin = from p in datos.v_Party
                          join cl in datos.v_Usuario
                           on p.PartyID equals cl.PartyID
                        where p.PartyID == StrUsuario && cl.TipoID == 2
                        select p;
            return admin.Any<v_Party>();

        }


        public Boolean UsuarioCocina(String StrUsuario)
        {
            var cocina = from p in datos.v_Party
                          join cl in datos.v_Usuario
                          on p.PartyID equals cl.PartyID
                          where p.PartyID == StrUsuario && cl.TipoID == 3
                          select p;
            return cocina.Any<v_Party>();
        }

        public Boolean UsuarioSuperAdmin(String StrUsuario)
        {
            var superAdmin = from p in datos.v_Party
                         join cl in datos.v_Usuario
                         on p.PartyID equals cl.PartyID
                         where p.PartyID == StrUsuario && cl.TipoID == 1
                         select p;
            return superAdmin.Any<v_Party>();
        }
    }
}
