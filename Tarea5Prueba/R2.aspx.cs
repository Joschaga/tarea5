using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea5Prueba
{
    public partial class R2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void B2siguiente_Click(object sender, EventArgs e)
        {
            Persona.R2 = DD2.SelectedValue;

            int preg = 0;
            if (DD2.SelectedValue == "b")
                Persona.Nota2 = preg + 3;
            else
                Persona.Nota2 = preg + 0;

            Response.Redirect("R3.aspx");
        }

        protected void Bresponder2_Click(object sender, EventArgs e)
        {
            if (DD2.SelectedValue == "b")
                Lrespuesta2.Text = "Su respuesta es correcta";
            else
                Lrespuesta2.Text = "Su respuesta es incorrecta";
        }
    }
}