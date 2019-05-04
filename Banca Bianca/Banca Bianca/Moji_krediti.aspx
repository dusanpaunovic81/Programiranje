<%@ Page Title="Moji Krediti" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Moji_krediti.aspx.cs" Inherits="Banca_Bianca.Moji_krediti" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Content/StyleSheet1.css"/>
   
   <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Podaci o klijentu:"></asp:Label><br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Podaci o aktivnim kreditima:"></asp:Label><br />
    <asp:GridView ID="GridView2" runat="server">
    </asp:GridView>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="Podaci o preostalom iznosu za likvidaciju partije kredita:"></asp:Label>
    <div id="otplate" runat="server">
    </div>

    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Podaci o uplatama klijenta:"></asp:Label>
    <asp:GridView ID="GridView3" runat="server">
    </asp:GridView>
    <link href="Content/StyleSheet1.css" rel="stylesheet" />
    
</asp:Content>
