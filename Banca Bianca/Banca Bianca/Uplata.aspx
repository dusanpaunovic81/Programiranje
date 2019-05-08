<%@ Page Title="Uplatnica" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Uplata.aspx.cs" Inherits="Banca_Bianca.Uplata" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/StyleSheet1.css" rel="stylesheet" />
  <%--  <div class="form-group text-primary">--%><br />
    <asp:Label ID="Label1" class="h2" runat="server" Text="Uplatnica"></asp:Label><br />
    <div id="uplata" class="h2" runat="server"></div>
    <%--<asp:Label ID="Label5" class="h2" runat="server" Text="Uplatilac"></asp:Label>--%><br />
    <asp:Label ID="Label4" class="h4" runat="server" Text="Unesite JMBG uplatioca:"></asp:Label>
    <asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Provera" class="btn btn-primary btn-lg" OnClick="Button1_Click" /><br /><br />
     <div class="col-4 jumbotron" style="padding:10px;width:300px;background-color:#f2f4f4; border:solid 1px; border-color:black;">
    <asp:Label ID="Label2" class="h4" runat="server" Text="Ime:"></asp:Label>
    <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label3" class="h4" runat="server" Text="Prezime:"></asp:Label>
    <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label6" class="h4" runat="server" Text="Partija kredita:"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
    <asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label7" class="h4" runat="server" Text="Iznos uplate:"></asp:Label>
    <asp:TextBox ID="TextBox5" class="form-control" runat="server"></asp:TextBox><br /></div>
    <asp:Button ID="Button2" runat="server" class="btn btn-primary btn-lg" Text="Izvrši uplatu" OnClick="Button2_Click" />
    <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-lg" Text="Otkaži" OnClick="Button3_Click" />
     <%--   </div>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
