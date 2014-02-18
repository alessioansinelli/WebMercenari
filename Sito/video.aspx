<%@ Page Title="" Language="C#" MasterPageFile="~/mercenari.master" AutoEventWireup="true" CodeFile="video.aspx.cs" Inherits="_video" %>

<%@ Register src="uc/menu.ascx" tagname="menu" tagprefix="uc1" %>
<%@ Register src="uc/contenuto.ascx" tagname="contenuto" tagprefix="uc2" %>

<%-- Aggiungere qui i controlli del contenuto --%>
<asp:Content ID="menu" runat="server" ContentPlaceHolderID="menu">
	<uc1:menu ID="menu1" runat="server" SelectedMenu="video" />
</asp:Content>

<asp:Content ID="head" runat="server" ContentPlaceHolderID="addheadcontent">
    <title>Associazione Aranceri Mercenari - I Video</title>
    <link rel="stylesheet" type="text/css" href="/css/video.css" />
</asp:Content>

<asp:Content ID="content" runat="server" ContentPlaceHolderID="content">
    <div class="video">
        <div class="titolo grid_12"><img src="images/stemmi/stella_30.png" alt="Stella Mercenari" /></div>        
        <div class="j grid_8 left">
            &nbsp;
        </div>
        <div class="j grid_4 right">
            <img src="/images/layout/macchia.png" />
        </div>        
    </div>
</asp:Content>