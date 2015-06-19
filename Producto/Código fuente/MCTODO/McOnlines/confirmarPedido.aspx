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
            width: 246px;
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
        .style23
        {
            width: 245px;
            height: 21px;
        }
        .style24
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
   
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Imagenes/principalagua.jpg" Height="600px" Width="100%">
 <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
     <asp:Image ID="Image4" runat="server" Height="74px" 
                                           ImageUrl="~/Imagenes/que bueno que viniste.jpg" Width="431px" />
                                       <asp:Image ID="Image5" runat="server" Height="74px" 
                                           ImageUrl="~/Imagenes/que bueno que viniste.jpg" Width="431px" />
                                            <asp:Image ID="Image6" runat="server" Height="74px" 
                                           ImageUrl="~/Imagenes/que bueno que viniste.jpg" Width="431px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="dgvCompra" runat="server" BackColor="#CC0000" CellPadding="4" 
            Font-Bold="True" Font-Names="Verdana" ForeColor="#CC0000" GridLines="Vertical" 
            onselectedindexchanged="dgvCompra_SelectedIndexChanged" 
            style="margin-left: 256px; margin-top: 0px" Width="565px" 
            >
            <Columns>
                <%--  <asp:TemplateField HeaderText="Preferencias">
                <ItemTemplate>
                    <asp:TextBox ID="txtDescrip" runat="server" Height="44px" Width="264px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>--%>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#CC0000" Font-Bold="True" Font-Names="Verdana" 
                ForeColor="#FFCC00" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#F3C15A" ForeColor="#CC0000" />
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
                    Text="Preferencias con respecto a cada producto del pedido" 
                    ForeColor="#990000" Font-Size="Medium"></asp:Label>
            </td>
            <td class="style21">
                <br />
                <asp:TextBox ID="txtPreferencias" runat="server" TextMode="MultiLine" 
                    Width="249px" ontextchanged="txtPreferencias_TextChanged" Height="128px"></asp:TextBox>
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
            <td class="style23">
                </td>
            <td class="style24">
                </td>
            <td class="style24">
                </td>
        </tr>
    </table>
    <br />
    <table class="style13">
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Total" Font-Bold="True" 
                    Font-Names="Verdana" Font-Size="Medium" ForeColor="#CC0000"></asp:Label>
                <asp:TextBox ID="txtTotal" runat="server" Enabled="False" Height="33px" 
                    Width="137px"></asp:TextBox>
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
                    Font-Names="Verdana" ForeColor="#FFCC00" Height="33px" Width="91px" />
                <cc1:RoundedCornersExtender ID="btnAceptar_RoundedCornersExtender" 
                    runat="server" BehaviorID="btnAceptar_RoundedCornersExtender" 
                    TargetControlID="btnAceptar">
                </cc1:RoundedCornersExtender>
            </td>
            <td>
                <asp:Button ID="btnCancelar" runat="server" onclick="btnCancelar_Click" 
                    Text="Cancelar" BackColor="Red" Font-Bold="True" Font-Names="Verdana" 
                    ForeColor="#FFCC00" Height="32px" Width="100px" />
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
       </asp:Panel>
   
    
</asp:Content>