<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Banca_Bianca.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
 <%--   <h2><%: Title %>.</h2>--%>
    <h2>Stranica za logovanje</h2>
    <link href="Content/StyleSheet1.css" rel="stylesheet" />
   
    
       <div class="col-4 jumbotron" style="padding:10px;width:300px;background-color:#f2f4f4; border:solid 1px; border-color:black;">
        <asp:Label ID="Label1" runat="server" class="h4" Text="Username:"></asp:Label>
        <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
    
        <asp:Label ID="Label2" runat="server" class="h4" Text="Password:"></asp:Label>
        <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="Password"></asp:TextBox></div>
        <asp:Button ID="Button1" runat="server" Text="Uloguj se" OnClick="Button1_Click" class="btn btn-primary btn-lg" />
    
    <h2><div id="los_pass" runat="server"></div></h2>
</asp:Content>
