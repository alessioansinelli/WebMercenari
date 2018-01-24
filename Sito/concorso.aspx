<%@ Page Title="" Language="C#" MasterPageFile="~/mercenari.master" AutoEventWireup="true"
    CodeFile="concorso.aspx.cs" Inherits="_concorso" %>

<%@ Register Src="uc/menu.ascx" TagName="menu" TagPrefix="uc1" %>
<%@ Register Src="uc/contenuto.ascx" TagName="contenuto" TagPrefix="uc2" %>
<%@ Register Src="uc/Appuntamenti.ascx" TagName="Appuntamenti" TagPrefix="uc3" %>
<%-- Aggiungere qui i controlli del contenuto --%>
<asp:Content ID="menu" runat="server" ContentPlaceHolderID="menu">
    <uc1:menu ID="menu1" runat="server" SelectedMenu="programma" />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="addheadcontent">
    <link rel="stylesheet" type="text/css" href="/css/programma.css" />
    <title>Associazione Aranceri Mercenari - 2° Edizione Concorso "Il nostro Carnevale"</title>
    <meta name="description" content="Concorso Il nostro Carnevale, rivolto alle scuole secondarie di primo grado della città di Ivrea. " />
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
                    L’Associazione Aranceri Mercenari organizza con la collaborazione del Comune di Ivrea e la Fondazione dello Storico Carnevale,
                 il 4° Concorso di disegno riservato agli alunni delle Scuole Secondarie di Primo Grado dell’Istituto 
                Comprensivo Statale Ivrea 1 e Ivrea 2. e L’Istituto parificato “Cardinal Cagliero”, 
                al fine di sensibilizzare ed educare le giovani generazioni al rispetto e partecipazione al nostro Storico Carnevale.
                </p>
                <h2>Oggetto del Concorso</h2>
                <p>
                    Oggetto del concorso è la realizzazione di un elaborato sul tema “Il Nostro Carnevale”: 
                ogni candidato potrà illustrare l’aspetto di Carnevale - simbolo, personaggio, momento - che ama di più, 
                che lo colpisce o lo incuriosisce maggiormente, con particolare attenzione alle varie Componenti che vi partecipano.<br />
                    Vista la cospicua partecipazione e la pregevole fattura delle opere consegnate nelle passate edizioni, 
                    abbiamo modificato nel tempo il regolamento, facendo frutto dei suggerimenti e delle critiche mosse.<br />
                    Abbiamo distribuito nelle Scuole interessate il plico contenente i fogli dove realizzare gli elaborati grafici.<br />
                    Gli elaborati verranno visionati da esperti, i migliori 20 verranno, pubblicati sui siti www.mercenari.it e 
                    www.storicocarnevaleivrea.it, nonchè digitalizzati ed esposti durante il periodo antecedente a Carnevale lungo il percorso
                     appositamente creato presso i Giardini pubblici di Corso Botta ad Ivrea.<br />
                    Per stabilire i vincitori, I 20 elaborati finalisti saranno giudicati da una giuria di artisti Canavesani.<br />
                    Le premiazioni avverranno Giovedì "grasso" 8 Febbraio 2018 durante una festa organizzata presso i Giardinetti 
                    pubblici di Corso Botta - Ivrea, sotto i colori giallo-viola dei Mercenari. <br />
                    La giornata allietata da musica e libagioni vedrà premiati i realizzatori dei primi tre elaborati classificati con un buono
                     acquisto e tutti i finalisti con un premio di partecipazione.<br />
                    Alla Scuola di appartenenza dell'elaborato primo  classificato, verrà consegnato un buono acquisto per materiale didattico.<br />
                    Lo scopo dell’iniziativa e di far percepire alla collettività l’importanza culturale, educativa e sociale della 
                    manifestazione attraverso i disegni dei ragazzi e tramite ciò sensibilizzare sull’importanza delle scuole pubbliche
                    per la formazione delle future generazioni, dando un piccolo aiuto  economico in questo momento di difficoltà generale.
                </p>                
                <p>
                    La galleria dei finalisti 2018 :
                    <br />
                    <img src="//www.mercenari.it/photogallery.aspx?id=152" />
                </p>
            </div>
            <div class="grid_4">

                <uc3:Appuntamenti ID="Appuntamenti1" runat="server" />

            </div>
        </div>
    </form>
</asp:Content>
