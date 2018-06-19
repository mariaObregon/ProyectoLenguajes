using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using Entidad;

namespace Negocio
{
    public class LogicaPlato
    {
        DatosPlato dp = new DatosPlato();

        public String EliminarPlato(int idPlato) {

            if (idPlato > 0)
            {
                return dp.EliminarPlato(idPlato);
            }
            else {
                return "Plato no existente";
            }
            
        }

        public String HabilitarPlato(int idPlato, bool habilitar) {

            if (idPlato > 0)
            {
                 dp.HabilitarPlato(idPlato, habilitar);
                if (habilitar == true) {
                    return "Plato habilitado con exito";
                }
                else
                {
                    return "Plato deshabilitado con exito";
                }
            }
            else {
                return "Plato no existente";
            }
        }

        public List<f_buscarPlatoID_Result> buscarPlatoId(int idPlato) {
            return dp.BuscarPlatoID(idPlato);
        }

        public List<f_buscarPlatoNombre_Result> buscarPlatoNombre(String nombrePlato)
        {
            return dp.BuscarPlatoNombre(nombrePlato);
        }

    }
}
