<%@ Page Title="" Language="C#" MasterPageFile="~/mercenari.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_default" %>

<%@ Register src="uc/menu.ascx" tagname="menu" tagprefix="uc1" %>

<%-- Aggiungere qui i controlli del contenuto --%>
<asp:Content ID="menu" runat="server" ContentPlaceHolderID="menu">
	<uc1:menu ID="menu1" runat="server" />
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="addheadcontent">
    <link rel="stylesheet" type="text/css" href="/css/homepage.css" />
    <title>Associazione Aranceri Mercenari - Home Page</title>
    <meta name="description" content="Sito web dell'Associazione Aranceri Mercenari dello Storico Carnevale di Ivrea. Nel 1974 i Mercenari compaiono sulla scena dello Storico Carnevale di Ivrea col nome I Mercenari d'l purtigal. Sono passati molti anni da allora ma non è mai cambiato lo spirito e l'allegria che da sempre ci contraddistingue all'interno della manifestazione."  />
</asp:Content>

<asp:Content ID="divcontenuto" runat="server" ContentPlaceHolderID="content">
    <div class="homepage newshome">
        <div class="grid_6">
            <h1><% = TitoloHomePage %></h1>
            <p class="pnewshome"><% = SottoTitoloHomePage %></p>
            <img src="<% = ImmagineHomePage %>" alt="<% = TitoloHomePage %>" />
            <div class="pnewshome"><% = TestoHomePage%></div>

            <!-- Twitter -->
            <a class="twitter-timeline" data-dnt=true href="https://twitter.com/MercenariArance" data-widget-id="283918125215399936">Tweets di @MercenariArance</a>
            <script>                !function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = "//platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } } (document, "script", "twitter-wjs");
            </script>
        </div>
        <div class="grid_4">
        <asp:Repeater ID="repnews" runat="server">
			<HeaderTemplate>
			    <h1><a href="news.aspx">Notizie ed eventi</a></h1>
			    <ul class="notizie">
			</HeaderTemplate>
			<ItemTemplate>
			<li class="clearfix">
				<h2><%# DataBinder.Eval(Container.DataItem, "Titolo")%></h2>
				<%# getUrlPhoto(((Oggetti.Oggetto)Container.DataItem).Foto, "w2") %>
				<div><%# ((Oggetti.Oggetto)Container.DataItem).DataInserimento.ToString("dd MMM yyyy", new System.Globalization.CultureInfo("it-IT")) %> - <%# DataBinder.Eval(Container.DataItem, "SottoTitolo")%></div>				
				<div class="leggitutto"><a href="dettaglionews.aspx?id=<%# DataBinder.Eval(Container.DataItem, "ID")%>">Leggi tutto &raquo;</a></div>
            </li>
			</ItemTemplate>
			<FooterTemplate>
			    </ul>
			</FooterTemplate>
        </asp:Repeater>
        
        <!--
        <asp:Repeater ID="repEventi" runat="server">
			<HeaderTemplate>
			    <h1>Appuntamenti</h1>
			    <ul class="appuntamenti">
			</HeaderTemplate>
			<ItemTemplate>
			    <li>
				    <h2><%# DataBinder.Eval(Container.DataItem, "Titolo")%></h2>
				    <div class="fl"><%# Utility.getUrlPhoto(((Oggetti.Oggetto)Container.DataItem).Foto, "w2") %></div>
				    <div class="newsappuntamenti"><%# DataBinder.Eval(Container.DataItem, "SottoTitolo")%></div>
                    <div class="leggitutto"><a href="dettaglioeventi.aspx?id=<%# DataBinder.Eval(Container.DataItem, "ID")%>">Leggi tutto &raquo;</a></div>			
				</li>
			</ItemTemplate>
			<AlternatingItemTemplate>
			    <li>
				    <h2><%# DataBinder.Eval(Container.DataItem, "Titolo")%></h2>
				    <div class="fr"><%# Utility.getUrlPhoto(((Oggetti.Oggetto)Container.DataItem).Foto, "w2") %></div>
				    <div class="newsappuntamenti"><%# DataBinder.Eval(Container.DataItem, "SottoTitolo")%></div>
                    <div class="leggitutto"><a href="dettaglioeventi.aspx?id=<%# DataBinder.Eval(Container.DataItem, "ID")%>">Leggi tutto &raquo;</a></div>			
				</li>			    
			</AlternatingItemTemplate>
			<FooterTemplate>
			    </ul>
			</FooterTemplate>
        </asp:Repeater>
        -->
        </div>
        
        <div class="grid_2 photogallery">
            <h1>Facebook</h1>
            <div class="fb">
                <iframe src="http://www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.mercenari.it&amp;layout=button_count&amp;show_faces=true&amp;width=140&amp;action=like&amp;colorscheme=light&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:140px; height:21px;" allowTransparency="true"></iframe>
            </div>
            <a href="http://www.facebook.com/group.php?gid=33679733468" class="fb" title="Aranceri Mercenari su facebook" target="_blank">
                <img src="/images/le-facebook.png" alt="Aranceri Mercenari su facebook" />
            </a>
            <asp:Repeater ID="repgallery" runat="server">
					<HeaderTemplate><h1>Foto</h1>
					    <ul class="fotohome">
					</HeaderTemplate>
					<ItemTemplate>
					    <li>
						    <h2><%# DataBinder.Eval(Container.DataItem, "Titolo")%></h2>
						    <a href="photogallery.aspx?id=<%# DataBinder.Eval(Container.DataItem, "ID")%>" title="<%# DataBinder.Eval(Container.DataItem, "Titolo")%>">
						        <%# Utility.getUrlPhoto(((Oggetti.Oggetto)Container.DataItem).Foto, "w2") %>
						    </a>
						</li>
					</ItemTemplate>
					<FooterTemplate>
					    </ul>
					</FooterTemplate>
        </asp:Repeater>
            

        </div>
    </div>
</asp:Content>