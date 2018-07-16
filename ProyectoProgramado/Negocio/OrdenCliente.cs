using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidad;

namespace Negocio
{
    public class OrdenCliente
    {

        public f_buscarPlatoID_Result platoID { get; set; }
        public f_buscarPlatoNombre_Result platoNombre { get; set; }
        public int cantidad { get; set; }

    }
}
