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
        width: 44px;
        height: 5px;
    }
    .style19
    {
        width: 44px;
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
        .style39
        {
            width: 44px;
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <asp:Panel ID="Panel1" runat="server" 
         BackImageUrl="~/Imagenes/principalagua.jpg" Height="666px" Width="100%" 
        HorizontalAlign="Justify" style="margin-top: 0px">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
      <asp:Image ID="Image4" runat="server" Height="74px" 
                                           ImageUrl="~/Imagenes/que bueno que viniste.jpg" Width="431px" />
                                       <asp:Image ID="Image5" runat="server" Height="74px" 
                                           ImageUrl="~/Imagenes/que bueno que viniste.jpg" Width="431px" />
                                            <asp:Image ID="Image6" runat="server" Height="74px" 
                                           ImageUrl="~/Imagenes/que bueno que viniste.jpg" Width="431px" />
                                  

     <table class="style32">
    <tr>
        

            <td align="justify" class="style38">
                &nbsp;</td>
    </tr>
         <tr>
             <td align="justify" class="style38">
                 <table align="center" bgcolor="#FFFF66" 
                     
                     style="border-style: none; width: 49%; margin-left: 260px; margin-top: 0px; font-family: Verdana; font-weight: bold; color: #000000; background-color: #FFFFFF; margin-right: 49px; height: 470px;">
                     <tr>
                         <td bgcolor="#CC0000" class="style39" style="background-color: "#CC0000">
                             <asp:Image ID="Image7" runat="server" BackColor="#CC0000" Height="83px" 
                                 ImageUrl="~/Imagenes/mcdonalds-logo-580x397.png" Width="126px" />
                         </td>
                         <td align="center" bgcolor="#CC0000" class="style31" 
                             style="color: #FFFF66; font-size: xx-large">
                             Registro de usuario</td>
                     </tr>
                     <tr>
                         <td bgcolor="#FFFF66" class="style39" 
                             style="background-color: #FFFF66; color: #CC0000; font-size: medium;">
                             Nombre*</td>
                         <td bgcolor="#FFFF66" class="style31">
                             <asp:TextBox ID="txtNombre" runat="server" Height="24px" Width="145px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                 ControlToValidate="txtNombre" ErrorMessage="Campo obligatorio" 
                                 SetFocusOnError="True"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                 ControlToValidate="txtNombre" ErrorMessage="Ingrese un nombre válido" 
                                 ValidationExpression="[a-zA-ZñÑ\s]{2,50}"></asp:RegularExpressionValidator>
                         </td>
                     </tr>
                     <tr>
                         <td bgcolor="#FFFF66" class="style39" 
                             style="background-color: #FFFF66; color: #CC0000; font-size: medium;">
                             Apellido*</td>
                         <td bgcolor="#FFFF66" class="style31">
                             <asp:TextBox ID="txtApe" runat="server" Height="21px" Width="144px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                 ControlToValidate="txtApe" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                 ControlToValidate="txtApe" ErrorMessage="Ingrese un apellido válido" 
                                 ValidationExpression="[a-zA-ZñÑ\s]{2,50}"></asp:RegularExpressionValidator>
                         </td>
                     </tr>
                     <tr>
                         <td bgcolor="#FFFF66" class="style39" 
                             style="background-color: #FFFF66; color: #CC0000; font-size: medium;">
                             Mail*</td>
                         <td bgcolor="#FFFF66" class="style31">
                             <asp:TextBox ID="txtMail" runat="server" Height="24px" 
                                 ontextchanged="txtMail_TextChanged" Width="145px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                 ControlToValidate="txtMail" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                 ControlToValidate="txtMail" ErrorMessage=" Dirección de correo no válida" 
                                 ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                         </td>
                     </tr>
                     <tr>
                         <td bgcolor="#FFFF66" class="style39" 
                             style="background-color: #FFFF66; color: #CC0000; font-size: medium;">
                             Teléfono*</td>
                         <td bgcolor="#FFFF66" class="style31">
                             <asp:TextBox ID="txtTel" runat="server" Height="22px" Width="145px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                 ControlToValidate="txtTel" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
                             <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                 ControlToValidate="txtTel" ErrorMessage="Ingrese un número válido" 
                                 Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                         </td>
                     </tr>
                     <tr>
                         <td bgcolor="#FFFF66" class="style39" 
                             style="background-color: #FFFF66; color: #CC0000; font-size: medium;">
                             Usuario*</td>
                         <td bgcolor="#FFFF66" class="style31">
                             <asp:TextBox ID="txtUsuario" runat="server" Height="23px" Width="142px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                 ControlToValidate="txtUsuario" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td bgcolor="#FFFF66" class="style39" 
                             style="background-color: #FFFF66; color: #CC0000; font-size: medium;">
                             Password*</td>
                         <td bgcolor="#FFFF66" class="style31">
                             <asp:TextBox ID="txtPasswd" runat="server" Height="24px" TextMode="Password" 
                                 Width="143px"></asp:TextBox>
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
                                 Font-Names="Verdana" ForeColor="#FFCC00" Height="42px" onclick="btnCrear_Click" 
                                 Text="Crear" Width="86px" Font-Size="Medium" />
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

