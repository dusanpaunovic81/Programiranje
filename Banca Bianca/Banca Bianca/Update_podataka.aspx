<%@ Page Title="WebForm1" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update_podataka.aspx.cs" Inherits="Banca_Bianca.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="Content/StyleSheet1.css" rel="stylesheet" />
    <br />    <asp:Label ID="Label2" runat="server" Text="Unesite JMBG:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-lg" OnClick="Button1_Click" Text="Proveri" /><br />
     <br /><br /><br />
    <h2><div id="poruka" runat="server"></div></h2>
    <br /><br /><br />
     <asp:Label ID="Label3" runat="server" Text="Ime:"></asp:Label>
     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
     <br />
     <asp:Label ID="Label4" runat="server" Text="Prezime:"></asp:Label>
     <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
     <br />
     <asp:Label ID="Label5" runat="server" Text="Email:"></asp:Label>
     <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
     <br />
     <asp:Label ID="Label6" runat="server" Text="Adresa:"></asp:Label>
     <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
     <br />
     <asp:Label ID="Label7" runat="server" Text="Mesto:"></asp:Label>
     <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
     <br />
     <asp:Label ID="Label8" runat="server" Text="Mobilni:"></asp:Label>
     <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
     <br />
     <asp:Label ID="Label9" runat="server" Text="Fixni:"></asp:Label>
     <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
     <br />
     <asp:Label ID="Label10" runat="server" Text="Pol:"></asp:Label>
     <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
     <br />
     <br />
     <asp:Button ID="Button2" runat="server" Text="Unesi izmene" class="btn btn-primary btn-lg" OnClick="Button2_Click" />
     <br />
     <br />
     <h2><div id="izmena_uneta" runat="server"></div></h2>
     <br />
     <h2><asp:Label ID="Label1" runat="server" Text="Podaci o korisniku:"></asp:Label><br /></h2>
     <br />
     <br />
     <asp:GridView ID="GridView2" runat="server" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
     </asp:GridView>
     <br />
     <br />
     <h2><asp:Label ID="Label11" runat="server" Text="Podaci o svim korisnicima:"></asp:Label><br /></h2>
     <br />
     <br />
     <asp:GridView ID="GridView1" runat="server"></asp:GridView>

</asp:Content>
