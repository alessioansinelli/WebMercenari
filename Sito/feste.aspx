<%@ Page Title="" Language="C#" MasterPageFile="~/mercenari.master" AutoEventWireup="true" CodeFile="feste.aspx.cs" Inherits="_feste" %>

<%@ Register src="uc/menu.ascx" tagname="menu" tagprefix="uc1" %>
<%@ Register src="uc/contenuto.ascx" tagname="contenuto" tagprefix="uc2" %>

<%-- Aggiungere qui i controlli del contenuto --%>
<asp:Content ID="menu" runat="server" ContentPlaceHolderID="menu">
	<uc1:menu ID="menu1" runat="server" SelectedMenu="feste" />
</asp:Content>

<asp:Content ID="content" runat="server" ContentPlaceHolderID="content">
	<uc2:contenuto ID="menu2" runat="server" Entity="feste" />
</asp:Content>