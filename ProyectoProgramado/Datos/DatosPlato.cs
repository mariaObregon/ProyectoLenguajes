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

        PedidosExpressEntities datos = new PedidosExpressEntities();

        public String EliminarPlato(int idPlato)
        {
                ObjectParameter salida = new ObjectParameter("Retorno", typeof(String));
                datos.p_EliminarPlato(idPlato, salida );
                return salida.ToString();
        }

        public List<f_buscarPlatoID_Result> BuscarPlatoID(int idPlato)
        {
                return datos.f_buscarPlatoID(idPlato).ToList();
        }

        public List<f_buscarPlatoNombre_Result> BuscarPlatoNombre(String nombrePlato)
        {
            return datos.f_buscarPlatoNombre(nombrePlato).ToList();
        }

        public void HabilitarPlato(int idPlato, bool habilitar)
        {
                datos.p_HabilitarPlato(habilitar, idPlato);
        }

        public void AgregarPlato(String nombre, String descripcion, decimal precio, byte[] imagen, bool habilitado)
        {
          datos.p_agregarPlato(nombre, descripcion, precio, imagen, habilitado);

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
