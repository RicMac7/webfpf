using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ex08teste
{
    public partial class Eliminar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Indice.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connetionString;
            
            connetionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename = C:\Users\Ricardo\source\repos\ex08teste\ex08teste\App_Data\bdfpf.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(connetionString);
            con.Open();            
            SqlCommand command = new SqlCommand("delete from Amador where Id=@id and Nome=@nome", con);
            // SqlDataAdapter adapter = new SqlDataAdapter();                        
            //adapter.DeleteCommand = new SqlCommand(sql, con);
            command.Parameters.Add("@id", SqlDbType.Int).Value = Txtid.Text;
            command.Parameters.Add("@nome", SqlDbType.VarChar).Value = Txtnome.Text;
            //adapter.DeleteCommand.ExecuteNonQuery();
            command.ExecuteNonQuery();
            command.Dispose();
            con.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "Dados", "alert('Registo apagado com sucesso');window.location='Indice.aspx';", true);
        }
    }
}