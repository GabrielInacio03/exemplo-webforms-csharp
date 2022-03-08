using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMensagem_Click(object sender, EventArgs e)
        {
            //Response.Write("Olá Mundo " + txtMensagem.Text);
            Response.Write("Olá " + Request["txtMensagem"]);
            Response.Write("<script>alert('Você entrou no sistema')</script>");
        }
    }
}