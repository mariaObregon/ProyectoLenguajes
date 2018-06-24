using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public static class Filtros
    {
       public static int  nombreB= 0;
       public static int fechaB= 0;
       public static int estadoB= 0;

        public static void SetNombre(int nom)
        {
            nombreB = nom;
        }

        public static int GetNombre()
        {
            return nombreB;
        }

        public static void SetFecha(int fech)
        {
            fechaB = fech;
        }

        public static int GetFecha()
        {
            return fechaB;
        }

        public static void SetEstado(int est)
        {
            estadoB = est;
        }

        public static int GetEstado()
        {
            return estadoB;
        }
    }
}
