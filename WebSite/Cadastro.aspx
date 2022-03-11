<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="WebSite.Cadastro" %>

<%@ Register src="Login.ascx" tagname="Login" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Aplicação WebForms</title>

    <style>
        form{
            width: 1200px;
            height: auto;
            border: 1px solid #ccc;
            box-shadow: 1px 1px 5px black;

            margin: 0 auto;
        }
        header{
            position: relative;
            background: #dddddd; 
            padding: 5px;
            text-align: center;
        }
        header h1{
            text-align: center;
        }
        main{
            position: relative;
            padding: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1>Inacio.com</h1>
            <p>Bem-Vindo a minha aplicação webforms utilizando o c# como linguagem de programação principa.</p>
        </header>
        <main>
            <div>
                <br />
                <br />
                <uc1:Login ID="Login1" runat="server" />
                <br />
                <br />
                <br />
                <br />
            </div>
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
                            <asp:ImageField DataImageUrlField="Foto" HeaderText="Foto"/>
                        </Columns>                    
                    </asp:GridView>
                </asp:Panel>
            </div>
        </main>
    </form>
</body>
</html>
