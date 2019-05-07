<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reset_lozinke.aspx.cs" Inherits="Banca_Bianca.Reset_lozinke" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <%--  <div class="form-group text-primary">--%>
    <h2>Stranica za resetovanje lozinke</h2>
   <%--  </div>--%>
    <link href="Content/StyleSheet1.css" rel="stylesheet" />
    <br />
    <br />
    <br />
   <%-- <div class="form-group text-primary">--%>
            <label for="korIme" class="h4" >Unesi JMBG:</label>
    <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="  JMBG"></asp:TextBox>
      <%--  </div>--%>
    <asp:Button ID="Button1" runat="server" Text="Proveri" class="btn btn-primary btn-lg" OnClick="Button1_Click" />
    <br />
    <br />
    <br />
    <%-- <div id="reset" runat="server">--%>
   <%-- <div class="form-group text-primary">--%>
            <label for="korIme" class="h4">Ime</label><br />
            <asp:TextBox ID="TextBox2" class="form-control" runat="server"  placeholder="  Ime"></asp:TextBox><br />
       <%-- </div>--%>
      <%--  <div class="form-group text-primary">--%>
            <label for="korIme" class="h4">Prezime</label><br />
            <asp:TextBox ID="TextBox3" class="form-control" runat="server"  placeholder="  Prezime"></asp:TextBox>
      <%--  </div>--%>
    <br />
    <%--<div class="form-group text-primary">--%>
        <label for="email" class="h4">E-mail adresa(*)</label>
        <input type="email" name="email" id="email" class="form-control" placeholder="E-mail adresa">
   <%-- </div>--%>
   <%-- <div class="form-group text-primary">--%>
        <label for="korIme" class="h4">Korisničko ime(*)</label>
        <input type="text" name="korisnicko_ime" id="korIme" class="form-control" placeholder="Korisničko ime">
 <%--   </div>
    <div class="form-group text-primary">--%>
        <label for="lozinka" class="h4">Lozinka(*)</label>
        <input type="password" name="lozinka" id="lozinka" class="form-control" placeholder="Odaberite lozinku">
        <input type="checkbox" onclick="passshow1()">Show Password
   <%-- </div>
    <div class="form-group text-primary">--%>
        <label for="lozinka1" class="h4">Ponovljena lozinka(*)</label>
        <input type="password" name="lozinka1" id="lozinka1" class="form-control" placeholder="Ponovite lozinku" oninput="proveriLozinku()">
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Promeni lozinku" class="btn btn-primary btn-lg" OnClick="Button2_Click" />
        <h2>
            <div id="izmena_lozinke" runat="server"></div>
        </h2>

        <%-- </div>--%>
        <script src="Scripts/JavaScript.js"></script>
  <%--  </div>--%>
</asp:Content>
