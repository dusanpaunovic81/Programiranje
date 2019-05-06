<%@ Page Title="Admin2" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="Admin2.aspx.cs" Inherits="Banca_Bianca.Admin21" %>

 
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <link href="Content/StyleSheet1.css" rel="stylesheet" />
  <h2>  &nbsp;Promena prava pristupa Klijenta u Zaposlenog</h2><br />
        <div>
            <br />
    <asp:Label ID="Label2" runat="server" Text="Unesite JMBG:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-lg" OnClick="Button1_Click" Text="Proveri" />
            <br />
    <asp:Label ID="Label3" runat="server" Text="Ime:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
    <asp:Label ID="Label5" runat="server" Text="Prezime:"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox>
            <br /><br /><br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Promeni u Zaposleni" class="btn btn-primary btn-lg" Width="209px"/>
            <br /><br /><br />
            <h3><div id="odobren" runat="server"></div></h3>
            <br /><br /><br />
          <h2>  <asp:Label ID="Label1" runat="server" Text="Podaci o svim korisnicima:"></asp:Label></h2>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
  
</asp:Content>