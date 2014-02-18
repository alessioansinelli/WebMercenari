<%@ Page Title="" Language="C#" MasterPageFile="~/mercenari.master" AutoEventWireup="true"
    CodeFile="news.aspx.cs" Inherits="_news" %>

<%@ Register Src="uc/menu.ascx" TagName="menu" TagPrefix="uc1" %>
<%@ Register Src="uc/Appuntamenti.ascx" TagName="Appuntamenti" TagPrefix="uc2" %>
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
        <div class="titolo grid_12">
            <img src="images/stemmi/stella_30.png" alt="Stella Mercenari" /></div>
        <div class="grid_8">
            <asp:Repeater ID="repnews" runat="server">
                <HeaderTemplate>
                    <h1>
                        Notizie in primo piano</h1>
                    <ul class="notizie">
                </HeaderTemplate>
                <ItemTemplate>
                    <li>
                        <h2>
                            <a href="dettaglionews.aspx?id=<%# DataBinder.Eval(Container.DataItem, "ID")%>">
                                <%# DataBinder.Eval(Container.DataItem, "Titolo")%>
                                (<%# ((Oggetti.Oggetto)Container.DataItem).DataInserimento.ToString("dd MMM yyyy", new System.Globalization.CultureInfo("it-IT")) %>)
                            </a>
                        </h2>
                        <div class="divnews">
                            <%# DataBinder.Eval(Container.DataItem, "SottoTitolo")%></div>
                        <div class="leggitutto fr">
                            <a href="dettaglionews.aspx?id=<%# DataBinder.Eval(Container.DataItem, "ID")%>">Leggi
                                tutto &raquo;</a></div>
                    </li>
                </ItemTemplate>
                <FooterTemplate>
                    </ul>
                </FooterTemplate>
            </asp:Repeater>
            <div id="divPaginazione" runat="server" class="pagfoto">
            </div>
        </div>
        <div class="grid_4">
            <uc2:Appuntamenti ID="Appuntamenti1" runat="server" />
        </div>
    </div>
    </form>
</asp:Content>
