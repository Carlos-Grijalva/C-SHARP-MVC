﻿using Controlador;
using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AgregarCuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            var nuevacuenta = new Cuenta();

            try
            {
                nuevacuenta.idUsuario = Int32.Parse(idUsuario.Text);
                nuevacuenta.Saldo = float.Parse(saldo.Text);
                nuevacuenta.NumeroCuenta = numCuenta.Text;

                ControladorCuenta.GuardarCuenta(nuevacuenta);

                idUsuario.Text = string.Empty;
                saldo.Text = string.Empty;
                numCuenta.Text = string.Empty;

                mensaje.InnerText = "Guardado Exitosamente";

            }
            catch (Exception ex)
            {

                mensaje.InnerText = ex.Message;

            }
        }
    }
}