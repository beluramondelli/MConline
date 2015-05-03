<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="confirmarPedido.aspx.cs" Inherits="confirmarPedido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 100%;
        }
        .style14
        {
            width: 377px;
        }
        .style15
        {
            width: 111px;
        }
        .style16
        {
            width: 380px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="dgvCompra" runat="server" Width="920px">
    </asp:GridView>
    <br />
    <table class="style13">
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Total"></asp:Label>
                <asp:TextBox ID="txtTotal" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <table class="style13">
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                <asp:Button ID="btnAceptar" runat="server" onclick="btnAceptar_Click" 
                    style="text-align: center" Text="Aceptar" />
            </td>
            <td>
                <asp:Button ID="btnCancelar" runat="server" onclick="btnCancelar_Click" 
                    Text="Cancelar" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
</asp:Content>

