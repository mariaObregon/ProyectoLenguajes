using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio.Excepciones
{

    [Serializable]
    public class ExcepcionNoCoincide : Exception
    {
        public ExcepcionNoCoincide() : base ("Las contraseñas no coinciden"){ }
        public ExcepcionNoCoincide(string message) : base(message) { }
        public ExcepcionNoCoincide(string message, Exception inner) : base(message, inner) { }
        protected ExcepcionNoCoincide(
          System.Runtime.Serialization.SerializationInfo info,
          System.Runtime.Serialization.StreamingContext context) : base(info, context) { }
    }
}
