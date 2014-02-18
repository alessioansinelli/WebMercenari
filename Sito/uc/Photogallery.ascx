<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Photogallery.ascx.cs"
    Inherits="uc_Photogallery" %>
    <% if (TipoOggetto != TipoOggetto.News)
       { %>
    <h1><% = _TitoloGallery %></h1>
    <div class="gallerydate"> 
    <span>Pubblicata : <% = _DataPubblicazione %></span>
    <% if (ShowShare == true) { %>
        <a class="share" href="http://www.facebook.com/sharer.php?u=www.mercenari.it/<% = _ShowShareUrl %>=<% = Request["id"].ToString() %>&amp;t=<% = _TitoloGallery %>" target="blank"><img src="/images/facebook_share.png" alt="condividi su facebook"/></a>
    <% } %>
    </div>

    <div><% = _SottoTitoloGallery%></div>
    <div><% = _TestoGallery%></div>
    <% }
       else if (Galleria.Foto.Length > 0)
       { %>
       <h2>Immagini Collegate</h2> 
     <% } %>
<asp:Repeater ID="repFoto" runat="server">
    <HeaderTemplate>
        <div class="gallery Collage">
    </HeaderTemplate>
    <ItemTemplate>
       
            <div class="Image_Wrapper photodiv" data-caption="<%# DataBinder.Eval(Container.DataItem, "Titolo")%>">
                <a href="<%# Utility.getPathPhoto((Oggetti.OggettoFoto)(Container.DataItem), "w9") %>" class="photo" title="<%# DataBinder.Eval(Container.DataItem, "Titolo")%>">
                    <%# Utility.getUrlPhoto((Oggetti.OggettoFoto)(Container.DataItem), "w3") %></a>
                </div>
    </ItemTemplate>
    
    <FooterTemplate>
        </div>
    </FooterTemplate>
</asp:Repeater>

<%--<asp:Repeater ID="Repeater1" runat="server">
    <HeaderTemplate>
        <ul class="gallery Collage">
    </HeaderTemplate>
    <ItemTemplate>
        <li class="<%# Utility.getClassname(Container.ItemIndex, 4, "cb first") %>">
            <div class="photodiv">
                <a href="<%# Utility.getPathPhoto((Oggetti.OggettoFoto)(Container.DataItem), "w9") %>" class="photo" title="<%# DataBinder.Eval(Container.DataItem, "Titolo")%>">
                    <%# Utility.getUrlPhoto((Oggetti.OggettoFoto)(Container.DataItem), "w2") %></a>
                </div>
        </li>
    </ItemTemplate>
    <AlternatingItemTemplate>
        <li>
            <div class="photodiv">
                <a href="<%# Utility.getPathPhoto((Oggetti.OggettoFoto)(Container.DataItem), "w9") %>" class="photo" title="<%# DataBinder.Eval(Container.DataItem, "Titolo")%>">
                    <%# Utility.getUrlPhoto((Oggetti.OggettoFoto)(Container.DataItem), "w2") %>
                </a>
            </div>
        </li>
    </AlternatingItemTemplate>
    <FooterTemplate>
        </ul>
    </FooterTemplate>
</asp:Repeater>--%>
<div ID="divPaginazione" runat="server" class="pagfoto">
    
</div>

