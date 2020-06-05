using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ex08teste
{
    public partial class Registo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btregistar_Click(object sender, EventArgs e)
        {
            string connetionString, doc, dt;

            try
            {
                SqlConnection con;
                connetionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Ricardo\source\repos\ex08teste\ex08teste\App_Data\bdfpf.mdf;Integrated Security=True";
                con = new SqlConnection(connetionString);
                con.Open();
                //SqlCommand command;
                //SqlDataAdapter adapter = new SqlDataAdapter();
                doc = Txtdocletras.Text + Txtdocnume.Text;
                //dt = Calendar1.SelectedDate;
                //dt = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
                /*sql = "Insert into Amador(Associacao, Sexo, Tipoinscricao, Nome, Data, Docid, Pais, Nacionalidade, Email, Telefone, Estatuto, Categoria, Clube, Notificacoes) values (" + Rdassociacao.Text + ", " +
                 * Rdsexo.Text + ", " + Rdboletim.Text + ", " + Txtnome.Text + ", " + dt + ", " + doc + ", " + Txtpaisnasc.Text + ", " + Txtnacionalidade.Text + ", " + Txtemail.Text + ", " + 
                 * Txttelefone.Text + ", " + Rdestatuto.Text + ", " + Rdcategoria.Text + ", " + Txtclube.Text + ", " + Rdautorizacao.Text + ")";
                command = new SqlCommand(sql, con);
                adapter.InsertCommand = new SqlCommand(sql, con);
                adapter.InsertCommand.ExecuteNonQuery();*/
                SqlCommand cmd = new SqlCommand("insert into Amador(Associacao, Sexo, Tipoinscricao, Nome, Data, Docid, Pais, Nacionalidade, Email, Telefone, Estatuto, Categoria, Clube, Notificacoes) values( @Associacao, @Sexo, @Tipoinscricao, @Nome, " +
                    "@Data, @Docid, @Pais, @Nacionalidade, @Email, @Telefone, @Estatuto, @Categoria, @Clube, @Notificacoes)", con);
                cmd.Parameters.AddWithValue("@Associacao", Rdassociacao.Text);
                cmd.Parameters.AddWithValue("@Sexo", Rdsexo.Text);
                cmd.Parameters.AddWithValue("@Tipoinscricao", Rdboletim.Text);
                cmd.Parameters.AddWithValue("@Nome", Txtnome.Text);
                cmd.Parameters.AddWithValue("@Data", Txtdata.Text);
                cmd.Parameters.AddWithValue("@Docid", doc);
                cmd.Parameters.AddWithValue("@Pais", Txtpaisnasc.Text);
                cmd.Parameters.AddWithValue("@Nacionalidade", Txtnacionalidade.Text);
                cmd.Parameters.AddWithValue("@Email", Txtemail.Text);
                cmd.Parameters.AddWithValue("@Telefone", Txttelefone.Text);
                cmd.Parameters.AddWithValue("@Estatuto", Rdestatuto.Text);
                cmd.Parameters.AddWithValue("@Categoria", Rdcategoria.Text);
                cmd.Parameters.AddWithValue("@Clube", Txtclube.Text);
                cmd.Parameters.AddWithValue("@Notificacoes", Rdautorizacao.Text);

                cmd.ExecuteNonQuery();
                cmd.Dispose();
                con.Close();
                ScriptManager.RegisterStartupScript(this, GetType(), "Registo", "alert('Registo efectuado com sucesso');window.location ='Indice.aspx';", true);
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message.Replace("\'", " ") + "')</script>");
            }         
        }

        protected void Btcancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Indice.aspx");
        }
    }
}