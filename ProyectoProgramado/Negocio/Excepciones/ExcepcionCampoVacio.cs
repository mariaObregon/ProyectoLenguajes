using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio.Excepciones
{

    [Serializable]
    public class ExcepcionCampoVacio : Exception
    {

        public ExcepcionCampoVacio() : base("Hay campos vacios") { }
        public ExcepcionCampoVacio(string message) : base(message) { }
        public ExcepcionCampoVacio(string message, Exception inner) : base(message, inner) { }
        protected ExcepcionCampoVacio(
          System.Runtime.Serialization.SerializationInfo info,
          System.Runtime.Serialization.StreamingContext context) : base(info, context) { }
    }
}
