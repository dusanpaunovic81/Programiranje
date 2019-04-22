<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zaposleni_pregled_kredita.aspx.cs" Inherits="Banca_Bianca.Zaposleni_pregled_kredita1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Unesite JMBG:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="btn btn-primary btn-lg" Text="Proveri" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    <br />
    <asp:GridView ID="GridView2" runat="server">
    </asp:GridView>
    <br />
    <br />
    <div id="otplate" runat="server">
    </div>

    <br />
    <br />
    <asp:GridView ID="GridView3" runat="server">
    </asp:GridView>

</asp:Content>
