<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Pager.ascx.cs" Inherits="Pager" %>
<div style="font-size:8pt; font-family:Verdana;">
    <div id="left" style="float:left;">
        <span>Página&nbsp;</span>
        <asp:DropDownList ID="ddlPageNumber" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageNumber_SelectedIndexChanged"></asp:DropDownList>
        <span>&nbsp;de</span>
        <asp:Label ID="lblShowRecords" runat="server"></asp:Label>
        <span>Páginas&nbsp;</span>
    </div>
    <div id="right" style="float:right;">
        <span>Mostrar&nbsp;</span>
        <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
            <asp:ListItem Text="-" Value="10" Selected="True" ></asp:ListItem>
            <asp:ListItem Text="25" Value="25"  ></asp:ListItem>
            <asp:ListItem Text="50" Value="50"></asp:ListItem>
            <asp:ListItem Text="Todos" Value="75"></asp:ListItem>
        </asp:DropDownList>
        <span>&nbsp;Productos por página</span>
    </div>
</div>