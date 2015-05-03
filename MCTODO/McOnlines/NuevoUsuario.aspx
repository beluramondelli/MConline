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
            width: 41px;
        }
    .style17
    {
        width: 67px;
        height: 5px;
    }
    .style18
    {
        height: 5px;
            width: 41px;
        }
    .style19
    {
        width: 67px;
        height: 43px;
    }
    .style20
    {
        height: 43px;
            width: 41px;
        }
        .style21
        {
            height: 50px;
            width: 535px;
        }
        .style22
        {
            height: 5px;
            width: 535px;
        }
        .style23
        {
            height: 43px;
            width: 535px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 65%; margin-left: 290px; margin-top: 75px; font-family: Verdana; font-weight: bold; color: #000000; background-color: #FFFFFF; margin-right: 144px;">
    <tr>
        <td class="style15">
            Nombre</td>
        <td class="style21">
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtNombre" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ErrorMessage="Ingrese un nombre válido" 
                ValidationExpression="[a-zA-ZñÑ\s]{2,50}"></asp:RegularExpressionValidator>
        </td>
        <td class="style16">
            </td>
    </tr>
    <tr>
        <td class="style15">
            Apellido</td>
        <td class="style21">
            <asp:TextBox ID="txtApe" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtApe" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ErrorMessage="Ingrese un apellido válido" 
                ValidationExpression="[a-zA-ZñÑ\s]{2,50}"></asp:RegularExpressionValidator>
        </td>
        <td class="style16">
            </td>
    </tr>
    <tr>
        <td class="style15">
            Mail</td>
        <td class="style21">
            <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txtMail" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtMail" 
                ErrorMessage="Ingrese una dirección de correo válida" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td class="style16">
            </td>
    </tr>
    <tr>
        <td class="style15">
            Teléfono</td>
        <td class="style21">
            <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtTel" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
        </td>
        <td class="style16">
            </td>
    </tr>
    <tr>
        <td class="style15">
            Usuario</td>
        <td class="style21">
            <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtUsuario" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
        </td>
        <td class="style16">
            </td>
    </tr>
    <tr>
        <td class="style15">
            Password</td>
        <td class="style21">
            <asp:TextBox ID="txtPasswd" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CheckBox ID="CheckBox1" runat="server" 
                oncheckedchanged="CheckBox1_CheckedChanged" Text="Ver caracteres" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtPasswd" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
        </td>
        <td class="style16">
            </td>
    </tr>
    <tr>
        <td class="style17">
            </td>
        <td class="style22">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td class="style18">
            </td>
    </tr>
    <tr>
        <td class="style19">
            </td>
        <td class="style23">
            <asp:Button ID="btnCrear" runat="server" Height="28px" onclick="btnCrear_Click" 
                Text="Crear" Width="58px" />
        </td>
        <td class="style20">
            </td>
    </tr>
</table>
</asp:Content>

