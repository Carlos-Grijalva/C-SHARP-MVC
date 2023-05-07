using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Controlador;
using System.Data.Entity.Validation;

namespace WebApplication1
{
    public partial class AgregarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            var nuevosuario = new Usuario(); // SE CREA UN NUEVO OBJETO DE LA TABLA "Usuario" DE LA BASE DE DATOS

            // SE COLOCAN LOS DATOS DEL FORMULARIO A LOS ATRIBUTOS DEL OBJETO
            nuevosuario.Nombre = txtNombre.Text;
            nuevosuario.ApellidoPaterno = txtPrimerApellido.Text;
            nuevosuario.ApellidoMaterno = txtSegundoApellido.Text;
            nuevosuario.Celular = txtCelular.Text;
            nuevosuario.Email = txtEmail.Text;
            nuevosuario.Contrasena = txtContrasena.Text;

            try
            {
                // LLAMA AL CONTROLADOR DE USUARIOS PARA GUARDAR EL OBJETO
                ControladorUsuario.GuardarUsuario(nuevosuario);
               
                // PONE EN BLANCO EL FORMULARIO DESPUES DE GUARDAR LOS DATOS
                txtNombre.Text = string.Empty;
                txtPrimerApellido.Text = string.Empty;
                txtSegundoApellido.Text = string.Empty;
                txtCelular.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtContrasena.Text = string.Empty;

                mensaje.InnerText = "Guardado Exitosamente";

            }
            catch (Exception ex)
            {
                // EN CASO DE UN ERROR SE MOSTRARA EL MENSAJE
                mensaje.InnerText = ex.Message;
              
            }
        }
    }
}