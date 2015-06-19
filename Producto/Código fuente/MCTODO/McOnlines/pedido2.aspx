<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="pedido2.aspx.cs" Inherits="pedido2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<%@ Register src="Pager.ascx" tagname="Pager" tagprefix="uc1" %>
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
        .style23
        {
            width: 71%;
            height: 688px;
        }
        .style24
        {
            width: 100%;
            height: 688px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Panel ID="Panel1" runat="server" 
                                 
    BackImageUrl="~/Imagenes/principalagua.jpg"   Height="1329px" 
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
                            <td id="ck" class="style13">
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
                    </table>
                    <br />
                    <uc1:Pager ID="Pager1" runat="server" OnPageChanged="custPager_PageChanged"/>
                </td>
            </tr>
        </table>
        
     <table 
        style="position: static; visibility: visible; height: 371px; width: 1098px;">
                
        
       
                
         <tr>
             <td align="center" class="style23">
                 <asp:GridView ID="gvProductos" runat="server" AllowPaging="True" 
                     AutoGenerateColumns="False" BackColor="#F3C15A" background-color="Transparent" 
                     BorderColor="#666666" BorderStyle="Double" CellPadding="2" 
                     EnablePersistedSelection="True" Font-Bold="True" Font-Names="Verdana" 
                     ForeColor="#333333" HorizontalAlign="Center" 
                     onselectedindexchanged="gvProductos_SelectedIndexChanged" 
                     style="margin-right: 135px; margin-left: 172px;" Width="663px">
                     <AlternatingRowStyle HorizontalAlign="Center" Wrap="True" />
                     <Columns>
                         <asp:TemplateField>
                             <ItemTemplate>
                                 <asp:CheckBox ID="chek1" runat="server" 
                                     oncheckedchanged="chek1_CheckedChanged" />
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Cantidad " ItemStyle-HorizontalAlign="center">
                             <ItemTemplate>
                                 <asp:TextBox ID="txtCantidad" runat="server" Columns="5" Width="50px"></asp:TextBox>
                                 <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                     ControlToValidate="txtCantidad" ErrorMessage="Ingrese una cantidad válida" 
                                     Font-Size="XX-Small" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" />
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
                     <HeaderStyle BackColor="#CC0000" Font-Bold="True" ForeColor="#FFFF66" />
                     <PagerStyle BackColor="#CC0000" ForeColor="#FFCC00" HorizontalAlign="Center" />
                     <RowStyle BorderStyle="None" ForeColor="#CC0000" HorizontalAlign="Center" 
                         Width="50px" Wrap="True" />
                     <SelectedRowStyle Font-Bold="True" ForeColor="Navy" />
                     <SortedAscendingCellStyle BackColor="#FDF5AC" />
                     <SortedAscendingHeaderStyle BackColor="#4D0000" />
                     <SortedDescendingCellStyle BackColor="#FCF6C0" />
                     <SortedDescendingHeaderStyle BackColor="#820000" />
                 </asp:GridView>
             </td>
             <td align="center" class="style24">
                 <asp:Button ID="btnConfirmar0" runat="server" BackColor="#CC0000" 
                     Font-Bold="True" Font-Names="Verdana" ForeColor="#FFFF66" Height="36px" 
                     onclick="btnConfirmar_Click" Text="Confirmar Pedido" />
                 <cc1:RoundedCornersExtender ID="btnConfirmar0_RoundedCornersExtender" 
                     runat="server" BehaviorID="btnConfirmar_RoundedCornersExtender" 
                     TargetControlID="btnConfirmar0" />
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




