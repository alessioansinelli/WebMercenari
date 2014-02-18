<%@ Page Title="" Language="C#" MasterPageFile="~/mercenari.master" AutoEventWireup="true"
    CodeFile="squadra.aspx.cs" Inherits="_squadra" %>

<%@ Register Src="uc/menu.ascx" TagName="menu" TagPrefix="uc1" %>
<%@ Register Src="uc/contenuto.ascx" TagName="contenuto" TagPrefix="uc2" %>
<%@ Register src="uc/Appuntamenti.ascx" tagname="Appuntamenti" tagprefix="uc3" %>
<%-- Aggiungere qui i controlli del contenuto --%>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="addheadcontent">
    <title>Associazione Aranceri Mercenari - La squadra</title>
    <link rel="stylesheet" type="text/css" href="/css/squadra.css" />
</asp:Content>
<asp:Content ID="menu" runat="server" ContentPlaceHolderID="menu">
    <uc1:menu ID="menu1" runat="server" SelectedMenu="squadra" />
</asp:Content>
<asp:Content ID="content" runat="server" ContentPlaceHolderID="content">
    <form id="form1" runat="server">
    <div class="squadra">
        <div class="titolo grid_12">
            <img src="images/stemmi/stella_30.png" alt="Stella Mercenari" /></div>
        <div class="grid_8 j">
            <h1>
                I MERCENARI DEL PURTIGAL - Un venerdì notte del dicembre 1973 in un bar...
            </h1>
            <h2>
                "Sent Gianni, second mi a l’é ora da fé ‘n’aota squadra ".<br />
                "Bòn, fait: ‘ndoma dal Comitato e disoma che ‘st’ane a’ijé ‘na neuva squadra ".
            </h2>
            <div class="c m10 nob">
                <img src="images/squadra/0001e.jpg" alt="La prima formazione dei Mercenari" />
            </div>
            <p>
                Questo dialogo si è veramente svolto in un bar di qualche ridente paesino Canavesano,
                ma la storia non ci permette, nè di individuare il paesino, nè di individuare i
                protagonisti, ma sicuramente possiamo affermare che erano alcuni fra i fondatori
                di quella che sarebbe diventata la nostra squadra.<br />
                Probabilmente è andata così, un po’ per scherzo, un po’ per rompere gli schemi consolidati
                tra le squadre di allora e un po’ proprio per la voglia di creare qualcosa di nuovo.
                Sta di fatto che 33 aranceri nel 1974 hanno partecipato al Carnevale con una nuova
                Divisa, un nuovo Simbolo e un nuovo Nome : <b><u><i>I MERCENARI d'l PURTIGAL</i></u>
                </b>
            </p>
            <p>
                Ripensandoci molti ricorderanno questo gruppo che attraversava Ivrea e che anche
                al primo colpo d'occhio con le sue divise, il basco, l’asinello al seguito, la fisarmonica,
                dava la sensazione di un modo diverso di vivere il Carnevale. <a href="Images/squadra/stitalia.gif"
                    target="_blank" title="Locanda Stella d'Italia" class="photo">
                    <img src="Images/squadra/thumb/stitalia.gif" class="fl mr10 mt10 mb10 nob" alt="Locanda Stella d'Italia" />
                </a>La sede di allora è stata per qualche anno un angusta stanzetta a Bajo Dora;
                nel 1979 la sede - luogo di riunioni ed iscrizioni - si spostò, da Bajo Dora ad
                Ivrea, nella centralissima Via dei Patrioti presso la mitica Taverna “Stella d’Italia”.
                <br />
                Questo modo diverso di vivere Carnevale nella sua sostanza di Festa popolare, di
                divertimento, di amicizia, coinvolse negli anni a venire tutta una schiera di giovani
                leve che rappresentavano, forse, l’anima antagonista della città in quegli anni.
                Ecco perché i Mercenari sono sempre stati definiti "la squadra di sinistra" del
                Carnevale d’Ivrea.
            </p>
            <p>
                La realtà era invece determinata dal clima che i fondatori erano riusciti a instaurare
                con le nuove leve. Dopo circa dieci anni di partecipazione al Carnevale, e con gli
                iscritti che erano passati da 33 a 120, il direttivo di allora constatò che non
                si era più un semplice gruppo di amici, ma che la squadra era diventata un insieme
                di gruppi di amici; tutte queste energie che ruotavano attorno alla squadra, dovevano
                essere riconosciute e consolidate: così è nata l’Associazione. Nel 1986 ci siamo
                costituiti in Associazione, ribadendo nello Statuto i principi che sempre ci hanno
                ispirato negli anni: per noi il Carnevale d’Ivrea rappresenta innanzitutto una grossa
                occasione di festa popolare, che vive di tradizione pur rinnovandosi e arricchendosi
                di anno in anno.
            </p>
            <p>
                Da sempre abbiamo introdotto questo spirito nella nostra squadra, stemperando atteggiamenti
                un po’ troppo "guerreschi", allora in voga tra i protagonisti della battaglia. E'
                Proprio per stemperare certi atteggiamenti che nel 1987 viene messa in porto la
                1° Sagra delle Ajucche manifestazione enogastronomica aperta a tutti gli associati
                e famigliari, organizzata dai Priori eletti per quell’anno dalla Confraternita della
                "Sacra Crota". Questa manifestazione si svolge solitamente in Maggio in qualche
                tipico locale Canavesano ed è seguita da attività sportive non competitive; con
                sempre maggiore partecipazione è diventata un momento di incontro tra amici fuori
                dal periodo Carnevalesco. Verso la fine del 1988 viene chiusa dai proprietari la
                mitica “Stella d’Italia”; la chiusura viene ricordata con una grande Festa, dove
                partecipa tutta la squadra al completo per ringraziare “Gjos &amp; Maria” per l’ospitalità
                e la gentilezza avuta nei nostri confronti per 10 anni e per il loro attaccamento
                ai colori sociali... ...di tempo ne è passato parecchio, e le cose indubbiamente
                sono cambiate: già all’inizio degli anni ottanta molti giovani si erano aggregati
                e la mitica sede della STELLA d'ITALIA era punto di ritrovo frequentatissimo per
                organizzare le varie attività e ovviamente per fare festa insieme. Questa volontà
                di fare festa aveva come culmine i giorni di Carnevale e soprattutto il Sabato sera,
                dove dopo la sfilata ognuno doveva arrangiarsi come poteva. <a href="Images/squadra/1festa.jpg"
                    title="1° Festa Mercenaria" class="photo">
                    <img src="Images/squadra/thumb/1festa.jpg" alt="1° Festa Mercenaria" class="fr ml10 mb10 mt10 nob" />
                </a>Ecco che il Sabato sera del Carnevale 1989 i mercenari inaugurano la prima “Festa
                Mercenaria” con musica, vino e libagioni alla rotonda dei Giardinetti, ma non solo,
                la domanda che ci ponevamo era: "come far diventare il nostro salotto per le feste
                quell’angolo d’Ivrea?" "Lo imbandieriamo." "Cosa ?" "Si lo riempiamo di bandiere,
                cosi tutti i soci si sentiranno a casa e gli altri sapranno che quella da adesso
                in avanti è la nostra zona". Nascono nel 1989 le prime bandiere dei Mercenari, nonostante
                la zona di imbandieramento non sia delle più agevoli.<br />
                Sempre nel 1989 chiuso il bellissimo capitolo "Stella d’Italia", l’Associazione
                Aranceri Mercenari è costretta ad emigrare a San Bernardo presso il Circolo ARCI,
                dove si trova subito a proprio agio anche grazie alla disponibilità dei gestori
                e del direttivo del circolo. Nella nuova sede al secondo piano, una volta messa
                in sesto e addobbata ricominciano le riunioni e le feste assieme, sempre più frequentate.
                Il 1989 è stato un buon Carnevale, gli iscritti erano circa 180. Durante la sfilata
                del Sabato sera fa l’esordio il gruppo Mascherato a Tema che accompagnerà le sfilate
                dei Mercenari anche negli anni a seguire, cambiando i bellissimi costumi artigianali
                ogni anno, proponendo coreografie sempre più importanti. Il bello doveva ancora
                succedere, nel Giugno dello stesso anno viene organizzato il primo torneo di Calcio
                degli Aranceri.
            </p>
            <p>
                <a href="Images/squadra/calcio.jpg" target="_blank" title="Squadra di calcio Mercenari" class="photo">
                    <img src="Images/squadra/thumb/calcio.jpg" class="fl mr10 mb10 mt10 nob" alt="Squadra Calcio Mercenari" />
                </a>Ecco che tutte le squadre, mettono in campo compagini degne di un torneo di
                ben altro livello, tranne i Mercenari che scelgono al loro interno una ventina di
                Eroi tra giocatori, tecnici e dirigenti... ... ed ecco il miracolo dopo una serie
                di sofferte partite arriva la finale per il 1° posto ed è nostra la vittoria; primi
                classificati: "i Mercenari".
            </p>
            <p>
                Non contenti e contro compagini sempre più forti ecco che bissiamo la vittoria,
                Torneo di calcio edizione 1990 primi classificati: "I Mercenari". Ma il 1990 è e
                resterà sempre un anno particolare, lo si sentiva nell’aria, lo si notava dalla
                grande partecipazione alle riunioni, dal numero delle iscrizioni circa 260 persone,
                dalle nuove bandiere "Le Vele" che coloravano la parte finale di Lungodora, dalla
                realizzazione della struttura in piazza del Rondolino battezzata "Stella d’Italia",
                dalla grande festa del Sabato sera.
            </p>
            <p>
                <a href="Images/squadra/vitt1990.jpg" target="_blank" title="1° Premio 1990" class="photo">
                    <img src="Images/squadra/thumb/vitt1990.jpg" alt="1° Premio 1990" class="fr ml10 mb10 mt10 nob" />
                </a>Ma soprattutto dal comportamento in piazza durante la battaglia delle Arance
                dei ragazzi vecchi e nuovi, aggressivi, ironici, sportivi è stato commovente tirare
                e vederli tirare... la vittoria morale era già nostra, un altro stupendo Carnevale
                di amicizia, gioia e divertimento; la soddisfazione era alta il martedì alle 17,30
                mentre ci recavamo verso Piazza di Città, per applaudire la solita blasonata squadra
                di aranceri che ritirava il primo premio... ma era un anno particolare, lo speaker
                elencò la classifica al contrario da quarto posto in su e noi fino al secondo posto
                non eravamo, contenti per il Carnevale ma sconsolati stavamo per abbandonare la
                piazza quando dalle altoparlanti risuonò l’annuncio: "Storico Carnevale d’Ivrea
                1990 primo premio squadre aranceri……….I MERCENARI"; è successo il finimondo, baci,
                abbracci, lacrime, tante lacrime soprattutto dei più vecchi della squadra, quelli
                che l’avevano fondata e che non si sarebbero mai aspettati un regalo così. Tutta
                la piazza è esplosa in un applauso, segno di stima e simpatia nei nostri confronti
                che siamo riusciti a guadagnare da parte delle altre Squadre di Aranceri e degli
                Aranceri sui carri. <b>INDIMENTICABILE 1990: ... ED IO C'ERO.</b>
            </p>
            <p>
                Passata la gioia ci siamo resi conto, che quello che avevamo voluto creare, una
                squadra a misura d’uomo, un insieme di gruppi di amici, il non parlare di capi,
                scegliendo fin da subito di organizzarci con un "Direttivo" e individuando nel lavoro
                di gruppo il modo migliore per la gestione della squadra e per mantenere intenso
                il rapporto con tutti i soci ha dato i suoi frutti e ci ha dato ragione. Da allora
                anno dopo anno la squadra è ancora cresciuta costantemente, si è arricchita di nuovi
                iscritti desiderosi di "contare" all’interno della stessa. I risultati sul campo
                per quanto possono valere hanno confermato che ormai siamo una delle squadre più
                importanti del Carnevale d’Ivrea, per il numero degli iscritti e soprattutto per
                la qualità delle proposte che nel periodo di Carnevale offriamo ai nostri iscritti
                ma soprattutto alla città intera.
            </p>
            <p>
                <a href="Images/squadra/stItalia.jpg" target="_blank" title="Il castello Stella d'Italia" class="photo">
                    <img src="Images/squadra/thumb/stItalia.jpg" alt="Il castello Stella d'Italia" class="fl mr10 mt10 mb10 nob" />
                </a>Da ricordare il 1994 per il “Ventenario” del Mercenario, i vari spettacoli musicali
                e di cabaret, la bottiglia di vino con l’etichetta dei Mercenari, le varie serate
                a tema enogastronomico tenutesi nella nostra sede di San Bernardo, che hanno visto
                come ospiti le altre componenti dello Storico Carnevale di Ivrea. Anno dopo anno,
                carnevale dopo carnevale, sempre presenti con i nostri colori sempre attenti a non
                perdere quello spirito di amicizia e simpatia e sportività che sta alla base del
                nostro stare insieme. Ma la sorpresa più grande per i Ventanni di fondazione della
                squadra fu il mitico Castello dei Mercenari : la Stella d'Italia!
            </p>
            <p>
                Nel 1999 ricorre il "Venticinquennario" della fondazione della Squadra e pensiamo
                che sia giusto e doveroso nei confronti di tutte quelle persone presenti, passate
                ma soprattutto future che collaborano, soffrono e si divertono con noi di fargli
                conoscere questi 25 anni di storia della squadra, allestendo una stupenda "Mostra
                fotografica e di Costumi" sulla squadra dei Mercenari. La mostra viene allestita
                in maniera molto professionale da un gruppo di aranceri presso la Sala mostre di
                P.zza Santa Marta. Nell’ambito dela mostra vengono allestite importanti serate legate
                al Folklore e alle tradizioni del Carnevale e del Canavese, riscontrando un ottima
                partecipazione di pubblico.
            </p>
            <p>
                <a href="Images/squadra/vitt2001.jpg" target="_blank" title="Vittoria 2001" class="photo">
                    <img src="Images/squadra/thumb/vitt2001.jpg" alt="Vittoria 2001" class="fr ml10 mt10 mb10 nob" />
                </a>Il 2001 resterà impresso nelle menti dei più giovani che non avevano vissuto
                la vittoria del 1990. Già dal Sei gennaio si respirava una strana atmosfera, i Mercenari
                erano in fermento. La squadra è cresciuta di molto in 11 anni e tante le iniziative
                che ci hanno visto impegnati, sempre copn lo stesso spirito e con la stessa allegria
                che dal 1974 contraddistingue la nostra squadra. Arriviamo come al solito in piazza
                di città dopo mezzora buona che la battaglia era finita, il martedì, e stranamente
                troviamo la piazza ancora piena di gente che ci aspettava per le premiazioni! Strano
                presagio... ed è così che i Mercenari, hanno vinto il carnevale 2001! La piazza
                emette un boato, tutte le squadre ed i carri assiepati sotto il municipio rendono
                omaggio a noi "Gente da Piola"! Il resto è storia dei nostri giorni l’associazione
                è costantemente cresciuta ed oggi può contare su circa 500 soci aranceri e 200 soci
                sostenitori, viene guidata da un direttivo di circa 20 persone ed è retta da un
                presidente. Come ogni anno il principale obbiettivo della squadra è quello di organizzare
                un carnevale divertente e in sintonia con i valori cari ai fondatori della squadra.
            </p>
            <p>
                Nel 2004 ricorre il "Trentenario" della squadra; sono state organizzate numerose
                iniziative, ed è stato realizzato un filmato, uscito in VHS e DVD, dove viene ripercorsa
                la storia dei Mercenari e il loro modo di fare Carnevale, ma soprattutto vengono
                ripresi i festeggiamenti del trentennale dell'Associazione. Una squadra aperta a
                tutti e che vive del lavoro di tutti, piena di giovani che ritrovano nei Mercenari
                lo spirito e la libertà tipica del Carnevale. Ma il lavoro non manca, un carnevale
                per una squadra di Aranceri è fatto di mille impegni, le arance, le bandiere , le
                feste, le iscrizioni, le cene, la burocrazia, i permessi comunali, gli stemmi e
                le divise, i rapporti con l’esterno, la sfilata del Sabato Sera, le iniziative particolari,
                i rapporti con i media ecc...
            </p>
            <p>
                Cerchiamo di lavorare e di divertirci assieme perché tutto questo resti sempre il
                più bello spettacolo del mondo: <b>"Lo Storico Carnevale di Ivrea".</b>
            </p>
            <h2 class="r m10">
                Grazie a quei 33 e al somaro.</h2>            
        </div>
        <div class="grid_4">
            <uc3:Appuntamenti ID="Appuntamenti1" runat="server" />
        </div>
    </div>
</form>
</asp:Content>

<asp:Content ID="addScript" runat="server" ContentPlaceHolderID="addScript">
    <script language="javascript" type="text/javascript">
        $(function () { $('.photo').lightBox(); }); 
    </script>
</asp:Content>
