<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Pager.ascx.cs" Inherits="Pager" %>
<div style="font-size:8pt; font-family:Verdana;">
    <div id="left" style="float:left;">
        <asp:Label ID="lblPag" runat="server" Text="Página"></asp:Label>
        <span>&nbsp;</span>
        <asp:DropDownList ID="ddlPageNumber" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageNumber_SelectedIndexChanged"></asp:DropDownList>
        <span>&nbsp;<asp:Label ID="lblDe" runat="server" Text="de"></asp:Label>
        </span>&nbsp;<asp:Label ID="lblShowRecords" runat="server"></asp:Label>
        <span>&nbsp;</span><asp:Label ID="lblPag2" runat="server" Text="Páginas"></asp:Label>
&nbsp;</div>
    <div id="right" style="float:right;">
        <span>&nbsp;<asp:Label ID="lblMostrar" runat="server" Text="Mostrar"></asp:Label>
        </span>&nbsp;<asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
            <asp:ListItem Text="-" Value="10" Selected="True" ></asp:ListItem>
            <asp:ListItem Text="25" Value="25"  ></asp:ListItem>
            <asp:ListItem Text="50" Value="50"></asp:ListItem>
            <asp:ListItem Text="Todos" Value="75"></asp:ListItem>
        </asp:DropDownList>
        <span>&nbsp;</span><asp:Label ID="lblProd" runat="server" 
            Text="Productos por página"></asp:Label>
&nbsp;</div>
</div>