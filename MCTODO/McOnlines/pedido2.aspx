﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="pedido2.aspx.cs" Inherits="pedido2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<%@ Register Src="~/Pager.ascx" TagPrefix="custom" TagName="Pager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style4
        {
          width: 723px;
      }
        .style5
        {
            width: 234px;
            text-align: left;
        }
        .style6
        {
            width: 234px;
        }
        .style8
        {
            width: 100%;
        }
        .style9
        {
            width: 318px;
        }
        .style10
        {
            width: 110px;
        }
        .style11
        {
            width: 307px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Panel ID="Panel1" runat="server" 
                                    
    BackImageUrl="~/Imagenes/mcdonalds-art-7AGUA.jpg" Height="1329px" 
                                    Width="1337px">
   
        <table class="style8">
            <tr>
                <td>
                    <asp:Label ID="lblsession" runat="server" Text="Label"></asp:Label>
                    <asp:HyperLink ID="hlRegistrarse" runat="server" Font-Bold="True" 
                        ForeColor="Blue">Registrarse</asp:HyperLink>
                    <asp:HyperLink ID="hlIniSesion" runat="server" Font-Bold="True" 
                        ForeColor="Blue">Iniciar sesion</asp:HyperLink>
                    <br />
                    <br />
                    <table class="style8">
                        <tr>
                            <td class="style10">
                                <asp:CheckBox ID="chSand" runat="server" Text="Sandwich" />
                            </td>
                            <td class="style10">
                                <asp:CheckBox ID="chBebida" runat="server" Text="Bebida" />
                            </td>
                            <td class="style10">
                                <asp:CheckBox ID="chGuarn" runat="server" Text="Guarnición" />
                            </td>
                            <td ID="ck" class="style10">
                                <asp:CheckBox ID="chCombo" runat="server" Text="Combo" />
                            </td>
                            <td class="style10">
                                <asp:CheckBox ID="chPostre" runat="server" Text="Postre" />
                            </td>
                            <td>
                                <asp:CheckBox ID="chCafeteria" runat="server" Text="Cafeteria" />
                            </td>
                        </tr>
                    </table>
                    <table class="style8">
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="btnFiltrar" runat="server" onclick="btnFiltrar_Click" 
                                    Text="Buscar" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        
     <table 
        style="position: static; visibility: visible; height: 371px; width: 1308px;">
         <tr>
             <td class="style4" align="center">
                 
                 <asp:GridView ID="gvProductos" runat="server" AllowPaging="True" 
                     CellPadding="2" Font-Bold="True" ForeColor="#FFCC00" 
                     onpageindexchanged="gvProductos_PageIndexChanged" 
                     onpageindexchanging="gvProductos_PageIndexChanging" 
                     style="margin-right: 135px; margin-left: 100px;" Width="710px" 
                     onselectedindexchanged="gvProductos_SelectedIndexChanged" 
                     AutoGenerateColumns="False" EnablePersistedSelection="True" 
                     Font-Names="Verdana" HorizontalAlign="Center">
                     <AlternatingRowStyle BackColor="White" HorizontalAlign="Center" Wrap="True" />
                     <Columns>
                         <asp:TemplateField>
                             <ItemTemplate>
                                 <asp:CheckBox ID="chek1" runat="server" 
                                     oncheckedchanged="chek1_CheckedChanged" />
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Cantidad Solicitada"  ItemStyle-HorizontalAlign="center">
                             <ItemTemplate>
                                 <asp:TextBox ID="txtCantidad" runat="server" Columns="5" Width="50px" ></asp:TextBox>
                                 <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                     ControlToValidate="txtCantidad" 
                                     ErrorMessage="Debe ingresar una cantidad válida" Operator="DataTypeCheck" 
                                     Type="Integer"></asp:CompareValidator>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                         </asp:TemplateField>
                         <asp:BoundField DataField="nombre" HeaderText="Producto" />
                         <asp:BoundField DataField="descripcion" HeaderText="Descripción" />
                         <asp:BoundField DataField="precio" HeaderText="Precio" />
                     </Columns>
                     <EmptyDataTemplate>
                         <asp:CheckBox ID="check1" runat="server" />
                         <br />
                         <br />
                     </EmptyDataTemplate>
                     <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#CC0000" Font-Bold="True" ForeColor="#FFCC00" />
                     <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                     <RowStyle BackColor="#FFFBD6" ForeColor="#333333" Width="50px" 
                         HorizontalAlign="Center" Wrap="True" />
                     <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                     <SortedAscendingCellStyle BackColor="#FDF5AC" />
                     <SortedAscendingHeaderStyle BackColor="#4D0000" />
                     <SortedDescendingCellStyle BackColor="#FCF6C0" />
                     <SortedDescendingHeaderStyle BackColor="#820000" />
                 </asp:GridView>
             </td>
             <custom:Pager ID="custPager" runat="server" OnPageChanged="custPager_PageChanged" />
             </td>
         </tr>
                
        </table>
        
        <table class="style8">
            <tr>
                <td class="style9">
                    <asp:Label ID="Label1" runat="server" Text="Total" Visible="False"></asp:Label>
                    <asp:TextBox ID="txtTotal" runat="server" Enabled="False" Visible="False"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnConfirmar" runat="server" onclick="btnConfirmar_Click" 
                        Text="Confirmar Pedido" BackColor="Red" Font-Bold="True" 
                        Font-Names="Verdana" ForeColor="#FFCC00" Height="36px" />
                    <cc1:RoundedCornersExtender ID="btnConfirmar_RoundedCornersExtender" 
                        runat="server" BehaviorID="btnConfirmar_RoundedCornersExtender" 
                        TargetControlID="btnConfirmar" />
                    <asp:Label ID="lblCant" runat="server" Text="Label" Visible="False" 
                        Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
        <br />

    </asp:Panel>
   
   
    <br />
    </asp:Content>




