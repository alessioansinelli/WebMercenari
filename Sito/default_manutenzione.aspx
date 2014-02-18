<%@ Page Title="" Language="C#" MasterPageFile="~/mercenari.master" AutoEventWireup="true" CodeFile="default_manutenzione.aspx.cs" Inherits="_default" %>

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
            <h1>Sito web in manutenzione</h1>
        </div>
        <div class="grid_4">
         &nbsp;
        </div>
        
        <div class="grid_2 photogallery">
            <h1>Facebook</h1>
            <div class="fb">
                <iframe src="http://www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.mercenari.it&amp;layout=button_count&amp;show_faces=true&amp;width=140&amp;action=like&amp;colorscheme=light&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:140px; height:21px;" allowTransparency="true"></iframe>
            </div>
            <a href="http://www.facebook.com/group.php?gid=33679733468" class="fb" title="Aranceri Mercenari su facebook" target="_blank">
                <img src="/images/le-facebook.png" alt="Aranceri Mercenari su facebook" />
            </a>           
        </div>
    </div>
</asp:Content>