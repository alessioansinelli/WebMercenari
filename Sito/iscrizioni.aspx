﻿<%@ page title="" language="C#" masterpagefile="~/mercenari.master" autoeventwireup="true" inherits="_iscrizioni" CodeFile="~/iscrizioni.aspx.cs" %>
<%@ Register Src="uc/menu.ascx" TagName="menu" TagPrefix="uc1" %>
<%@ Register Src="uc/contenuto.ascx" TagName="contenuto" TagPrefix="uc2" %>
<%@ Register Src="uc/Appuntamenti.ascx" TagName="Appuntamenti" TagPrefix="uc3" %>
<%-- Aggiungere qui i controlli del contenuto --%>
<asp:Content ID="menu" runat="server" ContentPlaceHolderID="menu">
    <uc1:menu ID="menu1" runat="server" SelectedMenu="iscrizioni" />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="addheadcontent">
    <link rel="stylesheet" type="text/css" href="/css/iscrizioni.css" />
    <title>Associazione Aranceri Mercenari - Iscrizioni 2016</title>
    <meta name="description" content="Iscrizioni all' Associazione Aranceri Mercenari. Qui si possono trovare le informazioni e le date relative alle riunioni e iscrizioni all'Associazione Aranceri Mercenari. Passa a trovarci in sede." />
</asp:Content>
<asp:Content ID="content" runat="server" ContentPlaceHolderID="content">
    <form id="form1" runat="server">
    <div class="iscrizioni">
        <div class="titolo grid_12">
            <img src="images/stemmi/stella_30.png" alt="Stella Mercenari" />
            ISCRIZIONI 2016
        </div>
        <div class="j grid_8 left">
            <p>
                Le iscrizioni per il Carnevale 2016 sono aperte da <strong>Venerdì 9 gennaio</strong>
                a <strong>domenica 8 Febbraio</strong>, e si svolgono solo ed esclusivamente durante
                le riunioni presso la <a href="/sede.aspx" title="Sede dei Mercenari">sede</a>.
                Unica eccezione per domenica 8 Febbraio, quando saremo al consueto mercatino degli
                aranceri di piazza Ottinetti. 
                Per vivere al meglio e con la massima partecipazione
                il Carnevale Mercenario, ti consigliamo di non attendere gli ultimi giorni per venire
                ad iscriverti rischiando di fare lunghe code. Chiunque abbia voglia di partecipare
                alla preparazione delle iniziative in previsione per il Carnevale, è ben accetto
                - alle riunioni c'è la possibilità di incontrare i responsabili e condividere con
                loro le varie fasi organizzative.
            </p>
            <br />
            <h2>
                Calendario iscrizioni 2016</h2>
            <ul class="calendario">
                <li><strong>Venerdì 8 gennaio</strong>. Dalle ore 21.00 alle ore 24.00</li>
                <li><strong>Martedì 12 gennaio 2016</strong>. Dalle ore 21.00 alle ore 24.00</li>
                <li><strong>Venerdì 15 gennaio 2016</strong>. Dalle ore 21.00 alle ore 24.00</li>
                <li><strong>Martedì 19 gennaio 2016</strong>. Dalle ore 21.00 alle 24.00</li>
                <li><strong>Venerdì 22 gennaio 2016</strong>. Dalle ore 21.00 alle 24.00</li>
                <li><strong>Martedì 26 gennaio 2016</strong>. Dalle ore 21.00 alle 24.00</li>
                <li><strong>Venerdì 29 gennaio 2016</strong>. Dalle ore 21.00 alle 24.00</li>
                <li><strong>Sabato 30 gennaio 2016</strong>. Ai giardinetti in occasione del concorso musicale.</li>
                <li><strong>Domenica 31 gennaio 2016</strong>, in piazza Ottinetti. Dalle ore 10.00
                    alle ore 17.00</li>
            </ul>
        </div>
        <div class="j grid_4">
            <h1>
                Quote Iscrizione 2016</h1>
            <ul class="quote">
                <li><strong>Socio</strong>. 30,00 €</li>
                <li><strong>Socio Arancere</strong>: 90,00 €</li>
                <li><strong>Socio Junior(12-13-14-15 anni)</strong>: 50,00 €</li>
                <li><strong>Piolini(fino a 12 anni)</strong>: 10,00 €</li>
            </ul>
            <br />
            <strong>
                <p>
                    <a href="/doc/2016/Scaricoresponsabilita.pdf">NB : Per tutte le iscrizioni è necessaria
                        la presentazione del modello di scarico responsabilità, scaricabile <i>qui</i></a>
                </p>
            </strong>
            <uc3:Appuntamenti ID="Appuntamenti1" runat="server" />
        </div>
    </div>
    </form>
</asp:Content>
