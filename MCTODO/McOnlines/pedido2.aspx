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
    <p>
        NUEVO PEDIDO</p>
    <table class="style1" align="center" 
        style="position: static; visibility: visible">
        <tr>
            <td class="style4">
                <asp:GridView ID="gvProductos" runat="server" 
                    CellPadding="4" ForeColor="#333333" Width="496px" 
                    style="margin-right: 0px" AllowPaging="True" Font-Bold="True" 
                    onpageindexchanged="gvProductos_PageIndexChanged" 
                    onpageindexchanging="gvProductos_PageIndexChanging" 
                    onselectedindexchanged="gvProductos_SelectedIndexChanged" PageSize="15">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
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
            </td>
            <td class="style5" align="justify" style="color: #CC0000">
                DETALLE<br />
                <br />
                Cantidad<asp:TextBox ID="txtCantidad" 
                    runat="server"  ></asp:TextBox>
                <br />
                Descripción<asp:TextBox 
                    ID="txtDescripcion" runat="server" MaxLength="10" TextMode="MultiLine"  
                    type="text" ontextchanged="txtDescripcion_TextChanged1" ></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="btnAgregarCarrito" runat="server" Text="Agregar al carrito" 
                    onclick="btnAgregarCarrito_Click" />
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="La cantidad debe ser un valor númerico" Operator="DataTypeCheck" 
                    Type="Integer" ControlToValidate="txtCantidad"></asp:CompareValidator>             
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ErrorMessage="El valor ingresado no es correcto" MaximumValue="100" 
                    MinimumValue="1" ControlToValidate="txtCantidad"></asp:RangeValidator>

            <td style="color: #CC0000">
                MI CARRITO<br />
                <asp:GridView ID="dgvCarrito" runat="server" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" Height="124px" 
                    Width="148px">
                    <AlternatingRowStyle BackColor="White" />
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
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


