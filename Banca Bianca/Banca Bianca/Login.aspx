<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Banca_Bianca.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h2>O nama...</h2>
   
   <body>
    <div>
        <form action="/action_page.php">
            <input type="text" placeholder="Username" name="username">
            <input type="password" placeholder="Password" name="psw">
            <input type="submit" value="Uloguj se" class="btn btn-primary btn-lg" onclick="proveraPodataka()">
        </form>
    </div>
</body>
</asp:Content>
