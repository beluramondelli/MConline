<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NuevoUsuario.aspx.cs" Inherits="inicioSesion" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style7
    {
        width: 68px;
    }
    .style17
    {
        width: 67px;
        height: 5px;
    }
    .style19
    {
        width: 67px;
        height: 43px;
    }
        .style22
        {
            height: 5px;
            width: 587px;
        }
        .style23
        {
            height: 43px;
            width: 587px;
        }
        .style25
        {
            height: 5px;
        }
        .style26
        {
            height: 43px;
        }
        .style30
        {
            width: 67px;
            height: 40px;
        }
        .style31
        {
            height: 40px;
            width: 587px;
        }
        .style32
        {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table style="border-style: none; width: 67%; margin-left: 290px; margin-top: 75px; font-family: Verdana; font-weight: bold; color: #000000; background-color: #FFFFFF; margin-right: 144px;" 
        frame="box">
    <tr>
        <td class="style30">
            Nombre*</td>
        <td class="style31">
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtNombre" ErrorMessage="Campo obligatorio" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtNombre" ErrorMessage="Ingrese un nombre válido" 
                ValidationExpression="[a-zA-ZñÑ\s]{2,50}"></asp:RegularExpressionValidator>
        </td>
        <td class="style32">
            </td>
    </tr>
    <tr>
        <td class="style30">
            &nbsp;Apellido*</td>
        <td class="style31">
            <asp:TextBox ID="txtApe" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtApe" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="txtApe" ErrorMessage="Ingrese un apellido válido" 
                ValidationExpression="[a-zA-ZñÑ\s]{2,50}"></asp:RegularExpressionValidator>
        </td>
        <td class="style32">
            </td>
    </tr>
    <tr>
        <td class="style30">
            Mail*</td>
        <td class="style31">
            <asp:TextBox ID="txtMail" runat="server" ontextchanged="txtMail_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txtMail" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtMail" ErrorMessage=" Dirección de correo no válida" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td class="style32">
            </td>
    </tr>
    <tr>
        <td class="style30">
            Teléfono*</td>
        <td class="style31">
            <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtTel" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToValidate="txtTel" ErrorMessage="Ingrese un número válido" 
                Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        </td>
        <td class="style32">
            </td>
    </tr>
    <tr>
        <td class="style30">
            Usuario*</td>
        <td class="style31">
            <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtUsuario" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
        </td>
        <td class="style32">
            </td>
    </tr>
    <tr>
        <td class="style30">
            Password*</td>
        <td class="style31">
            <asp:TextBox ID="txtPasswd" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CheckBox ID="CheckBox1" runat="server" 
                oncheckedchanged="CheckBox1_CheckedChanged" Text="Ver caracteres" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtPasswd" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
        </td>
        <td class="style32">
            </td>
    </tr>
    <tr>
        <td class="style17">
            </td>
        <td class="style22">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td class="style25">
            </td>
    </tr>
    <tr>
        <td class="style19">
            </td>
        <td class="style23">
            <asp:Button ID="btnCrear" runat="server" Height="28px" onclick="btnCrear_Click" 
                Text="Crear" Width="58px" Font-Bold="True" Font-Names="Verdana" />
            <cc1:RoundedCornersExtender ID="btnCrear_RoundedCornersExtender" runat="server" 
                BehaviorID="btnCrear_RoundedCornersExtender" Color="AliceBlue" 
                TargetControlID="btnCrear" />
        </td>
        <td class="style26">
            </td>
    </tr>
</table>
</asp:Content>

