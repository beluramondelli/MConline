<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="pedido2.aspx.cs" Inherits="pedido2" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Panel ID="Panel1" runat="server" Height="553px">
    <%--<asp:Image ID="Image1" runat="server" Height="584px" 
                    ImageUrl="~/Imagenes/mcdonalds-art-7AGUA.jpg" style="margin-left: 0px" 
                    Width="866px" />--%>

     <table 
        style="position: static; visibility: visible; height: 371px;">
        <tr>
            <td class="style4">
                <asp:GridView ID="gvProductos" runat="server" 
                    CellPadding="4" ForeColor="#333333" Width="496px" 
                    style="margin-right: 0px" AllowPaging="True" Font-Bold="True" 
                    onpageindexchanged="gvProductos_PageIndexChanged" 
                    onpageindexchanging="gvProductos_PageIndexChanging" 
                    onselectedindexchanged="gvProductos_SelectedIndexChanged" PageSize="9">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                    <asp:TemplateField >
                     <ItemTemplate>
                        <asp:CheckBox ID="chek1" runat="server" EnableViewState="true"  />
                     </ItemTemplate>
                </asp:TemplateField>
                   <asp:TemplateField HeaderText="Cantidad Solicitada">
                    <ItemTemplate>
                        <asp:TextBox ID="txtCantidad" runat="server" Width="50px" Columns="5"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>

                    </Columns>
                    <EmptyDataTemplate>
                        <asp:CheckBox ID="check1" runat="server" />
                        <br />
                        <br />
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                 
                </asp:GridView>
            </td>
            <td class="style5" align="justify" style="color: #CC0000" valign="top">
                <br />
                <br />
                <br />
                Descripción<asp:TextBox 
                    ID="txtDescripcion" runat="server" MaxLength="100" TextMode="MultiLine"  
                    type="text" Height="82px"  ></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Button ID="btnAgregarCarrito" runat="server" Text="Agregar al carrito" 
                    onclick="btnAgregarCarrito_Click" />
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="txtCantidad" 
                    ErrorMessage="La cantidad ingresada no es un valor válido" 
                    Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                <br />
                <asp:Label ID="lblCant" runat="server"></asp:Label>

                <br />
                
            <td style="color: #CC0000" valign="top">
                MI CARRITO<br />
                <asp:GridView ID="dgvCarrito" runat="server" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" Height="124px" 
                    Width="148px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <br />
                Total<asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnConfirmar" runat="server" onclick="btnConfirmar_Click" 
                    Text="Confirmar Pedido" />
            </td>
        </tr>
                        
            
        </table>

    </asp:Panel>
    <p>
        &nbsp;</p>
   
    <br />
    </asp:Content>


