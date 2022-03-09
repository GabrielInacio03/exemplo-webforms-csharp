<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="WebSite.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel runat="server" ID="pnlCadastro">
                <asp:Label Text="Nome: " runat="server" ID="lblNome"/>
                <asp:TextBox runat="server" ID="txtNome"/>
                &nbsp;&nbsp;&nbsp;
                <asp:Label Text="Telefone: " runat="server" ID="lblTelefone"/>
                <asp:TextBox runat="server" ID="txtTelefone"/>
                <br />
                <br />
                <asp:Label Text="Foto: " runat="server" ID="lblFoto"/>
                <asp:FileUpload runat="server" ID="fileFoto"/>
                <br /><br />
                <asp:Button Text="Cadastrar" 
                    runat="server"
                    ID="btnCadastro" OnClick="btnCadastro_Click"/>
            </asp:Panel>
            <asp:Panel runat="server" ID="pnlResultado">                       
                <asp:Button Text="Voltar" runat="server" ID="btnVoltar" OnClick="btnVoltar_Click"/>
                <br />
                <hr />
                <br />
                <asp:GridView runat="server" ID="gridResultado"
                    AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="Nome" HeaderText="Nome"/>
                        <asp:BoundField DataField="Telefone" HeaderText="Telefone"/>
                        <asp:ImageField DataImageUrlField="Foto" HeaderText="Foto" />
                    </Columns>                    
                </asp:GridView>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
