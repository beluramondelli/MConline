<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NuevoUsuario.aspx.cs" Inherits="inicioSesion" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style7
    {
        width: 68px;
    }
    .style15
    {
        width: 67px;
        height: 50px;
    }
    .style16
    {
        height: 50px;
    }
    .style17
    {
        width: 67px;
        height: 5px;
    }
    .style18
    {
        height: 5px;
    }
    .style19
    {
        width: 67px;
        height: 43px;
    }
    .style20
    {
        height: 43px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 34%; margin-left: 290px; margin-top: 75px;">
    <tr>
        <td class="style15">
            Nombre:</td>
        <td class="style16">
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        </td>
        <td class="style16">
            </td>
    </tr>
    <tr>
        <td class="style15">
            Apellido:</td>
        <td class="style16">
            <asp:TextBox ID="txtApe" runat="server"></asp:TextBox>
        </td>
        <td class="style16">
            </td>
    </tr>
    <tr>
        <td class="style15">
            Mail:</td>
        <td class="style16">
            <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
        </td>
        <td class="style16">
            </td>
    </tr>
    <tr>
        <td class="style15">
            Teléfono:</td>
        <td class="style16">
            <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
        </td>
        <td class="style16">
            </td>
    </tr>
    <tr>
        <td class="style15">
            Usuario:</td>
        <td class="style16">
            <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
        </td>
        <td class="style16">
            </td>
    </tr>
    <tr>
        <td class="style15">
            Password:</td>
        <td class="style16">
            <asp:TextBox ID="txtPasswd" runat="server"></asp:TextBox>
        </td>
        <td class="style16">
            </td>
    </tr>
    <tr>
        <td class="style17">
            </td>
        <td class="style18">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="style18">
            </td>
    </tr>
    <tr>
        <td class="style19">
            </td>
        <td class="style20">
            <asp:Button ID="btnCrear" runat="server" Height="28px" onclick="btnCrear_Click" 
                Text="Crear" Width="58px" />
        </td>
        <td class="style20">
            </td>
    </tr>
</table>
</asp:Content>

