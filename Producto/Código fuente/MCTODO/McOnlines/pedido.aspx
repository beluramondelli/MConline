<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="pedido.aspx.cs" Inherits="pedido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
<style type="text/css">
        .style9
        {
            width: 86px;
        }
        .style10
        {
            width: 86px;
            height: 27px;
        }
        .style11
        {
            width: 257px;
            height: 27px;
        }
        .style12
        {
            height: 27px;
        }
        .style13
        {
            height: 27px;
            width: 74px;
        }
        .style19
        {
            width: 257px;
        }
        .style21
        {
            width: 74px;
        }
        .style23
        {
            width: 257px;
            height: 24px;
        }
        .style24
        {
            width: 86px;
            height: 24px;
        }
        .style25
        {
            height: 24px;
        }
        .style26
        {
            width: 74px;
            height: 24px;
        }
        .style27
        {
            width: 86px;
            height: 2px;
        }
        .style28
        {
            width: 257px;
            height: 2px;
        }
        .style29
        {
            height: 2px;
        }
        .style30
        {
            width: 74px;
            height: 2px;
        }
        .style31
        {
            width: 86px;
            height: 14px;
        }
        .style32
        {
            width: 257px;
            height: 14px;
        }
        .style33
        {
            height: 14px;
        }
        .style34
        {
            width: 74px;
            height: 14px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <table align="center" class="style1">
            <tr>
                <td class="style10">
                    POLLO</td>
                <td class="style11" valign="top">
                </td>
                <td class="style12">
                </td>
                <td class="style13">
                </td>
                <td class="style12">
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    CBO</td>
                <td>
                    pechuga crispy, bacon, lechuga, cebolla morada, mayonesa</td>
                <td class="style21">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    MCNuggets</td>
                <td>
                </td>
                <td class="style21">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    MCPollo Junior</td>
                <td>
                    Pechuga crispy, lechuga, mayonesa</td>
                <td class="style21">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Pollo Hot Pepper</td>
                <td>
                    Pechuga crispy picante, salsa picante, lechuga, tomate, mayonesa, bacon, cebolla 
                    morada</td>
                <td class="style21">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style19" valign="top">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style21">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    CARNE</td>
                <td class="style19" valign="top">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style21">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Angus Premium Deluxe</td>
                <td>
                    Doble Hamburguesa de carne, queso, lechuga, tomate, cebolla morada, mayonesa</td>
                <td class="style21">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button5" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Angus Premium Bacon</td>
                <td>
                    Doble Hamburguesa de carne, queso, bacon, tomate, cebolla morada, mayonesa, 
                    pepino</td>
                <td class="style21">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button6" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Angus Premium Tasty</td>
                <td>
                    Doble Hamburguesa de carne, queso, lechuga, tomate, cebolla morada, salsa tasty</td>
                <td class="style21">
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button7" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Angus Hot Pepper</td>
                <td>
                    Doble Hamburguesa de carne, becon, queso, lechuga, tomate, cebolla morada, salsa 
                    picante</td>
                <td class="style21">
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button8" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style24">
                </td>
                <td class="style23" valign="top">
                    Cuarto de Libra con Queso</td>
                <td class="style25">
                    Hamburguesa de carne, queso, salsa de ketchup y cebolla</td>
                <td class="style26">
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style25">
                    <asp:Button ID="Button9" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Doble Cuarto de Libra con Queso</td>
                <td>
                    Doble Hamburguesa de carne, queso, salsa de ketchup y cebolla</td>
                <td class="style21">
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button10" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    MCNífica</td>
                <td>
                    Hamburguesa de carne, queso, lechuga, tomate, mayonesa</td>
                <td class="style21">
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button11" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Triple MAC</td>
                <td>
                    Triple Hamburguesa de carne, queso, lechuga y pepino</td>
                <td class="style21">
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button12" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Big MAC</td>
                <td>
                    Doble Hamburguesa de carne, queso, lechuga y pepino</td>
                <td class="style21">
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button13" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    MCFiesta</td>
                <td>
                    Hamburguesa de carne, lechuga, tomate y mayonesa</td>
                <td class="style21">
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button14" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Hambuerguesa con Queso</td>
                <td>
                    Hamburguesa de carne, queso, salsa de ketchup y cebolla</td>
                <td class="style21">
                    <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button15" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Hambuerguesa</td>
                <td>
                    Hamburguesa de carne, salsa de ketchup y cebolla</td>
                <td class="style21">
                    <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button16" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style19" valign="top">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style21">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style27">
                    MCWRAP</td>
                <td class="style28" valign="top">
                </td>
                <td class="style29">
                </td>
                <td class="style30">
                </td>
                <td class="style29">
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    MCWrap Verggie</td>
                <td>
                    Tortilla a base de harina, lechuga, tomate, pepino y mayonesa</td>
                <td class="style21">
                    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button17" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    MCWrap Classic</td>
                <td>
                    Tortilla a base de harina, pollo, lechuga, tomate, pepino, cebolla y mayonesa</td>
                <td class="style21">
                    <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button18" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style19" valign="top">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style21">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    GUARNICION</td>
                <td class="style19" valign="top">
                </td>
                <td>
                </td>
                <td class="style21">
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Papas</td>
                <td>
                </td>
                <td class="style21">
                    <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button19" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Ensalada</td>
                <td>
                    Lechuga, queso, cebolla, tomate</td>
                <td class="style21">
                    <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button20" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style19" valign="top">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style21">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    BEBIDAS</td>
                <td class="style19" valign="top">
                </td>
                <td>
                </td>
                <td class="style21">
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td class="style31">
                </td>
                <td class="style32" valign="top">
                    Coca-Cola</td>
                <td class="style33">
                </td>
                <td class="style34">
                    <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style33">
                    <asp:Button ID="Button21" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Coca-Cola ligth</td>
                <td>
                </td>
                <td class="style21">
                    <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button22" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Coca-Cola Zero</td>
                <td>
                </td>
                <td class="style21">
                    <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button23" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Fanta</td>
                <td>
                </td>
                <td class="style21">
                    <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button25" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Sprite</td>
                <td>
                </td>
                <td class="style21">
                    <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button24" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Jugo de naranja</td>
                <td>
                </td>
                <td class="style21">
                    <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button26" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style19" valign="top">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style21">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    COMBOS</td>
                <td class="style19" valign="top">
                </td>
                <td>
                </td>
                <td class="style21">
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Combo CBO</td>
                <td>
                    CBO + Papas fritas o ensalada + gaseosa</td>
                <td class="style21">
                    <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button27" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Combo MCNuggets</td>
                <td>
                    Nuggets + Papas fritas o ensalada + gaseosa</td>
                <td class="style21">
                    <asp:Label ID="Label28" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button28" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Combo MCPollo Junior</td>
                <td>
                    Pollo junior + Papas fritas o ensalada + gaseosa</td>
                <td class="style21">
                    <asp:Label ID="Label29" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button29" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Combo Pollo Hot Pepper</td>
                <td>
                    Pollo hot pepper + Papas fritas o ensalada + gaseosa</td>
                <td class="style21">
                    <asp:Label ID="Label30" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button30" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Combo Angus Premium Deluxe</td>
                <td>
                    Angus premium deluxe + Papas fritas o ensalada + gaseosa</td>
                <td class="style21">
                    <asp:Label ID="Label31" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button31" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Combo Angus Premium Bacon</td>
                <td>
                    Angus premium bacon + Papas fritas o ensalada + gaseosa</td>
                <td class="style21">
                    <asp:Label ID="Label32" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button32" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Combo Angus Premium Tasty</td>
                <td>
                    Angus premium tasty + Papas fritas o ensalada + gaseosa</td>
                <td class="style21">
                    <asp:Label ID="Label33" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button33" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Combo Angus Hot Pepper</td>
                <td>
                    Angus hot pepper + Papas fritas o ensalada + gaseosa</td>
                <td class="style21">
                    <asp:Label ID="Label34" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button34" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Combo Cuarto de Libra con Queso</td>
                <td>
                    Cuarto de libra con queso + Papas fritas o ensalada + gaseosa</td>
                <td class="style21">
                    <asp:Label ID="Label35" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button35" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Combo Doble Cuarto de Libra con Queso</td>
                <td>
                    Doble cuarto de libra con queso + Papas fritas o ensalada + gaseosa</td>
                <td class="style21">
                    <asp:Label ID="Label36" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button36" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Combo MCNífica</td>
                <td>
                    Mcnifica + Papas fritas o ensalada + gaseosa</td>
                <td class="style21">
                    <asp:Label ID="Label37" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button37" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Combo Triple MAC</td>
                <td>
                    Triple MAC + Papas fritas o ensalada + gaseosa</td>
                <td class="style21">
                    <asp:Label ID="Label38" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button38" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Combo Big MAC</td>
                <td>
                    Big MAC + Papas fritas o ensalada + gaseosa</td>
                <td class="style21">
                    <asp:Label ID="Label39" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button39" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Combo MCFiesta</td>
                <td>
                    MCFiesta + Papas fritas o ensalada + gaseosa</td>
                <td class="style21">
                    <asp:Label ID="Label40" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button40" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Combo Hambuerguesa con Queso</td>
                <td>
                    Hamburguesa con queso + Papas fritas o ensalada + gaseosa</td>
                <td class="style21">
                    <asp:Label ID="Label41" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button41" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Combo MCWrap Veggie</td>
                <td>
                    MCWrap Veggie + Papas fritas o ensalada + gaseosa</td>
                <td class="style21">
                    <asp:Label ID="Label42" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button42" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style19" valign="top">
                    Combo MCWrap Classic</td>
                <td>
                    MCWrap Classic + Papas fritas o ensalada + gaseosa</td>
                <td class="style21">
                    <asp:Label ID="Label43" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button43" runat="server" BackColor="#CC0000" Font-Bold="True" 
                        ForeColor="White" Text="AGREGAR" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>


