<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="WebSite.Login" %>
<div class="login">
    <div>
        <asp:Label Text="Login" runat="server" ID="lblLogin"/>
        <asp:TextBox runat="server" ID="txtLogin"/>
    </div>
    <div>
        <asp:Label Text="Senha" runat="server" ID="lblSenha"/>
        <asp:TextBox runat="server" ID="txtSenha" TextMode="Password"/>
    </div>
    <div>
        <asp:Button Text="Login" runat="server" ID="btnLogin"/>
    </div>
</div>