<%@ Page Title="" Language="C#" MasterPageFile="~/mercenari.master" AutoEventWireup="true" CodeFile="photogallery.aspx.cs" Inherits="_photogallery" %>

<%@ Register Src="uc/menu.ascx" TagName="menu" TagPrefix="uc1" %>
<%@ Register Src="uc/contenuto.ascx" TagName="contenuto" TagPrefix="uc2" %>

<%@ Register Src="uc/Photogallery.ascx" TagName="Photogallery" TagPrefix="uc3" %>

<%-- Aggiungere qui i controlli del contenuto --%>
<asp:Content ID="menu" runat="server" ContentPlaceHolderID="menu">
    <uc1:menu ID="menu1" runat="server" SelectedMenu="foto" />
</asp:Content>

<asp:Content ID="head" runat="server" ContentPlaceHolderID="addheadcontent">
    <title>
        <asp:Literal runat="server" ID="TitleTag"></asp:Literal>
        - Associazione Aranceri Mercenari - Le Foto</title>
    <link rel="stylesheet" type="text/css" href="/css/foto.css" />
</asp:Content>

<asp:Content ID="content" runat="server" ContentPlaceHolderID="content">
    <div class="foto">
        <div class="titolo grid_12">
            <img src="images/stemmi/stella_30.png" alt="Stella Mercenari" />
            GALLERIA FOTO
        </div>
        <div class="j grid_8 left">

            <uc3:Photogallery ID="Photogallery1" runat="server" TipoOggetto="Photogallery" AllowPagination="true" ShowShare="true" ShowShareUrl="photogallery.aspx?id" />

        </div>
        <div class="grid_4 right">
            <asp:Repeater ID="repgallery" runat="server">
                <HeaderTemplate>
                    <h1>Tutte le gallerie</h1>
                    <ul class="fotogallery">
                </HeaderTemplate>
                <ItemTemplate>
                    <li class="<%# Utility.getClassname(Container.ItemIndex, 2, "cb") %>">
                        <h2><%# DataBinder.Eval(Container.DataItem, "Titolo")%></h2>
                        <div class="photog">
                            <a href="photogallery.aspx?id=<%# DataBinder.Eval(Container.DataItem, "ID")%>" title="<%# DataBinder.Eval(Container.DataItem, "Titolo")%>">
                                <%# Utility.getUrlPhoto(((Oggetti.Oggetto)Container.DataItem).Foto, "w2") %>
                            </a>
                        </div>
                    </li>
                </ItemTemplate>
                <FooterTemplate>
                    </ul>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>

<asp:Content ID="scriptBottom" ContentPlaceHolderID="addScript" runat="server">
</asp:Content>
