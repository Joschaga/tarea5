using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Metadata.W3cXsd2001;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea5Prueba
{
    public partial class R1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void B2siguiente_Click(object sender, EventArgs e)
        {
            Persona.R1 = DD1.SelectedValue;

            int preg = 0;
            if (DD1.SelectedValue == "f")
                Persona.Nota1 = preg + 3;
            else
                Persona.Nota1 = preg + 0;

            Response.Redirect("R2.aspx");
        }

        protected void Bresponder_Click(object sender, EventArgs e)
        {
            if (DD1.SelectedValue == "f")
                Lrespuesta1.Text = "Su respuesta es correcta";
            else
                Lrespuesta1.Text = "Su respuesta es incorrecta";
        }
    }
}