using Datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class LogicaCliente
    {
        DatosCliente dc = new DatosCliente();

        public String BloquearCliente(String idCliente, bool bloquear)
        {
            if (idCliente.Trim() != "" || idCliente != null)
            {
                 dc.BloquearCliente(idCliente, bloquear);
                if (bloquear == true)
                {
                    return "Cliente bloqueado con exito";
                }
                else
                {
                    return "Cliente desbloqueado con exito";
                }
            }
            else
            {
                return "Cliente inválido";
            }
        }

    }
}
