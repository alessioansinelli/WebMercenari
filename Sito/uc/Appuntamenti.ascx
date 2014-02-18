<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Appuntamenti.ascx.cs"
    Inherits="uc_Appuntamenti" %>
<asp:Repeater ID="repEventi" runat="server">
    <HeaderTemplate>
        <h1>Notizie ed Eventi</h1>
        <ul class="appuntamenti">
    </HeaderTemplate>
    <ItemTemplate>
        <li>
            <h2>
                <%# DataBinder.Eval(Container.DataItem, "Titolo")%></h2>
            <div class="fl">
                <%# Utility.getUrlPhoto(((Oggetti.Oggetto)Container.DataItem).Foto, "w2") %></div>
            <div class="newsappuntamenti">
                <%# DataBinder.Eval(Container.DataItem, "SottoTitolo")%></div>
                <div class="leggitutto"><a href="dettaglionews.aspx?id=<%# DataBinder.Eval(Container.DataItem, "ID")%>">Leggi tutto &raquo;</a></div>
        </li>
    </ItemTemplate>
    <AlternatingItemTemplate>
        <li>
            <h2>
                <%# DataBinder.Eval(Container.DataItem, "Titolo")%></h2>
            <div class="fr">
                <%# Utility.getUrlPhoto(((Oggetti.Oggetto)Container.DataItem).Foto, "w2")%></div>
            <div class="newsappuntamenti">
                <%# DataBinder.Eval(Container.DataItem, "SottoTitolo")%></div>
                <div class="leggitutto"><a href="dettaglionews.aspx?id=<%# DataBinder.Eval(Container.DataItem, "ID")%>">Leggi tutto &raquo;</a></div>
        </li>
    </AlternatingItemTemplate>
    <FooterTemplate>
        </ul>
    </FooterTemplate>
</asp:Repeater>
