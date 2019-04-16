<%@ Page Title="Moji Krediti" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Moji_krediti.aspx.cs" Inherits="Banca_Bianca.Moji_krediti" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Content/StyleSheet1.css"/>
   
    <h2><%: Title %>
        <asp:Label ID="Label1" runat="server" Text="Unesite JMBG"></asp:Label>
        .<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Proveri" />
        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
    </h2>

    <div id="odgovor" runat="server"></div>

    <h2>Ovde klijenti mogu videti svoje proizvode i uplate.</h2>
        <div id="grid_tabela" class="grid_tabela">
        <asp:GridView ID="GridView1" class="GridView1" runat="server">
        </asp:GridView></div>
    
   
    
</asp:Content>
