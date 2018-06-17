using Entidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    class DatosPlato
    {

        public List<Plato> BuscarPlatoNombre(String clave)
        {
            using (PedidosExpressEntities datos = new PedidosExpressEntities())
            {
                var plato = from pl in datos.Plato
                            where pl.Nombre.Contains(clave)
                            select pl;

                return plato.ToList();
            }
        }

        public List<Plato> BuscarPlatoID(int clave)
        {
            using (PedidosExpressEntities datos = new PedidosExpressEntities())
            {
                var plato = from pl in datos.Plato
                            where pl.PlatoID == clave
                            select pl;

                return plato.ToList();
            }
        }

        /*para llamar a este metdo debe buscar el plato ya sea por nombre o por codigo*/
        public void EliminarPlato(int idPlato)
        {
            using (PedidosExpressEntities datos = new PedidosExpressEntities())
            {
                var plato = from p in datos.Plato
                            where p.PlatoID == idPlato
                            select p;

                /*Si hay algun plato**/
                if (plato.Any<Plato>())
                {




                    var platoAux = plato.Single<Plato>();
                    datos.Plato.Remove(platoAux);
                    datos.SaveChanges();
                }
            }
        }


        /*para llamar a este metdo debe buscar el plato ya sea por nombre o por codigo*/
        public String HabDesHabPlato(int clave, string hab_des)
        {
            using (PedidosExpressEntities datos = new PedidosExpressEntities())
            {

                var plato = from p in datos.Plato
                              where p.PlatoID == clave
                              select p;

                if (plato.Any<Plato>())
                {
                    foreach (var p in plato)
                    {
                        p.HabilitadoSN = hab_des;

                    }
                    datos.SaveChanges();

                    return "Plato Habilitado/Deshabilitado con exito";
                }
                else
                {
                    return "Plato no existente";
                }
            }
        }
    }

}

