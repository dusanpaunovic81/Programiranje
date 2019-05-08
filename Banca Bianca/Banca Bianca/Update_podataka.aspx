<%@ Page Title="Update_podataka" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update_podataka.aspx.cs" Inherits="Banca_Bianca.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Content/StyleSheet1.css" rel="stylesheet" />
    <%-- <div class="form-group text-primary">--%><br />
    <br />
    <asp:Label ID="Label116" class="h2" runat="server" Text="Stranica za update podataka"></asp:Label><br />
    <br />
    <h2>
        <div id="poruka" runat="server"></div>
        <div id="izmena_uneta" runat="server"></div>
    </h2>
    <br />
    <asp:Label ID="Label2" class="h4" runat="server" Text="Unesite JMBG:"></asp:Label>
    <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-lg" OnClick="Button1_Click" Text="Proveri" /><br />
    <br />
    <br />
    <div class="col-4 jumbotron" style="padding: 10px; width: 300px; background-color: #f2f4f4; border: solid 1px; border-color: black;">
        <asp:Label ID="Label3" class="h4" runat="server" Text="Ime:"></asp:Label>
        <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" class="h4" runat="server" Text="Prezime:"></asp:Label>
        <asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" class="h4" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" class="h4" runat="server" Text="Adresa:"></asp:Label>
        <asp:TextBox ID="TextBox5" class="form-control" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" class="h4" runat="server" Text="Mesto:"></asp:Label>
        <asp:TextBox ID="TextBox6" class="form-control" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label8" class="h4" runat="server" Text="Mobilni:"></asp:Label>
        <asp:TextBox ID="TextBox7" class="form-control" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label9" class="h4" runat="server" Text="Fixni:"></asp:Label>
        <asp:TextBox ID="TextBox8" class="form-control" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label10" class="h4" runat="server" Text="Pol:"></asp:Label>
        <asp:TextBox ID="TextBox9" class="form-control" runat="server"></asp:TextBox>
    </div>

    <asp:Button ID="Button2" runat="server" Text="Unesi izmene" class="btn btn-primary btn-lg" OnClick="Button2_Click" />
    <br />
    <br />
    <br />
    <h2>
        <asp:Label ID="Label1" class="h4" runat="server" Text="Podaci o korisniku:"></asp:Label><br />
    </h2>

    <asp:GridView ID="GridView2" runat="server" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
    </asp:GridView>
    <br />
    <h2>
        <asp:Label ID="Label11" class="h4" runat="server" Text="Podaci o svim korisnicima:"></asp:Label><br />
    </h2>

    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <%--  </div>--%>
</asp:Content>
