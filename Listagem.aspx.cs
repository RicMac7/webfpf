using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ex08teste
{
    public partial class Listagem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection con;
            connetionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Ricardo\source\repos\ex08teste\ex08teste\App_Data\bdfpf.mdf;Integrated Security=True";
            con = new SqlConnection(connetionString);
            con.Open();
            
            SqlCommand command;
            SqlDataReader dataReader;
            string sql, Output = " ";
            sql = "Select Id, Associacao, Sexo, Tipoinscricao, Nome, Data, Docid, Pais, Nacionalidade, Email, Telefone, Estatuto, Categoria, Clube, Notificacoes from Amador";
            command = new SqlCommand(sql, con);
            dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                Output = Output + dataReader.GetValue(0) + "-" + dataReader.GetValue(1) + "-" + dataReader.GetValue(2) + "-" + dataReader.GetValue(3) + "-" + dataReader.GetValue(4) + "-" + dataReader.GetValue(5) + "-" + dataReader.GetValue(6) + "-" + dataReader.GetValue(7) + "-" + dataReader.GetValue(8) + "-" + dataReader.GetValue(9) + "-" + dataReader.GetValue(10) + "-" + dataReader.GetValue(11) + "-" + dataReader.GetValue(12) + "-" + dataReader.GetValue(14) + "</br>";
            }
            Response.Write(Output);
            dataReader.Close();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Indice.aspx");
        }
    }
}