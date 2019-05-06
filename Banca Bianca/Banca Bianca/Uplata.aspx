<%@ Page Title="Uplatnica" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Uplata.aspx.cs" Inherits="Banca_Bianca.Uplata" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/StyleSheet1.css" rel="stylesheet" />
    <asp:Label ID="Label1" runat="server" Text="Uplatnica"></asp:Label><br /><br />

    <asp:Label ID="Label5" runat="server" Text="Uplatilac"></asp:Label><br /><br />
    <asp:Label ID="Label4" runat="server" Text="Unesite JMBG:"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Provera" class="btn btn-primary btn-lg" OnClick="Button1_Click" /><br /><br />
    <asp:Label ID="Label2" runat="server" Text="Ime:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label3" runat="server" Text="Prezime:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label6" runat="server" Text="Partija kredita:"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label7" runat="server" Text="Iznos uplate:"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
    <asp:Button ID="Button2" runat="server" class="btn btn-primary btn-lg" Text="Izvrsi uplatu" OnClick="Button2_Click" />
    <asp:Button ID="Button3" runat="server" Text="Otkazi" OnClick="Button3_Click" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
