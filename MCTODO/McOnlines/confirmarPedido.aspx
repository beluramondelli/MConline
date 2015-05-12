<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="confirmarPedido.aspx.cs" Inherits="confirmarPedido" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

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
        .style19
        {
            width: 249px;
            height: 63px;
        }
        .style20
        {
            width: 306px;
            height: 63px;
        }
        .style21
        {
            height: 63px;
        }
        .style22
        {
            width: 245px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:GridView ID="dgvCompra" runat="server" Width="868px" CellPadding="4" 
        ForeColor="#333333" GridLines="Vertical" BackColor="#CC0000" 
        Font-Bold="True" Font-Names="Verdana" 
        onselectedindexchanged="dgvCompra_SelectedIndexChanged" 
        style="margin-left: 256px; margin-top: 56px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
          <%--  <asp:TemplateField HeaderText="Preferencias">
                <ItemTemplate>
                    <asp:TextBox ID="txtDescrip" runat="server" Height="44px" Width="264px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>--%>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#CC0000" Font-Bold="True" ForeColor="#FFCC00" 
            Font-Names="Verdana" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <table style="width:100%;">
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" 
                    Text="Preferencias con respecto a cada producto del pedido"></asp:Label>
            </td>
            <td class="style21">
                <br />
                <asp:TextBox ID="txtPreferencias" runat="server" TextMode="MultiLine" 
                    Width="357px" ontextchanged="txtPreferencias_TextChanged" Height="104px"></asp:TextBox>
                <br />
            </td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Names="Verdana" ForeColor="Red" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <table class="style13">
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Total" Font-Bold="True" 
                    Font-Names="Verdana" Font-Size="Medium" ForeColor="Black"></asp:Label>
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
                    style="text-align: center" Text="Aceptar" BackColor="Red" Font-Bold="True" 
                    Font-Names="Verdana" ForeColor="#FFCC00" />
                <cc1:RoundedCornersExtender ID="btnAceptar_RoundedCornersExtender" 
                    runat="server" BehaviorID="btnAceptar_RoundedCornersExtender" 
                    TargetControlID="btnAceptar">
                </cc1:RoundedCornersExtender>
            </td>
            <td>
                <asp:Button ID="btnCancelar" runat="server" onclick="btnCancelar_Click" 
                    Text="Cancelar" BackColor="Red" Font-Bold="True" Font-Names="Verdana" 
                    ForeColor="#FFCC00" />
                <cc1:RoundedCornersExtender ID="btnCancelar_RoundedCornersExtender" 
                    runat="server" BehaviorID="btnCancelar_RoundedCornersExtender" 
                    TargetControlID="btnCancelar">
                </cc1:RoundedCornersExtender>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
</asp:Content>