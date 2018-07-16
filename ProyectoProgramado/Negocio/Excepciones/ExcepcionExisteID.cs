using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio.Excepciones
{  
        [Serializable]
        public class ExcepcionExisteID : Exception
        {
            public ExcepcionExisteID() : base("Ya hay un usuario registrado con este correo electrónico") { }
            public ExcepcionExisteID(string message) : base(message) { }
            public ExcepcionExisteID(string message, Exception inner) : base(message, inner) { }
            protected ExcepcionExisteID(
              System.Runtime.Serialization.SerializationInfo info,
              System.Runtime.Serialization.StreamingContext context) : base(info, context) { }
        }
    }

