using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio.Excepciones
{

    [Serializable]
    public class ExcepcionContraseñaIncorrecta : Exception
    {
        public ExcepcionContraseñaIncorrecta() : base ("Contraseña Incorrecta") { }
        public ExcepcionContraseñaIncorrecta(string message) : base(message) { }
        public ExcepcionContraseñaIncorrecta(string message, Exception inner) : base(message, inner) { }
        protected ExcepcionContraseñaIncorrecta(
          System.Runtime.Serialization.SerializationInfo info,
          System.Runtime.Serialization.StreamingContext context) : base(info, context) { }
    }
}
