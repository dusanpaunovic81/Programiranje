<%@ Page Title="Moji Krediti" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Moji_krediti.aspx.cs" Inherits="Banca_Bianca.Moji_krediti" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h2>Ovde klijenti mogu videti svoje proizvode i uplate.<asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </h2>
   
    
</asp:Content>
