using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Controlador;

namespace WebApplication1
{
    public partial class AgregarTarjeta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            var nuevatarjeta = new Tarjeta(); // SE CREA UN NUEVO OBJETO DE LA TABLA "Tarjeta" DE LA BASE DE DATOS

            try
            { 
                /*
                    TODOS LOS DATOS DE ENTRADA DE UN FORMULARIO SON "String"
                    DEBEMOS CAMBIAR LOS TIPOS DE DATOS CORREPONDIENTES A LOS DE LA TABLA "Tarjeta"
                 */
                nuevatarjeta.idCuenta = Int32.Parse(idCuenta.Text);
                nuevatarjeta.nombreEntidad = nomEntidad.Text;
                nuevatarjeta.numeroTarjeta = numTarjeta.Text;
                nuevatarjeta.fechaCaducidad = DateTime.Parse(fechaCadu.Text);
                nuevatarjeta.marca = marca.Text;
                nuevatarjeta.cvv = Int32.Parse(cvv.Text);

                // LLAMA AL CONTROLADOR DE TARJETAS PARA GUARDAR EL OBJETO
                ControladorTarjeta.guardarTarjeta(nuevatarjeta);

                // PONE EN BLANCO EL FORMULARIO DESPUES DE GUARDAR LOS DATOS
                idCuenta.Text = string.Empty;
                nomEntidad.Text = string.Empty;
                numTarjeta.Text = string.Empty;
                fechaCadu.Text = string.Empty;
                marca.Text = string.Empty;
                cvv.Text = string.Empty;

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