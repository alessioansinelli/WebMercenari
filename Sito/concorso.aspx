<%@ Page Title="" Language="C#" MasterPageFile="~/mercenari.master" AutoEventWireup="true"
    CodeFile="concorso.aspx.cs" Inherits="_concorso" %>

<%@ Register Src="uc/menu.ascx" TagName="menu" TagPrefix="uc1" %>
<%@ Register Src="uc/contenuto.ascx" TagName="contenuto" TagPrefix="uc2" %>
<%@ Register src="uc/Appuntamenti.ascx" tagname="Appuntamenti" tagprefix="uc3" %>
<%-- Aggiungere qui i controlli del contenuto --%>
<asp:Content ID="menu" runat="server" ContentPlaceHolderID="menu">
    <uc1:menu ID="menu1" runat="server" SelectedMenu="programma" />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="addheadcontent">
    <link rel="stylesheet" type="text/css" href="/css/programma.css" />
    <title>Associazione Aranceri Mercenari - 2° Edizione Concorso "Il nostro Carnevale"</title>
    <meta name="description" content="Concorso Il nostro Carnevale, rivolto alle scuole secondarie di primo grado della città di Ivrea. "  />
</asp:Content>
<asp:Content ID="content" runat="server" ContentPlaceHolderID="content">
    <form id="form1" runat="server">
    <div class="programma">
        <div class="titolo grid_12">
            <img src="images/stemmi/stella_30.png" alt="Stella Mercenari" />
            CONCORSO "IL NOSTRO CARNEVALE"
        </div>
        <div class="j grid_8 left">
            <h2>Organizzatori</h2>
            <p>
                Il concorso, alla sua seconda edizione, è organizzato dalla Fondazione dello Storico Carnevale di Ivrea e
                dall’Associazione Aranceri Mercenari, con il patrocinio della Città di Ivrea e in collaborazione con l’Assessorato ai 
                Sistemi Educativi.
            </p>
            <h2>Oggetto del Concorso</h2>
            <p>
                Oggetto del concorso è la realizzazione di un elaborato sul tema “Il Nostro Carnevale”: ogni candidato potrà 
                illustrare l’aspetto di Carnevale - simbolo, personaggio, momento - che ama di più, che lo colpisce o lo incuriosisce 
                maggiormente, con particolare attenzione alle varie Componenti che vi partecipano (come descritte sul sito ufficiale 
                www.storicocarnevaleivrea.it). L’elaborato deve avere le seguenti caratteristiche:
                - essere totalmente realizzato dai ragazzi
                - essere eseguito sul supporto cartaceo fornito ed utilizzato in formato verticale
                - contenere quanto sopra indicato
                - può essere utilizzata qualsiasi tecnica (matita, pennarello, tempera, collage, tecniche miste, ecc.)
            </p>     
            <!--<h2><a href="/doc/2015/ilmiocarnevale2015.pdf">Clicca per visualizzare il bando pubblico</a></h2>  <br />-->
            <p>
                Il vincitore del concorso 2015 : <br />
                <img src="http://www.mercenari.it/public/img/05/79/w8.jpg" /></p>
        </div>
        <div class="grid_4">
        
            <uc3:Appuntamenti ID="Appuntamenti1" runat="server" />
        
        </div>
    </div>
</form>
</asp:Content>
