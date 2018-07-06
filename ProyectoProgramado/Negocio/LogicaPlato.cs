using System;
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



        public void AgregarPlato(String nombre, String descripcion, decimal precio, byte[] imagen, bool habilitado)
        {
           dp.AgregarPlato(nombre, descripcion, precio, imagen, habilitado);
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
            return "data:image/jpg;base64," + Convert.ToBase64String(arreglo);
        }

        public List<f_listaPlatosHabilitados_Result> PlatosHabilitados() {

            return dp.PlatosHabilitados();
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

    }
}
