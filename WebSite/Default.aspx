<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebSite.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox runat="server" ID="txtMensagem"/>
            <input type="text" name="telefone" id="telefone" runat="server" />

            <asp:Button Text="Clique" runat="server" ID="btnMensagem" OnClick="btnMensagem_Click"/>
            <asp:DropDownList ID="ddlContatos" runat="server">               
            </asp:DropDownList>
            
            &nbsp;&nbsp;&nbsp;
            
            <div id="selectManual" name="selectManual" runat="server">            
            </div>
            <%--<select id="selectManual" name="selectManual">
                <% foreach (var valor in contatos)
                   { %>
                    <option><%= valor %></option>
                <% } %>
            </select>--%>
            <br />
            <asp:GridView runat="server" ID="gridView"></asp:GridView>
        </div>
    </form>
</body>
</html>
