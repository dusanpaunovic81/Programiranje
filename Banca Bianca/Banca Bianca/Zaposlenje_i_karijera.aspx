<%@ Page Title="Zaposlenje i Karijera" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zaposlenje_i_karijera.aspx.cs" Inherits="Banca_Bianca.Zaposlenje_i_karijera" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <body>
        <div style="font-family: arial,helvetica,sans-serif;">
            <h2>Zaposlenje i Karijera.</h2>
            <h3>Ovde svako može aplicirati za zaposlenje.</h3>

            Nastojimo da zapošljavanjem kvalitetnih profesionalaca i stalnim razvojem potencijala
            <br />
            zaposlenih ostvarimo maksimum u pružanju bankarskih usluga. Zato u Banca Bianca nećete
            <br />
            pronaći samo posao – mi Vam pružamo razvoj, izazov i karijeru.<br />
            Ukoliko želite da se pridružite pobedničkom timu banke broj 1 u Zamundi,<br />
            popunite prijavu za zaposlenje. Svaka prijava se pažljivo analizira a kandidati čije prijave<br />
            najviše odgovaraju zahtevima upražnjenog radnog mesta se uključuju u proces selekcije.
            <br />
            Nakon procene profesionalnih kompetencija kandidati dobijaju informaciju o njihovom daljem
            <br />
            statusu (primljeni, ostaju u bazi za drugu poziciju, neprihvatljivi). Ovo je samo prvi korak....<br />
            Zakoračite u svet mogućeg.<br />
        </div>
       
       <%-- <div>
            <form method="post" name="formaReg">
                <div class="h1 text-center bg-primary text-light jumbotron rounded shadow-lg ">Aplicirajte za posao</div>
                <div class="form-group text-primary">
                    <label for="Ime" class="h4">Ime(*)</label>
                    <input type="text" name="Ime" id="Ime" class="form-control" placeholder="Ime" required autofocus>
                </div>
                <div class="form-group text-primary">
                    <label for="Prezime" class="h4">Prezime(*)</label>
                    <input type="text" name="Prezime" id="Prezime" class="form-control" placeholder="Prezime" required autofocus>
                </div>
                <div class="form-group text-primary">
                    <label for="JMBG" class="h4">JMBG(*)</label>
                    <input type="text" name="JMBG" id="JMBG" class="form-control" placeholder="JMBG" required autofocus>
                </div>
                <div class="form-group text-primary">
                    <label for="email" class="h4">E-mail adresa(*)</label>
                    <input type="email" name="email" id="email" class="form-control" placeholder="E-mail adresa" required>
                </div>
                <div class="form-group text-primary">
                    <label for="korIme" class="h4">Korisničko ime(*)</label>
                    <input type="text" name="korisnicko_ime" id="korIme" class="form-control" placeholder="Korisničko ime" required>
                </div>
                <div class="form-group text-primary">
                    <label for="lozinka" class="h4">Lozinka(*)</label>
                    <input type="password" name="lozinka" id="lozinka" class="form-control" placeholder="Odaberite lozinku" required>
                    <input type="checkbox" onclick="passshow()">Show Password
                </div>
                <div class="form-group text-primary">
                    <label for="lozinka1" class="h4">Ponovljena lozinka(*)</label>
                    <input type="password" name="lozinka1" id="lozinka1" class="form-control" placeholder="Ponovite lozinku" required onkeyup="proveriLozinku()">
                    <!--required>-->
                    <input type="checkbox" onclick="passshow()">Show Password
                </div>
                <div class="form-group text-primary">
                    <label for="datum" class="h4">Datum rođenja(*)</label>
                    <input type="date" name="datum_rodj" id="datum" class="form-control" required>
                </div>
                <div class="form-group text-primary">
                    <label for="adresa" class="h4">Adresa</label>
                    <input type="text" name="adresa" id="adresa" class="form-control" placeholder="Ulica i broj">
                </div>
                <div class="form-group text-primary">
                    <label for="mesto" class="h4">Grad/Mesto</label>
                    <input type="text" name="grad" id="mesto" class="form-control" placeholder="Grad u kom živite">
                </div>
                <div class="form-group text-primary">
                    <label for="mobTel" class="h4">Mobilni telefon(*)</label>
                    <input type="text" name="tel" id="mobTel" class="form-control" placeholder="Mobilni telefon" required>
                </div>
                <div class="form-group text-primary">
                    <label for="fixTel" class="h4">Fiksni telefon</label>
                    <input type="text" name="tel1" id="fixTel" class="form-control" placeholder="Fiksni telefon">
                </div>
                <div class="form-group text-primary">
                    <p class="h4">Pol</p>
                    <label for="musko">Muški</label>
                    <input type="radio" name="pol" value="Muški" id="musko">
                    <label for="zensko">Ženski</label>
                    <input type="radio" name="pol" value="Ženski" id="zensko">
                </div>
                <input type="button" value="Registruj se" class="btn btn-primary btn-lg" onclick="proveraPodataka()">
            </form>
        </div>--%>
    </body>
</asp:Content>
