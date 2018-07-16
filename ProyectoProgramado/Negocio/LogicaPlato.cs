using System;
using Negocio.Excepciones;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;
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

        public List<f_buscarPlatoID_Result> BuscarPlatoId(int idPlato) {
            return dp.BuscarPlatoID(idPlato);
        }

        public List<f_buscarPlatoNombre_Result> BuscarPlatoNombre(String nombrePlato)
        {
            return dp.BuscarPlatoNombre(nombrePlato);
        }



        public void AgregarPlato(String nombre, String descripcion, String precio, byte[] imagen, bool habilitado)
        {
                if (ValidarDecimalText(precio) && ValidarTextBox(nombre) && ValidarTextBox(descripcion))
                {
                    dp.AgregarPlato(nombre, descripcion, decimal.Parse(precio), imagen, habilitado);
                }
                else {
                     throw new ExcepcionNoCoincide("No se inserto el plato revisar valores ingresados"); 
                }
        }

        public bool EstadoHabilitado(String valor) {

            if (valor.Equals("True"))
                return true;

            return false;
        }

        public byte[] ConvertirImagenBinario(FileUpload FileUpload1) {

            byte[] input = new Byte[0];

            if (FileUpload1.HasFile)
            {
                int fileLen;

                fileLen = FileUpload1.PostedFile.ContentLength;

                input = new byte[fileLen - 1];
                input = FileUpload1.FileBytes;

            }

            return input;

        }

        public void ModificarPlato(int IntPatoID, String StrNombre, String StrDescripcion, decimal DecPrecio, byte[] Imagen, bool BoolHabilitado)
        {
            dp.ModificarPlato(IntPatoID, StrNombre, StrDescripcion, DecPrecio, Imagen, BoolHabilitado);
        }

        public String PlatoHabilitado(bool estado) {

            if (estado)
                return "Habilitar";

            return "Deshabilitar";

        }

        public String RutaImagen(Byte[] arreglo)
        {
            if (arreglo == null)
            {
                return "";
            }
            else
            {
                return "data:image/jpg;base64," + Convert.ToBase64String(arreglo);
            }
        }

        public List<f_listaPlatosHabilitados_Result> PlatosHabilitados() {

            return dp.PlatosHabilitados();
        }

        public List<int> CantidadPlato(int max) {

            List<int> fullList = new List<int>();

            for (int i = 1; i <= max; i++)
            {
                fullList.Add(i);
            }
            return fullList;
        }


        public void MaximoCaracteres(TextBox txt, int max) {

            txt.MaxLength = max;
        }
        /* public List<String> ListaPlatosSeleccion() {

             List<f_listaPlatosHabilitados_Result> lista = PlatosHabilitados();
             List<String> rLista = new List<string>();

             if (lista.Count > 0)
             {

                 for (int i = 0; i < lista.Count; i++)
                 {

                     rLista.Add(lista[i].Nombre + "/" + lista[i].Precio);

                 }

             }
             else { rLista.Add("Sin platos Habiles"); }

             return rLista;

         }*/


        private bool ValidarDecimalText(String text) {

            if (!text.Equals("") && Decimal.Parse(text) >= 0)
            {
                return true;
            }
            else {
                throw new ExcepcionNoCoincide("No se inserto el plato, Ingrese un valor en precio superior a 0");
            }

        }

   /*     private bool ValidarPrecio(Decimal precio) {


            if (precio >= 0)
                return true;
            

            return false;

        }*/

        private bool ValidarTextBox(String texto) {

            if (!texto.Equals(""))
                return true;

            return false;

        }

    }
}
