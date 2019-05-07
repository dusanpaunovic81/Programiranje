<%@ Page Title="Registracija" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registracija.aspx.cs" Inherits="Banca_Bianca.Registracija" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/JavaScript.js">
       
    </script>
    <link href="Content/StyleSheet1.css" rel="stylesheet" />
    <div class="login-container">
        <h3>Ukoliko već imate nalog, ulogujte se <a href="Login.aspx">ovde</a></h3>

    </div>
 <%--   <h2>Registracija</h2>--%>
    <div>
        <!--<form method="post" name="formaReg">-->
        <div class="h1 text-center bg-primary text-light jumbotron rounded shadow-lg "  style=" background-color:#f2f4f4; border:solid 1px; border-color:black;">Forma za registraciju</div>
       <%-- <div class="form-group text-primary">--%>
         <div class="h4 text-center bg-primary jumbotron rounded shadow-lg "  style=" background-color:#f2f4f4; border:solid 1px; border-color:black; width:400px;">
            <label for="Ime" class="h4">Ime(*)</label>
            <input type="text" name="Ime" id="Ime" class="form-control" placeholder="Ime" required autofocus>
       <%-- </div>
        <div class="form-group text-primary">--%>
            <label for="Prezime" class="h4">Prezime(*)</label>
            <input type="text" name="Prezime" id="Prezime" class="form-control" placeholder="Prezime" required autofocus>
       <%-- </div>
        <div class="form-group text-primary">--%>
            <label for="JMBG" class="h4">JMBG(*)</label>
            <input type="text" name="JMBG" id="JMBG" class="form-control" placeholder="JMBG" required autofocus>
       <%-- </div>
        <div class="form-group text-primary">--%>
            <label for="email" class="h4">E-mail adresa(*)</label>
            <input type="email" name="email" id="email" class="form-control" placeholder="E-mail adresa" required>
       <%-- </div>
        <div class="form-group text-primary">--%>
            <label for="korIme" class="h4">Korisničko ime(*)</label>
            <input type="text" name="korisnicko_ime" id="korIme" class="form-control" placeholder="Korisničko ime" required>
        <%--</div>
        <div class="form-group text-primary">--%>
            <label for="lozinka" class="h4">Lozinka(*)</label>
            <input type="password" name="lozinka" id="lozinka" class="form-control" placeholder="Odaberite lozinku" required>
            <input type="checkbox" onclick="passshow1()">Show Password
       <%-- </div>
        <div class="form-group text-primary">--%>
            <label for="lozinka1" class="h4">Ponovljena lozinka(*)</label>
            <input type="password" name="lozinka1" id="lozinka1" class="form-control" placeholder="Ponovite lozinku" oninput="proveriLozinku()" required>
            <!--required>-->
       <%-- </div>
        <div class="form-group text-primary">--%>
            <label for="datum" class="h4">Datum rođenja(*)</label>
            <input type="date" name="datum_rodj" id="datum" class="form-control" required>
       <%-- </div>
        <div class="form-group text-primary">--%>
            <label for="adresa" class="h4">Adresa</label>
            <input type="text" name="adresa" id="adresa" class="form-control" placeholder="Ulica i broj">
        <%--</div>
        <div class="form-group text-primary">--%>
            <label for="mesto" class="h4">Grad/Mesto</label>
            <input type="text" name="grad" id="mesto" class="form-control" placeholder="Grad u kom živite">
       <%-- </div>
        <div class="form-group text-primary">--%>
            <label for="mobTel" class="h4">Mobilni telefon(*)</label>
            <input type="text" name="tel" id="mobTel" class="form-control" placeholder="Mobilni telefon" required>
        <%--</div>
        <div class="form-group text-primary">--%>
            <label for="fixTel" class="h4">Fiksni telefon</label>
            <input type="text" name="tel1" id="fixTel" class="form-control" placeholder="Fiksni telefon">
       </div>
        <%-- <div class="form-group text-primary">--%>
            <%--<p class="h4">Pol</p>
            <label for="musko">Muški</label>
            <input type="radio" name="pol" value="Muški" id="musko" runat="server">
            <label for="zensko">Ženski</label>
            <input type="radio" name="pol" value="Ženski" runat="server" id="zensko">
        </div>--%>
        <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" OnClick="Button1_Click" Text="Registruj se" onblur="proveraPodataka()" />
    </div>
    <script src="Scripts/JavaScript.js"></script>
</asp:Content>
