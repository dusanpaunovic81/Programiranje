<%@ Page Title="Unos novog kredita" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Upis_novog_kredita1.aspx.cs" Inherits="Banca_Bianca.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/StyleSheet1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%-- <div class="form-group text-primary">--%><br /><br /><br /><br />
    <asp:Label ID="Label1" class="h4" runat="server" Text="Unesite JMBG:"></asp:Label>
    <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-lg" OnClick="Button1_Click" Text="Proveri" /><br /><br />
    <h2><div id="korisnik_poruka" runat="server"></div></h2><br /><br />
    <asp:Label ID="Label2" class="h4" runat="server" Text="Izaberite vrstu kredita"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
    </asp:DropDownList>
    <asp:Label ID="Label4" class="h4" runat="server" Text="Godišnja kamata u % :"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" class="h4" runat="server" Text="Ime:"></asp:Label>
    <asp:TextBox ID="TextBox2" class="form-control" runat="server" ></asp:TextBox><br /><br />
    <asp:Label ID="Label5" class="h4" runat="server" Text="Prezime:"></asp:Label>
    <asp:TextBox ID="TextBox4" class="form-control" runat="server" ></asp:TextBox><br /><br />
    <asp:Label ID="Label6" class="h4" runat="server" Text="Glavnica:"></asp:Label>
    <asp:TextBox ID="TextBox5" class="form-control" runat="server"></asp:TextBox><br /><br />
    <asp:Label ID="Label7" class="h4" runat="server" Text="Period Otplate:"></asp:Label>
    <asp:TextBox ID="TextBox6" class="form-control" runat="server"></asp:TextBox><br /><br />
    <asp:Button ID="Button2" runat="server" class="btn btn-primary btn-lg" Text="Preračunaj" OnClick="Button2_Click" /><br /><br />
    <asp:Label ID="Label8" class="h4" runat="server" Text="Total iznos za vraćanje:"></asp:Label>
    <asp:TextBox ID="TextBox7" class="form-control" runat="server"></asp:TextBox><br /><br />
    <asp:Label ID="Label9" class="h4" runat="server" Text="Mesečna rata:"></asp:Label>
    <asp:TextBox ID="TextBox8" class="form-control" runat="server"></asp:TextBox><br /><br />
    <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-lg" Text="Odobri" OnClick="Button3_Click" />
    <div id="odobren" runat="server"></div><%--</div>--%>

 
</asp:Content>
