<%@ Page Title="Zaposleni" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zaposleni.aspx.cs" Inherits="Banca_Bianca.Zaposleni" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Content/StyleSheet1.css"/>
    <h2><%: Title %>.</h2>
    <h2>Ovde zaposleni mogu videti svoje klijente!!!</h2>
    <div>
      
        <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-lg" OnClick="Button1_Click" Text="Upis novog kredita" />
        <asp:Button ID="Button2" runat="server" class="btn btn-primary btn-lg" Text="Pregled kredita" OnClick="Button2_Click" />
        <asp:Button ID="Button4" runat="server" class="btn btn-primary btn-lg" Text="Uplata"  OnClick="Button4_Click" />
        <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-lg" Text="Update podataka klijenta" OnClick="Button3_Click" Width="239px" />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </div>
   
    <script src="Scripts/JavaScript.js"></script> 
</asp:Content>
