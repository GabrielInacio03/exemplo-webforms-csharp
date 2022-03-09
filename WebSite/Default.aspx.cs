using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSite.Modelo;

namespace WebSite
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Contato> contatos = new List<Contato>();
        protected void Page_Load(object sender, EventArgs e)
        {
            contatos.Add(new Contato() { Nome = "João" , Id = 1});
            contatos.Add(new Contato() { Nome = "André" , Id = 2});
            contatos.Add(new Contato() { Nome = "Inacio" , Id = 3});
            contatos.Add(new Contato() { Nome = "Poliana" , Id = 4});

            ddlContatos.DataSource = contatos;
            ddlContatos.DataValueField = "Id";
            ddlContatos.DataTextField = "Nome";
            ddlContatos.DataBind();

            gridView.DataSource = contatos;
            gridView.DataBind();

            selectManual.InnerHtml += "<select>";
            foreach (var valor in contatos)
            {
                selectManual.InnerHtml += "<option value='"+ valor.Id +"'>" + valor.Nome + "</option>";
            }
            selectManual.InnerHtml += "</select>";
        }

        protected void btnMensagem_Click(object sender, EventArgs e)
        {
            //Response.Write("Olá Mundo " + txtMensagem.Text);
            
            Response.Write("Olá " + Request["txtMensagem"] + "<br>");
            Response.Write("Telefone: " + Request["telefone"] + "<br>");
            Response.Write("Nome selecionado: " + Request["selectManual"]);

            //Response.Write("<script>alert('Você entrou no sistema')</script>");
        }
    }
 
}