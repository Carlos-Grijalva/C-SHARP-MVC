using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public static class ModeloCuenta
    {
        public static void GuardarCuenta(Cuenta cuenta)
        {
            // GUARDA EL OBJETO "cuenta" A LA BASE DE DATOS MEDIANTE EL ORM DE EntityFramework
            using (var modeloEntity = new EmpresaPatitoEntities())
            {
                modeloEntity.Cuentas.Add(cuenta);
                _ = modeloEntity.SaveChanges();
            }
        }
    }
}
