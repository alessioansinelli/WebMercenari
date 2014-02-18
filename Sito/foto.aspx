<%@ Page Title="" Language="C#" MasterPageFile="~/mercenari.master" AutoEventWireup="true" CodeFile="foto.aspx.cs" Inherits="_foto" %>

<%@ Register src="uc/menu.ascx" tagname="menu" tagprefix="uc1" %>
<%@ Register src="uc/contenuto.ascx" tagname="contenuto" tagprefix="uc2" %>

<%@ Register src="uc/Appuntamenti.ascx" tagname="Appuntamenti" tagprefix="uc3" %>

<%-- Aggiungere qui i controlli del contenuto --%>
<asp:Content ID="menu" runat="server" ContentPlaceHolderID="menu">
	<uc1:menu ID="menu1" runat="server" SelectedMenu="foto" />
</asp:Content>

<asp:Content ID="head" runat="server" ContentPlaceHolderID="addheadcontent">
    <title>Associazione Aranceri Mercenari - Le Foto</title>
    <link rel="stylesheet" type="text/css" href="/css/foto.css" />
    <meta name="description" content="Raccolte fotografiche dell'Associazione Aranceri Mercenari. Quasi 40 anni di Carnevale riassunti in ricordi fotografici."  />
</asp:Content>

<asp:Content ID="content" runat="server" ContentPlaceHolderID="content">
    <form id="form1" runat="server">
    <div class="foto">
        <div class="titolo grid_12"><img src="images/stemmi/stella_30.png" alt="Stella Mercenari" /></div>        
        <div class="j grid_8 left">
            <asp:Repeater ID="repFoto" runat="server">
            <HeaderTemplate>
                <ul class="elencogallerie">
            </HeaderTemplate>
            <ItemTemplate>
                <li class="cb">
                    <h2>
                        <%# DataBinder.Eval(Container.DataItem, "Titolo")%></h2>
                    <div>
                        <a href="photogallery.aspx?id=<%# DataBinder.Eval(Container.DataItem, "ID")%>">
                            <%# Utility.getUrlPhoto(((Oggetti.Oggetto)Container.DataItem).Foto, "w4") %>
                        </a>
                        <div class="newsappuntamenti"><%# DataBinder.Eval(Container.DataItem, "SottoTitolo")%>Testo Overlay Di prova - Da rimuovere</div>
                    </div>                                           
                </li>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <li>
                    <h2>
                        <%# DataBinder.Eval(Container.DataItem, "Titolo")%></h2>
                    <div>
                        <a href="photogallery.aspx?id=<%# DataBinder.Eval(Container.DataItem, "ID")%>">
                            <%# Utility.getUrlPhoto(((Oggetti.Oggetto)Container.DataItem).Foto, "w4") %>
                        </a>
                        <div class="newsappuntamenti"><%# DataBinder.Eval(Container.DataItem, "SottoTitolo")%></div>
                    </div>
                </li>  
            </AlternatingItemTemplate>
            <FooterTemplate>
                </ul>
            </FooterTemplate>
        </asp:Repeater>
        </div>
        <div class="grid_4">
            
            <uc3:Appuntamenti ID="Appuntamenti1" runat="server" />
            
        </div>        
    </div>
    </form>
</asp:Content>