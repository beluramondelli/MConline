﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PedidoRealizado.aspx.cs" Inherits="PedidoRealizado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        Se realizo con exito su pedido.</p>
    <p>
        <asp:Button ID="btnVolver" runat="server" onclick="btnVolver_Click" 
            Text="Volver" />
    </p>
</asp:Content>

