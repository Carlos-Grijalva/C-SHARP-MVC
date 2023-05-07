using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public static class ModeloUsuario
    {

        public static void GuardarUsuario(Usuario nuevoUsuario)
        {
            // GUARDA EL OBJETO "nuevoUsuario" A LA BASE DE DATOS MEDIANTE EL ORM DE EntityFramework
            using (var modeloEntity = new EmpresaPatitoEntities())
            {
                modeloEntity.Usuarios.Add(nuevoUsuario);
                _ = modeloEntity.SaveChanges();
            }
        }

        public static void IngresarSistema(Usuario preUsuario)
        {
            using (var modeloEntity = new EmpresaPatitoEntities())
            {
                // HACE UNA CONSULTA PARA VERIFICAR QUE EXISTA UN USUARIO CON ESE CORREO Y CONTRASEÑA DESDE EL ORM
                var resultado =
                    (from x in modeloEntity.Usuarios
                     where x.Email == preUsuario.Email &
                     x.Contrasena == preUsuario.Contrasena
                     select x).FirstOrDefault();

                // SI NO ENCUENTRA A NINGUN USUARIO CON ESOS DATOS MOSTRARA EL MENSAJE
                if (resultado == null)
                {
                    throw new Exception("Usuario y/o contrasena no existen.");
                }
            }
        }


        public static List<Usuario> BuscarPorCriterios(string criterios)
        {
            using (var modeloEntity = new EmpresaPatitoEntities())
            {
                var resultado = (from x in modeloEntity.Usuarios
                                 where x.Nombre.Contains(criterios) &
                                 x.ApellidoPaterno.Contains(criterios) &
                                 x.ApellidoMaterno.Contains(criterios) &
                                 x.Celular.Contains(criterios) &
                                 x.Email.Contains(criterios)
                                 orderby x.Nombre ascending
                                 select x).ToList();

                return resultado;

            }
        }

        public static Usuario BuscarPorID(int idUsuario)
        {
            using (var modeloEntity = new EmpresaPatitoEntities())
            {
                var resultado = (from x in modeloEntity.Usuarios
                                 where x.idUsuario == idUsuario
                                 select x).First();
                return resultado;
            }
        }
        public static void ModificarUsuario(Usuario actulizarUsuario)
        {

            var resultado = BuscarPorID(actulizarUsuario.idUsuario);

            using (var modeloEntity = new EmpresaPatitoEntities())
            {
                    resultado.Nombre = actulizarUsuario.Nombre;
                    resultado.ApellidoPaterno = actulizarUsuario.ApellidoPaterno;
                    resultado.ApellidoMaterno = actulizarUsuario.ApellidoMaterno;
                    resultado.Email = actulizarUsuario.Email;
                    resultado.Contrasena = actulizarUsuario.Contrasena;
                    resultado.Celular = actulizarUsuario.Celular;

                    modeloEntity.Usuarios.Attach(resultado);
                    modeloEntity.SaveChanges();
             }


        }

        public static void CambiarEstadoPorID(Usuario eliminarUsuario)
        {
            var resultado = BuscarPorID(eliminarUsuario.idUsuario);

           
        }


    }

}
