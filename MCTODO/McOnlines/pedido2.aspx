<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="pedido2.aspx.cs" Inherits="pedido2" %>

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
            width: 148px;
        }
        .style11
        {
            width: 307px;
        }
        .style12
        {
            width: 127px;
        }
        .style13
        {
            width: 195px;
        }
        .style14
        {
            width: 199px;
        }
        .style16
        {
            width: 196px;
        }
        .style17
        {
            width: 192px;
        }
        .style19
        {
            width: 231px;
        }
        .style20
        {
            width: 232px;
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
                                &nbsp;</td>
                            <td class="style16">
                                <asp:CheckBox ID="chSand" runat="server" Font-Bold="True" ForeColor="#333333" 
                                    Text="Sandwich" />
                            </td>
                            <td class="style17">
                                <asp:CheckBox ID="chBebida" runat="server" Text="Bebida" Font-Bold="True" 
                                    ForeColor="#333333" />
                            </td>
                            <td class="style14">
                                <asp:CheckBox ID="chGuarn" runat="server" Text="Guarnición" Font-Bold="True" 
                                    ForeColor="#333333" />
                            </td>
                            <td ID="ck" class="style13">
                                <asp:CheckBox ID="chCombo" runat="server" Text="Combo" Font-Bold="True" 
                                    ForeColor="#333333" />
                            </td>
                            <td class="style12">
                                <asp:CheckBox ID="chPostre" runat="server" Text="Postre" Font-Bold="True" 
                                    ForeColor="#333333" />
                            </td>
                            <td>
                                <asp:CheckBox ID="chCafeteria" runat="server" Text="Cafeteria" Font-Bold="True" 
                                    ForeColor="#333333" />
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
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
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
                     style="margin-right: 135px; margin-left: 100px;" Width="650px" 
                     onselectedindexchanged="gvProductos_SelectedIndexChanged" 
                     AutoGenerateColumns="False" EnablePersistedSelection="True" 
                     Font-Names="Verdana" HorizontalAlign="Center" 
                     background-color="Transparent" BorderColor="#666666" BorderStyle="Double">
                     <AlternatingRowStyle HorizontalAlign="Center" Wrap="True" />
                     <Columns>
                         <asp:TemplateField>
                             <ItemTemplate>
                                 <asp:CheckBox ID="chek1" runat="server" 
                                     oncheckedchanged="chek1_CheckedChanged" />
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Cantidad "  ItemStyle-HorizontalAlign="center">
                             <ItemTemplate>
                                 <asp:TextBox ID="txtCantidad" runat="server" Columns="5" Width="50px" ></asp:TextBox>
                                 <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                     ControlToValidate="txtCantidad" 
                                     ErrorMessage="Ingrese una cantidad válida" Operator="DataTypeCheck" 
                                     Type="Integer" Font-Size="XX-Small"></asp:CompareValidator>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" />
                         </asp:TemplateField>
                         <asp:BoundField DataField="nombre" HeaderText="Producto" >
                         </asp:BoundField>
                         <asp:BoundField DataField="descripcion" HeaderText="Descripción" >
                         </asp:BoundField>
                         <asp:BoundField DataField="precio" HeaderText="Precio" >
                         </asp:BoundField>
                     </Columns>
                     <EmptyDataTemplate>
                         <asp:CheckBox ID="check1" runat="server" />
                         <br />
                         <br />
                     </EmptyDataTemplate>
                     <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#CC0000" Font-Bold="True" ForeColor="#FFFF66" />
                     <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                     <RowStyle ForeColor="Maroon" Width="50px" 
                         HorizontalAlign="Center" Wrap="True" BorderStyle="None" />
                     <SelectedRowStyle Font-Bold="True" ForeColor="Navy" />
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
                    &nbsp;</td>
                <td class="style19">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="#CC0000" Text="Total   " Visible="False"></asp:Label>
                    <asp:TextBox ID="txtTotal" runat="server" Enabled="False" Visible="False"></asp:TextBox>
                </td>
                <td class="style19">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblCant" runat="server" Font-Bold="True" Font-Names="Verdana" 
                        Font-Size="Medium" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                    <asp:Button ID="btnConfirmar" runat="server" BackColor="#CC0000" 
                        Font-Bold="True" Font-Names="Verdana" ForeColor="#FFFF66" Height="36px" 
                        onclick="btnConfirmar_Click" Text="Confirmar Pedido" />
                    <cc1:RoundedCornersExtender ID="btnConfirmar_RoundedCornersExtender" 
                        runat="server" BehaviorID="btnConfirmar_RoundedCornersExtender" 
                        TargetControlID="btnConfirmar" />
                </td>
            </tr>
        </table>
        <br />

    </asp:Panel>
   
   
    <br />
    </asp:Content>




