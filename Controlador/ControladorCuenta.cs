using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Controlador
{
    public static class ControladorCuenta
    {

        public static void GuardarCuenta(Cuenta cuenta)
        {
            // LLAMA AL MODELO "Cuenta"
            ModeloCuenta.GuardarCuenta(cuenta);
        }

     
    }
}
