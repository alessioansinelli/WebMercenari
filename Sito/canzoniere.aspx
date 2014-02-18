<%@ Page Title="" Language="C#" MasterPageFile="~/mercenari.master" AutoEventWireup="true"
    CodeFile="canzoniere.aspx.cs" Inherits="_canzoniere" %>

<%@ Register Src="uc/menu.ascx" TagName="menu" TagPrefix="uc1" %>
<%@ Register Src="uc/contenuto.ascx" TagName="contenuto" TagPrefix="uc2" %>
<%@ Register src="uc/Appuntamenti.ascx" tagname="Appuntamenti" tagprefix="uc3" %>
<%-- Aggiungere qui i controlli del contenuto --%>
<asp:Content ID="menu" runat="server" ContentPlaceHolderID="menu">
    <uc1:menu ID="menu1" runat="server" SelectedMenu="canzoniere" />
</asp:Content>
<asp:Content ID="head" runat="server" ContentPlaceHolderID="addheadcontent">
    <title>Associazione Aranceri Mercenari - Il Canzoniere</title>
    <link rel="stylesheet" type="text/css" href="/css/canzoniere.css" />
    <meta name="description" content="Le canzoni della Associazioni Aranceri Mercenari. In questa pagina sono raccolte le canzoni più importanti e quelle più conosciute."  />
</asp:Content>
<asp:Content ID="content" runat="server" ContentPlaceHolderID="content">
    <form id="form1" runat="server">
    <div class="canzoniere">
        <div class="titolo grid_12">
            <img src="images/stemmi/stella_30.png" alt="Stella Mercenari" /></div>
        <div>
        <div class="grid_4 c">
            <div>
                <h2>
                    <a id="canzone">La canzone dei Mercenari</a></h2>
                <p>
                    Siamo i Mercenari<br />
                    e da Baio noi veniam<br />
                    ci teme ogni carro<br />
                    perché forti noi siam;<br />
                    ma se c’è un balcone<br />
                    che ci vuol provar<br />
                    Mercenari che noi siam,<br />
                    e anche a quello<br />
                    sappiam tirar!
                </p>
                <p>
                    Siamo nati chissà quando chissà dove<br />
                    Arrivati fino a qua per Carneval<br />
                    Senza un capo, senza un grado, senza un nome<br />
                    Noi siamo i Mercenari d’l Purtigal.</p>
                <p>
                    Siamo i Mercenari<br />
                    e da Baio noi veniam<br />
                    ci teme ogni carro<br />
                    perché forti noi siam;<br />
                    ma se c’è un balcone<br />
                    che ci vuol provar<br />
                    Mercenari che noi siam,<br />
                    e anche a quello<br />
                    sappiam tirar!
                </p>
                <p>
                    Gli Aranceri di Ivrea son smorfiosi,<br />
                    appena nati voglion subito comandar<br />
                    cercan Carri e Balconi e mille cose<br />
                    ma appena li vedono si mettono
                    <br />
                    subito a scappar.
                </p>
                <p>
                    Siamo i Mercenari<br />
                    e da Baio noi veniam<br />
                    ci teme ogni carro<br />
                    perché forti noi siam;<br />
                    ma se c’è un balcone<br />
                    che ci vuol provar<br />
                    Mercenari che noi siam,<br />
                    e anche a quello<br />
                    sappiam tirar!
                </p>
            </div>
        </div>
        <div class="grid_4 c">
            <a href="/images/canzoniere/scudetto.gif" target="_blank" title="Scudetto dei Mercenari" class="photo"> 
                <img src="/images/canzoniere/scudetto.gif" alt="Scudetto dei Mercenari" />
            </a>
        </div>
        </div>
        <div class="grid_4">
            <h1>Elenco canzoni</h1>
            <ul class="canzoni">
                <li><a href="#canzone">La canzone dei Mercenari</a></li>
                <li><a href="#stella">La stella dei Mercenari</a></li>
                <li><a href="#conoscete">Se non ci conoscete</a></li>
                <li><a href="#piazza">In piazza!</a></li>
                <li><a href="#bandiera">Bandiera viola</a>
                </li>
            </ul>
            <uc3:Appuntamenti ID="Appuntamenti1" runat="server" />
        </div>
        <div class="cb canzone">
            <div class="grid_4 c">
                <a href="/images/canzoniere/3alab.jpg" target="_blank" title="Mercenari con il Labaro" class="photo">
                    <img src="/images/canzoniere/3alab.jpg" alt="Mercenari con il Labaro" />
                </a>
            </div>
            <div class="grid_4 c">
                <h2>
                    <a id="stella">La stella dei Mercenari</a></h2>
                <p>
                    E le due spade, che noi portiamo<br />
                    Son disciplina, son disciplina<br />
                    E le due spade, che noi portiamo<br />
                    son disciplina dei Mercenar!</p>
                <p>
                    E tu biondina<br />
                    Quattro salti alla pecorina<br />
                    Sul sofà<br />
                    Tu sei la stella<br />
                    Tu sei la stella<br />
                    E tu biondina<br />
                    Quattro salti alla pecorina<br />
                    Sul sofà<br />
                    Tu sei la stella<br />
                    Dei MERCENAR !</p>
            </div>
        </div>
        <div class="cb canzone">
            <div class="grid_4 c">
        <h2>
                    <a id="conoscete">Se non ci conoscete</a></h2>
                <p>
                    Se non ci conoscete, guardateci alle spalle<br />
                    Abbiam le stelle gialle! Abbiam le stelle gialle !<br />
                    Se non ci conoscete, guardateci alle spalle<br />
                    Abbiam le stelle gialle! Quelle dei Mercenar!<br />
                    (perché non tiri più mugnaia e/o bastardo).</p>
                <p>
                    Se non ci conoscete, guardateci sul petto,<br />
                    Abbiam le scimitarre! Abbiam le scimitarre!<br />
                    Se non ci conoscete, guardateci sul petto<br />
                    Abbiam le scimitarre, quelle dei Mercenar<br />
                    (perché non tiri più mugnaia e/o bastardo).</p>
                <p>
                    Se non ci conoscete guardateci dal basso<br />
                    Ogni arancia è un sasso! Ogni arancia è un sasso!<br />
                    Se non ci conoscete, guardateci dal basso<br />
                    Ogni arancia è un sasso! Contro carri e balcon!<br />
                    (perché non tiri più mugnaia e/o bastardo).</p>
                    </div>
            <div class="grid_4 c">
                <a href="/images/canzoniere/stelleg.jpg" target="_blank" title="Stelle dei Mercenari" class="photo">
                    <img src="/images/canzoniere/stelleg.jpg" alt="Stelle dei Mercenari" />
                </a>
            </div>
        </div>
        <div class="cb canzone">
            <div class="grid_4">
                <a href="images/canzoniere/piazza_big.jpg" target="_blank" title="Il castello Stella d'Italia" class="photo">
                    <img src="images/canzoniere/piazza_little.jpg" alt="Il castello Stella d'Italia" />
                </a>
            </div>
            <div class="grid_4 c"><h2>
                    <a id="piazza">In piazza!</a></h2>
                <p>
                    Mercenari il momento è venuto<br />
                    Nella Piazza scendiamo a tirar<br />
                    chi è sul carro si fermi o è perduto<br />
                    Attenzione noi siamo i Mercenar!</p>
                <p>
                    Già nei borghi, le piazze, le strade<br />
                    questo inno si sente cantar<br />
                    qui sul petto portiamo due spade<br />
                    attenzione noi siamo i Mercenar!</p>
                <p>
                    Mercenari, Mercenari<br />
                    tutti insieme cantiamolo ancor<br />
                    Mercenari, Mercenari<br />
                    Questo è il grido che abbiamo nel cuor (2 volte)</p>
                <p>
                    Se hai paura nascondi la faccia<br />
                    Se hai coraggio su canta con noi<br />
                    ma stai attento se scendi giù in Piazza<br />
                    poi tirarti indietro non puoi!
                </p>
                <p>
                    Mercenari dai volti segnati Mercenari dai cuor di leon Tessera Alle dure battaglie
                    temprati Su cantiamo la nostra canzon
                </p>
                <p>
                    Mercenari, Mercenari<br />
                    tutti insieme cantiamolo ancor<br />
                    Mercenari, Mercenari<br />
                    questo è il grido che abbiamo nel cuor (2 volte)
                </p></div>            
        </div>
        <div class="cb canzone">
            <div class="grid_4 c">
                <h2>
                    <a id="bandiera">Bandiera Viola</a></h2>
                <p>
                    E il NERO ASSO lo vogliamo?<br />
                    No, no, no !!! (2 volte)<br />
                    Perché l’è il simbolo di Martinasso<br />
                    E il NERO ASSO lo vogliamo NO !
                </p>
                <p>
                    E il TESCHIO BIANCO lo vogliamo ?<br />
                    No, no, no !!! (2 volte)<br />
                    Perché l’è il simbolo del Nato Stanco<br />
                    E il TESCHIO BIANCO lo vogliamo NO!
                </p>
                <p>
                    E il CORVO NERO lo vogliamo ?<br />
                    No, no, no !!! (2 volte)<br />
                    Perché l’è il simbolo del Cimitero<br />
                    E il CORVO NERO lo vogliamo NO !
                </p>
                <p>
                    TORRE ARANCIONE la vogliamo ?<br />
                    No, no, no !!! (2 volte)<br />
                    Perché l’è il simbolo del Gran Minchione<br />
                    TORRE ARANCIONE lo vogliamo NO !
                </p>
                <p>
                    E l' ARDUINO lo vogliamo ?<br />
                    No, no, no !!! (2 volte)<br />
                    Perchè l'è il simbolo del Beduino<br />
                    E l'ARDUINO lo vogliamo NO !
                </p>
                <p>
                    PANTERA NERA la vogliamo?<br />
                    No, no, no !!! (2 volte)<br />
                    Perché l’è il simbolo della Galera<br />
                    PANTERA NERA la vogliamo NO !
                </p>
                <p>
                    DIAVOLO ROSSO lo vogliamo?<br />
                    No, no, no !!! (2 volte)<br />
                    Perché l’è il simbolo del caga addosso<br />
                    DIAVOLO ROSSO lo vogliamo NO !
                </p>
                <p>
                    E la CREDENZA lA vogliamo ?<br />
                    No, no, no !!! (2 volte)<br />
                    Perché l’è il simbolo della demenza<br />
                    E la CREDENZA la vogliamo NO !
                </p>
                <p>
                    BANDIERA VIOLA la vogliamo ? Si, Si, Si !!!<br />
                    BANDIERA VIOLA la vogliamo ? Si, Si, Si !!!<br />
                    Perchè l'è il simbolo di chi va in piola,<br />
                    BANDIERA VIOLA la vogliamo Si!!!<br />
                    Perchè l'è il simbolo di chi va in piola,<br />
                    BANDIERA VIOLA la vogliamo Si!!!
                </p>
            </div>
            <div class="grid_4">
                <a href="/images/canzoniere/bandiera_viola_big.jpg" target="_blank" title="Pranzo al sacco Mercenario" class="photo"> 
                    <img src="images/canzoniere/bandiera_viola_little.jpg" alt="Pranzo al sacco Mercenario" />
                </a>
            </div>
        </div>
    </div>
    <script language="javascript" type="text/javascript">
        $(function() { $('.photo').lightBox(); }); 
    </script>
    </form>
</asp:Content>
