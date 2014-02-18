<%@ Page Title="" Language="C#" MasterPageFile="~/mercenari.master" AutoEventWireup="true" CodeFile="dettaglionews.aspx.cs" Inherits="_dettaglionews" %>

<%@ Register src="uc/menu.ascx" tagname="menu" tagprefix="uc1" %>

<%@ Register src="uc/Appuntamenti.ascx" tagname="Appuntamenti" tagprefix="uc2" %>

<%@ Register src="uc/notizia.ascx" tagname="notizia" tagprefix="uc3" %>

<%-- Aggiungere qui i controlli del contenuto --%>
<asp:Content ID="menu" runat="server" ContentPlaceHolderID="menu">
	<uc1:menu ID="menu1" runat="server" SelectedMenu="notizie" />
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="addheadcontent">
    <link rel="stylesheet" type="text/css" href="/css/news.css" />
    <title runat="server"><% = TitoloPagina %> - Associazione Aranceri Mercenari - Notizie</title>
</asp:Content>

<asp:Content ID="divcontenuto" runat="server" ContentPlaceHolderID="content">
    <form id="form1" runat="server">
    <div class="news">
        <div class="titolo grid_12"><img src="images/stemmi/stella_30.png" alt="Stella Mercenari" /></div>        
        <div class="grid_8">
            
            <uc3:notizia ID="notizia1" runat="server" />
            
        </div>
        <div class="grid_4">
            
            <uc2:Appuntamenti ID="Appuntamenti1" runat="server" />
            
        </div>
    </div>
    </form>
</asp:Content>