<%@ Page Title="Zaposleni" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zaposleni.aspx.cs" Inherits="Banca_Bianca.Zaposleni" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h2>Ovde zaposleni mogu videti svoje klijente!!!</h2>
    <div>
        <asp:Table ID="Table1" runat="server" Width="337px">
        </asp:Table>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </div>
   
    
</asp:Content>
