<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage/Mercenari2018.master" AutoEventWireup="true" CodeFile="default2018.aspx.cs" Inherits="Default2018" %>

<%@ Register Src="uc/menu.ascx" TagName="menu" TagPrefix="uc1" %>

<%@ Register Src="uc/Photogallery.ascx" TagName="Photogallery" TagPrefix="uc2" %>

<%-- Aggiungere qui i controlli del contenuto --%>
<asp:Content ID="menu" runat="server" ContentPlaceHolderID="menu">
    <uc1:menu ID="menu1" runat="server" />
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="addheadcontent">
    <link rel="stylesheet" type="text/css" href="/css/homepage.css" />
    <title>Associazione Aranceri Mercenari - Home Page</title>
    <meta name="description" content="Sito web dell'Associazione Aranceri Mercenari dello Storico Carnevale di Ivrea. Nel 1974 i Mercenari compaiono sulla scena dello Storico Carnevale di Ivrea col nome I Mercenari d'l purtigal. Sono passati molti anni da allora ma non è mai cambiato lo spirito e l'allegria che da sempre ci contraddistingue all'interno della manifestazione." />
</asp:Content>

<asp:Content ID="divcontenuto" runat="server" ContentPlaceHolderID="content">
    <form id="form1" runat="server">
        <div class="homepage newshome">
            <div class="grid_6">
                <h1>Concorso per le scuole "Il nostro Carnevale"</h1>
                <p class="pnewshome pnewsconcorso">
                    <a href="concorso.aspx" title="Approfondisci">L’Associazione Aranceri Mercenari organizza con la collaborazione del Comune di Ivrea e la Fondazione dello Storico Carnevale, il 4° Concorso di disegno riservato agli alunni delle Scuole Secondarie di Primo Grado dell’Istituto Comprensivo Statale Ivrea 1 e Ivrea 2. e L’Istituto parificato “Cardinal Cagliero”, al fine di sensibilizzare ed educare le giovani generazioni al rispetto e partecipazione al nostro Storico Carnevale.</a>
                </p>
                <div class="leggitutto"><a href="concorso.aspx">Leggi tutto »</a></div>
                <h1><% = TitoloHomePage %></h1>
                <p class="pnewshome"><% = SottoTitoloHomePage %></p>
                <% if (ImmagineHomePage != "")
                    {  %>
                <img src="<% = ImmagineHomePage %>" alt="<% = TitoloHomePage %>" />
                <% } %>

                <div class="pnewshome"><% = TestoHomePage%></div>

            </div>
            <div class="grid_4">
                <!-- Violetta, la forza delle donne -->
                <ul class="notizie">
                    <li class="clearfix"><a href="//www.mercenari.it/dettaglionews.aspx?id=153"><img src="/images/violetta/violetta_web.jpg" /></a></li>
                </ul>

                <asp:Repeater ID="repnews" runat="server">
                    <HeaderTemplate>
                        <h1><a href="//www.mercenari.it/dettaglionews.aspx?id=153">Notizie ed eventi</a></h1>
                        <ul class="notizie">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li class="clearfix">
                            <h2><%# DataBinder.Eval(Container.DataItem, "Titolo")%></h2>
                            <%# getUrlPhoto(((Oggetti.Oggetto)Container.DataItem).Foto, "w2") %>
                            <div><%# DataBinder.Eval(Container.DataItem, "SottoTitolo")%></div>
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
                    <iframe src="http://www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.mercenari.it&amp;layout=button_count&amp;show_faces=true&amp;width=140&amp;action=like&amp;colorscheme=light&amp;height=21" scrolling="no" frameborder="0" style="border: none; overflow: hidden; width: 140px; height: 21px;" allowtransparency="true"></iframe>
                </div>
                <a href="http://www.facebook.com/group.php?gid=33679733468" class="fb" title="Aranceri Mercenari su facebook" target="_blank">
                    <img src="/images/le-facebook.png" alt="Aranceri Mercenari su facebook" />
                </a>
                <asp:Repeater ID="repgallery" runat="server">
                    <HeaderTemplate>
                        <h1>Foto</h1>
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
    </form>
</asp:Content>
