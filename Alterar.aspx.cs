using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ex08teste
{
    public partial class Alterar : System.Web.UI.Page
    {
        private string data;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connetionString, sql;
            
            connetionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename = C:\Users\Ricardo\source\repos\ex08teste\ex08teste\App_Data\bdfpf.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(connetionString);
            con.Open();
            // Response.Write("Ligado com sucesso!");                        
            sql = "Select * from Amador Where Id = '" + txtid.Text + "'";
            SqlCommand command = new SqlCommand(sql, con);
            SqlDataReader dataReader;
            dataReader = command.ExecuteReader();
            // dataReader.Read();
           // DateTime sdate = new DateTime();
            if (dataReader.HasRows)
            {               
                dataReader.Read();
                //txtid.Text = dataReader["Id"].ToString();
                Rdassociacao.Text = dataReader["Associacao"].ToString();
                Rdsexo.Text = dataReader["Sexo"].ToString();
                Rdboletim.Text = dataReader["Tipoinscricao"].ToString();
                Txtnome.Text = dataReader["Nome"].ToString();
                // sdate = (DateTime)dataReader["Data"];
                data = Convert.ToDateTime(dataReader["Data"]).ToString("dd/MM/yyyy");
                Txtdoc.Text = dataReader["Docid"].ToString();
                Txtpaisnasc.Text = dataReader["Pais"].ToString();
                Txtnacionalidade.Text = dataReader["Nacionalidade"].ToString();
                Txtemail.Text = dataReader["Email"].ToString();
                Txttelefone.Text = dataReader["Telefone"].ToString();
                Rdestatuto.Text = dataReader["Estatuto"].ToString();
                Rdcategoria.Text = dataReader["Categoria"].ToString();
                Txtclube.Text = dataReader["Clube"].ToString();
                Rdautorizacao.Text = dataReader["Notificacoes"].ToString();
            }
            //string formattedDate = sdate.ToString("dd/MM/yyyy");
            //Txtdata.Text = formattedDate;
            Txtdata0.Text = String.Format("{0:dd-MM-yyyy}", data);
        }
        

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Indice.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connetionString;
            connetionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename = C:\Users\Ricardo\source\repos\ex08teste\ex08teste\App_Data\bdfpf.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(connetionString);
            con.Open();
           
            SqlCommand cmd = new SqlCommand("Update Amador set Associacao=@Associacao, Sexo=@Sexo, Tipoinscricao=@Tipoinscricao, Nome=@Nome, Data=@Data, Docid=@Docid, Pais=@Pais, Nacionalidade=@Nacionalidade, Email=@Email, Telefone=@Telefone, Estatuto=@Estatuto, Categoria=@Categoria, Clube=@Clube, Notificacoes=@Notificacoes Where id = " + txtid.Text + "", con);
            cmd.Parameters.AddWithValue("@Associacao", Rdassociacao.Text);
            cmd.Parameters.AddWithValue("@Sexo", Rdsexo.Text);
            cmd.Parameters.AddWithValue("@Tipoinscricao", Rdboletim.Text);
            cmd.Parameters.AddWithValue("@Nome", Txtnome.Text);
            cmd.Parameters.AddWithValue("@Data", Txtdata0.Text);
            cmd.Parameters.AddWithValue("@Docid", Txtdoc.Text);
            cmd.Parameters.AddWithValue("@Pais", Txtpaisnasc.Text);
            cmd.Parameters.AddWithValue("@Nacionalidade", Txtnacionalidade.Text);
            cmd.Parameters.AddWithValue("@Email", Txtemail.Text);
            cmd.Parameters.AddWithValue("@Telefone", Txttelefone.Text);
            cmd.Parameters.AddWithValue("@Estatuto", Rdestatuto.Text);
            cmd.Parameters.AddWithValue("@Categoria", Rdcategoria.Text);
            cmd.Parameters.AddWithValue("@Clube", Txtclube.Text);
            cmd.Parameters.AddWithValue("@Notificacoes", Rdautorizacao.Text);
            cmd.ExecuteNonQuery();            
            con.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "Dados", "alert('Dados alterados com sucesso');window.location='Indice.aspx';", true);
        }

       
        protected void Txtdata_TextChanged(object sender, EventArgs e)
        {            
                Txtdata0.Text = Txtdata.Text ;
        }
       
    }
}