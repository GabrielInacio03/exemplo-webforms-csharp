using System;
using WebSite.Modelo;

namespace WebSite
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ctrLogin.Mensagem = "Este é o formulário principal";
            MostrarLista();
        }

        private void MostrarLista()
        {

            pnlResultado.Visible = true;
            pnlCadastro.Visible = false;

            gridResultado.DataSource = Usuario.lista;
            gridResultado.DataBind();
        }
        private void MostrarCadastro()
        {
            pnlResultado.Visible = false;
            pnlCadastro.Visible = true;                    
        }

        protected void btnCadastro_Click(object sender, EventArgs e)
        {
            //upload do arquivo
            string caminhoArquivo = AppDomain.CurrentDomain.BaseDirectory + System.Configuration.ConfigurationManager.AppSettings["caminhoArquivo"] + @"\" + fileFoto.FileName; //path do arquivo fisico
            fileFoto.SaveAs(caminhoArquivo);

            Usuario usuario = new Usuario() { Nome = txtNome.Text, Telefone = txtTelefone.Text, Foto = System.Configuration.ConfigurationManager.AppSettings["caminhoArquivo"].Replace(@"\", "/")+ "/" + fileFoto.FileName }; //path de internet
            usuario.Salvar();

            txtNome.Text = "";
            txtTelefone.Text = "";

            MostrarLista();

        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            MostrarCadastro();
           
        }
    }
   
}