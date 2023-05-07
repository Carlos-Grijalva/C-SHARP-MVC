using Modelo;
using Controlador;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication1
{
    public partial class InicioSesión : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {

            var nuevoUsuario = new Usuario(); // SE CREA UN NUEVO OBJETO DE LA TABLA "Usuario" DE LA BASE DE DATOS

            // SE COLOCAN LOS DATOS DEL FORMULARIO A LOS ATRIBUTOS DEL OBJETO
            nuevoUsuario.Contrasena = txtContrasena.Text;
            nuevoUsuario.Email = txtEmail.Text;

            try
            {
                // SI LO ENCUENTRA LO REDIRECCIONA A "Principal.aspx"
                ControladorUsuario.IngresarUsuario(nuevoUsuario);
                Response.Redirect("Principal.aspx");
            }
            catch (Exception ex)
            {
                txtError.Visible = true;
                txtError.Text = ex.Message;
            }


        }
    }
}