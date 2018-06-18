using Entidad;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class DatosPlato
    {

        public String EliminarPlato(int idPlato)
        {
             using (PedidosExpressEntities datos = new PedidosExpressEntities())
            {

                ObjectParameter salida = new ObjectParameter("Retorno", typeof(String));
              datos.p_EliminarPlato(idPlato, salida );
                return salida.ToString();
            }
        }
        public void HabilitarPlato(int idPlato, bool habilitar)
        {
            using (PedidosExpressEntities datos = new PedidosExpressEntities())
            {
                datos.p_HabilitarPlato(habilitar, idPlato);
            }
        }
    }

}







/*  public String EliminarRegistro(int idRegistro)
  {
      using (PedidosExpressEntities datos = new PedidosExpressEntities())
      {

          ObjectParameter salida = new ObjectParameter("Retorno", typeof(String));
          datos.p_EliminarPedidosRegistro(idRegistro, salida);
          return salida.ToString();
      }
  }*/

/*   public String EliminarPedido(int idPedido)
   {
       using (PedidosExpressEntities datos = new PedidosExpressEntities())
       {

           ObjectParameter salida = new ObjectParameter("Retorno", typeof(String));
           datos.p_EliminarPedido(idPedido, salida);
           return salida.ToString();
       }
   }*/
