<%@ Page Title="Zaposleni" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zaposleni.aspx.cs" Inherits="Banca_Bianca.Zaposleni" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Content/StyleSheet1.css"/>
    <h2><%: Title %>.</h2>
    <h2>Ovde zaposleni mogu videti svoje klijente!!!</h2>
    <div>
       <%-- <asp:Table ID="Table1" runat="server" Width="337px">
        </asp:Table>--%>
        <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-lg" OnClick="Button1_Click" Text="Upis novog kredita" />
        <asp:Button ID="Button2" runat="server" class="btn btn-primary btn-lg" Text="Pregled kredita" OnClick="Button2_Click" />
        <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
  Uplatnica
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Uplatnica</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <asp:Label Text="Uplatilac"  runat="server" /><br />
          <asp:Label Text="Unesite JMBG:" runat="server" />
          <asp:TextBox runat="server" pattern="[0-9]{13}" title="JMBG maksimalna duzina 13 brojeva"  />
          <asp:Button ID="Button3" runat="server" Text="Provera klijenta" /><br />
          <asp:Label Text="Ime:" runat="server"  />
          <asp:TextBox runat="server" id="Ime" Enabled="false" /><br />
          <asp:Label Text="Prezime:"  runat="server" />
          <asp:TextBox runat="server" id="Prezime" Enabled="false" /><br />
          <asp:Label Text="Partija kredita:"  runat="server" />
          <asp:TextBox runat="server" id="partija_kredita" pattern="[0-9]+" /><br />
          <asp:Label Text="Iznos uplate:"  runat="server" />
          <asp:TextBox runat="server" id="Iznos_uplate" pattern="[0-9]+" /><br />
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary btn-lg">Izvrsi uplatu</button>
      </div>
    </div>
  </div>
</div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </div>
   
    
</asp:Content>
