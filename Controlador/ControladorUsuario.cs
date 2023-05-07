using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;

namespace Controlador
{
   public static class ControladorUsuario
    {
       public static void GuardarUsuario(Usuario nuevoUsuario)
       {
            ModeloUsuario.GuardarUsuario(nuevoUsuario);
       }

        public static void IngresarUsuario(Usuario usuario)
        {
            //logica para valiDAR EL USUARIO
            ModeloUsuario.IngresarSistema(usuario);
        }

        public static List<Usuario> BuscarPorCriterios(string criterios)
        {
            return ModeloUsuario.BuscarPorCriterios(criterios);
        }
    }
}
