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
            width: 561px;
        }
        .style23
        {
            height: 43px;
            width: 561px;
        }
        .style30
    {
        width: 67px;
        height: 40px;
    }
    .style31
    {
        height: 40px;
        width: 561px;
    }
        .style32
        {
            width: 100%;
        }
        .style38
        {
            width: 997px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <asp:Panel ID="Panel1" runat="server" 
        BackImageUrl="~/Imagenes/loguitos AGUA.png" Height="525px" Width="100%" 
        HorizontalAlign="Justify" style="margin-top: 0px">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

     <table class="style32">
    <tr>
        <td class="style38">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                ForeColor="Maroon" Text="REGISTRO DE USUARIO" Height="51px" 
                Font-Names="Cracked Johnnie" ></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" Height="73px" 
                ImageUrl="~/Imagenes/que bueno que viniste.jpg" Width="441px" />
                </td>

            <tr>
                <td align="justify" class="style38">
                    <table align="center" bgcolor="#FFFF66" 
                        style="border-style: none; width: 58%; margin-left: 418px; margin-top: 0px; font-family: Verdana; font-weight: bold; color: #000000; background-color: #FFFFFF; margin-right: 144px; height: 370px;">
                        <tr>
                            <td bgcolor="#FFFF66" class="style30" style="background-color: #FFFF66">
                                Nombre*</td>
                            <td bgcolor="#FFFF66" class="style31">
                                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtNombre" ErrorMessage="Campo obligatorio" 
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="txtNombre" ErrorMessage="Ingrese un nombre válido" 
                                    ValidationExpression="[a-zA-ZñÑ\s]{2,50}"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFF66" class="style30" style="background-color: #FFFF66">
                                Apellido*</td>
                            <td bgcolor="#FFFF66" class="style31">
                                <asp:TextBox ID="txtApe" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtApe" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                    ControlToValidate="txtApe" ErrorMessage="Ingrese un apellido válido" 
                                    ValidationExpression="[a-zA-ZñÑ\s]{2,50}"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFF66" class="style30" style="background-color: #FFFF66">
                                Mail*</td>
                            <td bgcolor="#FFFF66" class="style31">
                                <asp:TextBox ID="txtMail" runat="server" ontextchanged="txtMail_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtMail" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtMail" ErrorMessage=" Dirección de correo no válida" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFF66" class="style30" style="background-color: #FFFF66">
                                Teléfono*</td>
                            <td bgcolor="#FFFF66" class="style31">
                                <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtTel" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToValidate="txtTel" ErrorMessage="Ingrese un número válido" 
                                    Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFF66" class="style30" style="background-color: #FFFF66">
                                Usuario*</td>
                            <td bgcolor="#FFFF66" class="style31">
                                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtUsuario" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFF66" class="style30" style="background-color: #FFFF66">
                                Password*</td>
                            <td bgcolor="#FFFF66" class="style31">
                                <asp:TextBox ID="txtPasswd" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:CheckBox ID="CheckBox1" runat="server" 
                                    oncheckedchanged="CheckBox1_CheckedChanged" Text="Ver caracteres" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtPasswd" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFF66" class="style17" style="background-color: #FFFF66">
                            </td>
                            <td bgcolor="#FFFF66" class="style22">
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style19" style="background-color: #FFFF66">
                            </td>
                            <td bgcolor="#FFFF66" class="style23">
                                <asp:Button ID="btnCrear" runat="server" BackColor="Red" Font-Bold="True" 
                                    Font-Names="Verdana" ForeColor="#FFCC00" Height="28px" onclick="btnCrear_Click" 
                                    Text="Crear" Width="58px" />
                                <cc1:RoundedCornersExtender ID="btnCrear_RoundedCornersExtender" runat="server" 
                                    BehaviorID="btnCrear_RoundedCornersExtender" Color="Yellow" 
                                    TargetControlID="btnCrear" />
                            </td>
                        </tr>
                    </table>
                </td>
        </tr>
    </tr>
</table>

        </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        </table>

    </asp:Panel>


   
</asp:Content>

