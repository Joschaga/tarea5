using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea5Prueba
{
    public partial class R3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bintento_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicio.aspx");
        }

        protected void Bterminar_Click(object sender, EventArgs e)
        {
            Persona.R3 = DD3.SelectedValue;
            
            int preg = 0;
            if (DD3.SelectedValue == "a")
                Persona.Nota3 = preg + 3;
            else
                Persona.Nota3 = preg + 0;

            if (DD3.SelectedValue == "a")
                Lrespuesta3.Text = "Su respuesta es correcta";
            else
                Lrespuesta3.Text = "Su respuesta es incorrecta";

            Salvar();
            Nota();
        }

        protected void Salvar()
        {
            try
            {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["PruebaInteligenciaConnectionString"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand comando = new SqlCommand(" INSERT INTO Usuario VALUES('" + Persona.Cedula + "', '" + Persona.Nombre + "', '" + Persona.Apellido + "', '" + Persona.Genero + "', '" + Persona.Fecha + "')", conexion);
                comando.ExecuteNonQuery();
                conexion.Close();

                conexion.Open();
                comando = new SqlCommand(" INSERT INTO Respuestas VALUES('" + Persona.Cedula + "', '" + Persona.R1 + "', '" + Persona.R2 + "', '" + Persona.R3 + "')", conexion);
                comando.ExecuteNonQuery();
                conexion.Close();
            }
            catch (Exception)
            { }
        }

        protected void Nota()
        {
            int NotaFinal = 0;
            NotaFinal = Persona.Nota1 + Persona.Nota2 + Persona.Nota3;
            Lresultado.Text = "Usted obtuvo " + NotaFinal + " puntos de 9 posibles.";
            Lnota.Text = "Su nota es de " + ((NotaFinal * 100) / 9).ToString();
        }

    }
}