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
    public partial class inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void B1siguiente_Click(object sender, EventArgs e)
        {
            Persona.Cedula = Tcedula.Text;
            Persona.Nombre = Tnombre.Text;
            Persona.Apellido = Tapellido.Text;
            Persona.Fecha = DateTime.Now;
            if (Rm.Checked)
                Persona.Genero = "M";
            else
                Persona.Genero = "F";

            Response.Redirect("R1.aspx");
        }

        protected void Breportes_Click(object sender, EventArgs e)
        {
            LlenarGrid();
        }

        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["PruebaInteligenciaConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("select Respuestas.Id, Usuario.Nombre, Usuario.Apellido, Usuario.Cedula, Usuario.Genero, Respuestas.R1, Respuestas.R2, Respuestas.R3, Usuario.Fecha " +
                                                       "from Respuestas " +
                                                       "inner join Usuario on Respuestas.Cedula = Usuario.Cedula"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }
    }
}