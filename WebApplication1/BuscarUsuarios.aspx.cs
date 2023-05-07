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
    public partial class BuscarUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var listaUsuarios = ControladorUsuario.BuscarPorCriterios(txtCriterios.Text);
           
           

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }
    }
}