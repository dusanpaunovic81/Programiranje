<%@ Page Title="Admin2" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="Admin2.aspx.cs" Inherits="Banca_Bianca.Admin21" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <h2>  <asp:Label ID="Label1" runat="server" Text="Podaci o svim korisnicima:"></asp:Label></h2><br /><br /><br />
        <div>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
  
</asp:Content>