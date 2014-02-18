<%@ Page Title="" Language="C#" MasterPageFile="~/mercenari.master" AutoEventWireup="true" CodeFile="eventi.aspx.cs" Inherits="_news" %>

<%@ Register src="uc/menu.ascx" tagname="menu" tagprefix="uc1" %>

<%@ Register src="uc/Appuntamenti.ascx" tagname="Appuntamenti" tagprefix="uc2" %>

<%-- Aggiungere qui i controlli del contenuto --%>
<asp:Content ID="menu" runat="server" ContentPlaceHolderID="menu">
	<uc1:menu ID="menu1" runat="server" SelectedMenu="notizie" />
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="addheadcontent">
    <link rel="stylesheet" type="text/css" href="/css/news.css" />
    <title>Associazione Aranceri Mercenari - Notizie</title>
</asp:Content>

<asp:Content ID="divcontenuto" runat="server" ContentPlaceHolderID="content">
    <form id="form1" runat="server">
    <div class="news">
        <div class="titolo grid_12"><img src="images/stemmi/stella_30.png" alt="Stella Mercenari" /></div>        
        <div class="grid_8">
             <asp:Repeater ID="repappuntamenti" runat="server">
			<HeaderTemplate>
			    <h1>Prossimi appuntamenti Mercenari</h1>
			    <ul class="notizie">
			</HeaderTemplate>
			<ItemTemplate>
			<li>
				<h2>
				    <a href="dettaglionews.aspx?id=<%# DataBinder.Eval(Container.DataItem, "ID")%>">
				        <%# DataBinder.Eval(Container.DataItem, "Titolo")%> (<%# ((Oggetti.Oggetto)Container.DataItem).DataInserimento.ToString("dd MMM yyyy", new System.Globalization.CultureInfo("it-IT")) %>)
                    </a>
                </h2>
				<div class="divnews"><%# DataBinder.Eval(Container.DataItem, "SottoTitolo")%></div>				
				<div class="leggitutto fr"><a href="dettaglioappuntamento.aspx?id=<%# DataBinder.Eval(Container.DataItem, "ID")%>">Leggi tutto &raquo;</a></div>
            </li>
			</ItemTemplate>
			<FooterTemplate>
			    </ul>
			</FooterTemplate>
        </asp:Repeater>
        </div>
        <div class="grid_4">
            
            <uc2:Appuntamenti ID="Appuntamenti1" runat="server" />
            
        </div>
    </div>
    </form>
</asp:Content>