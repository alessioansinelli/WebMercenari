<%@ Page Title="" Language="C#" MasterPageFile="~/mercenari.master" AutoEventWireup="true" CodeFile="bandiere.aspx.cs" Inherits="_bandiere" %>
<%@ Register src="uc/menu.ascx" tagname="menu" tagprefix="uc1" %>
<%@ Register src="uc/contenuto.ascx" tagname="contenuto" tagprefix="uc2" %>

<%@ Register src="uc/Appuntamenti.ascx" tagname="Appuntamenti" tagprefix="uc3" %>

<%-- Aggiungere qui i controlli del contenuto --%>
<asp:Content ID="menu" runat="server" ContentPlaceHolderID="menu">
	<uc1:menu ID="menu1" runat="server" SelectedMenu="bandiere" />
</asp:Content>

<asp:Content ID="head" runat="server" ContentPlaceHolderID="addheadcontent">
    <title>Associazione Aranceri Mercenari - Le Bandiere</title>
    <link rel="stylesheet" type="text/css" href="/css/bandiere.css" />
    <meta name="description" content="Montaggio bandiere all' Associazione Aranceri Mercenari. Date di ritrovo per montare bandiere e strutture che utilizzeremo durante il carnevale."  />
</asp:Content>

<asp:Content ID="content" runat="server" ContentPlaceHolderID="content">
    <form id="form1" runat="server">
    <div class="bandiere">
        <div class="titolo grid_12"><img src="images/stemmi/stella_30.png" alt="Stella Mercenari" /></div>        
        <div class="j grid_8 left">
            <p>Tutti gli anni all'avvicinarsi del Carnevale, 
            i Mercenari si rimboccano le maniche e, spinti dalla compagnia e dalla tanto agognata ricompensa (tutti al bar!) 
            si preparano ad accogliere il Carnevale avvolti di drappi e stemmi Giallo-Viola.
            Per il Carnevale 2011 le date di preparazione della nostra zona di tiro e di festa si articolano così : 
            </p>
            <h2>Sabato 29 Gennaio 2011 - Ore 09.00</h2>
            <p>
                Montaggio pali ai giardinetti. Se siamo intanti inizieremo ad allestire la torre di Santo Stefano.
            </p>
            <h2>Sabato 5 Febbraio 2011 - Ore 09.00</h2>
            <p>
                Montaggio bandiere e allestimento Torre di Santo Stefano.
            </p>
            <h2>Sabato 26 Febbraio 2011 - Ore 09.00</h2>
            <p>
                Montaggio palco e strutture per la festa. Reti in piazza del rondolino
            </p>
            <h2>Domenica 6 Marzo 2011</h2>
            <p>
               Imbandieramento e scarico delle arance in Piazza del Rondolino.
            </p>
            <h2>Lunedì 7 Marzo 2011</h2>
            <p>
               Imbandieramento e scarico delle arance in Piazza del Rondolino.
            </p>
            <h2>Martedì 8 Marzo 2011</h2>
            <p>
               Imbandieramento e scarico delle arance in Piazza del Rondolino.
            </p>
        </div>
        <div class="j grid_4">
            
            <uc3:Appuntamenti ID="Appuntamenti1" runat="server" />
            
        </div>        
    </div>
</form>
</asp:Content>