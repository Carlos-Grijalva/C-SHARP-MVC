using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public static class ModeloTarjeta
    {
        public static void GuardarTarjeta(Tarjeta tarjeta)
        {
            // GUARDA EL OBJETO "tarjeta" A LA BASE DE DATOS MEDIANTE EL ORM DE EntityFramework
            using (var modeloEntity = new EmpresaPatitoEntities())
            {
                modeloEntity.Tarjetas.Add(tarjeta);
                _ = modeloEntity.SaveChanges();
            }
        }
    }
}
