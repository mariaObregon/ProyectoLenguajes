using System;

namespace Negocio.Excepciones
{

    public class ExcepcionUsuarioIncorrecto : Exception
    {
        public ExcepcionUsuarioIncorrecto() : base ("Usuario o contraseña incorrectos"){ }
        public ExcepcionUsuarioIncorrecto(string message) : base(message) { }
        public ExcepcionUsuarioIncorrecto(string message, Exception inner) : base(message, inner) { }
        protected ExcepcionUsuarioIncorrecto(
          System.Runtime.Serialization.SerializationInfo info,
          System.Runtime.Serialization.StreamingContext context) : base(info, context) { }
    }

}
