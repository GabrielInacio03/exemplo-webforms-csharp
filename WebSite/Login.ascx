<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="WebSite.Login" %>
<style>
    .login{        
        width: 90%;
        height: auto;
        margin: 0 auto;
    }
    .inputs{
        display: flex;
        flex-wrap: wrap;
        align-items: center;
        justify-content: space-around;
        width: 50%;
        margin: auto;
    }
   
</style>
<div class="login">
    <div class="inputs">
        <div>
            <asp:Label Text="Login" runat="server" ID="lblLogin"/>
            <asp:TextBox runat="server" ID="txtLogin" Width="100%"/>
        </div>
        <div>
            <asp:Label Text="Senha" runat="server" ID="lblSenha"/>
            <asp:TextBox runat="server" ID="txtSenha" TextMode="Password" Width="100%"/>
        </div>
    </div>
    <div>
        <asp:Button Text="Login" runat="server" ID="btnLogin"/>
        <br />
        <br />
        <asp:Label Text="" runat="server" ID="lblMensagem"/>
    </div>
</div>
