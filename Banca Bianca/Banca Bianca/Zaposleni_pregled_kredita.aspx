﻿<%@ Page Title="Zaposleni pregled kredita" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zaposleni_pregled_kredita.aspx.cs" Inherits="Banca_Bianca.Zaposleni_pregled_kredita1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Content/StyleSheet1.css" rel="stylesheet" />
     <h2>Stranica za pregled kredita</h2>
   <%-- <div class="form-group text-primary">--%><br /><br />
    <asp:Label ID="Label2" class="h4" runat="server" Text="Provera postojanja klijenta"></asp:Label><br />
    <asp:Label ID="Label1" class="h4" runat="server" Text="Unesite JMBG:"></asp:Label>
    <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="btn btn-primary btn-lg" Text="Proveri" />
    <div id="poruka" runat="server"></div>
    <br />
    <br />
    <asp:Label ID="Label3" class="h4" runat="server" Text="Podaci o klijentu:"></asp:Label><br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    <br />
    <asp:Label ID="Label4" class="h4" runat="server" Text="Podaci o aktivnim kreditima:"></asp:Label><br />
    <asp:GridView ID="GridView2" runat="server">
    </asp:GridView>
    <br />
    <br />
    <asp:Label ID="Label6" class="h4" runat="server" Text="Podaci o preostalom iznosu za likvidaciju partije kredita:"></asp:Label>
    <div id="otplate" runat="server">
    </div>

    <br />
    <br />
    <asp:Label ID="Label5" class="h4" runat="server" Text="Podaci o uplatama klijenta:"></asp:Label>
    <asp:GridView ID="GridView3" runat="server">
    </asp:GridView>
    <link href="Content/StyleSheet1.css" rel="stylesheet" />
     <%--   </div>--%>
</asp:Content>
