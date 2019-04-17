<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Banca_Bianca.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h2>Stranica za logovanje</h2>
   
   
    <div>
        <!--  <form action="/action_page.php">  -->
            <%--<input type="text" placeholder="Username" name="username">
            <input type="password" placeholder="Password" name="psw">
            <input type="submit" value="Uloguj se" class="btn btn-primary btn-lg" onclick="proveraPodataka()">--%>
      <%--  </form>--%>
        <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Uloguj se" OnClick="Button1_Click" class="btn btn-primary btn-lg" />
    </div>

</asp:Content>
