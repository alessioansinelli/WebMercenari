<%@ Page Title="" Language="C#" MasterPageFile="~/mercenari.master" AutoEventWireup="true" Inherits="_iscrizioni" CodeFile="~/iscrizioni.aspx.cs" %>

<%@ Register Src="uc/menu.ascx" TagName="menu" TagPrefix="uc1" %>
<%@ Register Src="uc/contenuto.ascx" TagName="contenuto" TagPrefix="uc2" %>
<%@ Register Src="uc/Appuntamenti.ascx" TagName="Appuntamenti" TagPrefix="uc3" %>
<%-- Aggiungere qui i controlli del contenuto --%>
<asp:Content ID="menu" runat="server" ContentPlaceHolderID="menu">
    <uc1:menu ID="menu1" runat="server" SelectedMenu="iscrizioni" />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="addheadcontent">
    <link rel="stylesheet" type="text/css" href="/css/iscrizioni.css" />
    <title>Associazione Aranceri Mercenari - Iscrizioni 2018</title>
    <meta name="description" content="Iscrizioni all' Associazione Aranceri Mercenari. Qui si possono trovare le informazioni e le date relative alle riunioni e iscrizioni all'Associazione Aranceri Mercenari. Passa a trovarci in sede." />
</asp:Content>
<asp:Content ID="content" runat="server" ContentPlaceHolderID="content">
    <form id="form1" runat="server">
        <div class="iscrizioni">
            <div class="titolo grid_12">
                <img src="images/stemmi/stella_30.png" alt="Stella Mercenari" />
                ISCRIZIONI 2018
            </div>
            <div class="j grid_8 left">
                <p>
                    Le iscrizioni per il Carnevale 2018 sono aperte da <strong>Martedì 09 gennaio</strong>
                    a <strong>domenica 04 Febbraio</strong>, e si svolgono solo ed esclusivamente durante
                le riunioni presso la <a href="/sede.aspx" title="Sede dei Mercenari">sede</a>.
                Unica eccezione per la penultima domenica di Carnevale, quando saremo al mercatino degli
                aranceri di piazza Ottinetti.
                Per vivere al meglio e con la massima partecipazione
                il Carnevale Mercenario, ti consigliamo di non attendere gli ultimi giorni per venire
                ad iscriverti rischiando di fare lunghe code. Chiunque abbia voglia di partecipare
                alla preparazione delle iniziative in previsione per il Carnevale, è ben accetto
                - alle riunioni c'è la possibilità di incontrare i responsabili e condividere con
                loro le varie fasi organizzative.
                </p>
                <br />
                <h2>Calendario iscrizioni 2018</h2>
                <ul class="calendario">
                    <li><strong>Martedì 09 gennaio 2018</strong>. Dalle ore 21.00 alle 24.00</li>
                    <li><strong>Venerdì 12 gennaio 2018</strong>. Dalle ore 21.00 alle 24.00</li>
                    <li><strong>Martedì 16 gennaio 2018</strong>. Dalle ore 21.00 alle 24.00</li>
                    <li><strong>Venerdì 19 gennaio 2018</strong>. Dalle ore 21.00 alle 24.00</li>
                    <li><strong>Martedì 23 gennaio 2018</strong>. Dalle ore 21.00 alle 24.00</li>
                    <li><strong>Venerdì 26 gennaio 2018</strong>. Dalle ore 21.00 alle 24.00</li>
                    <li><strong>Martedì 30 gennaio 2018</strong>. Dalle ore 21.00 alle 24.00</li>
                    <li><strong>Venerdì 02 febbraio 2018</strong>. Dalle ore 21.00 alle 24.00</li>
                    <li><strong>Domenica 04 febbraio 2018</strong>, in piazza Ottinetti. Dalle ore 10.00 alle 17.00</li>
                </ul>
                <div class="mod_iscrizione">
                    <h2>
                        <a target="_blank" href="/doc/2018/Scaricoresponsabilita2018.pdf">Scarica il modulo da presentare all'iscrizione.</a>
                    </h2>
                </div>
            </div>
            <div class="j grid_4">
                <h1>Quote Iscrizione 2018</h1>
                <ul class="quote">
                    <li><strong>Socio</strong>. 30,00 €</li>
                    <li><strong>Socio Arancere</strong>: 90,00 €</li>
                    <li><strong>Socio Junior (nati dal 2003 al 2006)</strong>: 50,00 €</li>
                    <li><strong>Piolini(nati dal 2007 ad oggi)</strong>: 10,00 €</li>
                </ul>
                <br />
                <strong>
                    <p>
                        <a href="/doc/2018/Scaricoresponsabilita2018.pdf">NB : Per tutte le iscrizioni è necessaria
                        la presentazione del modello di scarico responsabilità, scaricabile <i>qui</i></a>
                    </p>
                </strong>
                <uc3:Appuntamenti ID="Appuntamenti1" runat="server" />
            </div>
        </div>
    </form>
</asp:Content>
