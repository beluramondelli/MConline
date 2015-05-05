<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 100px;
        }
        .style15
        {
            width: 100px;
            height: 44px;
        }
        .style16
        {
            height: 44px;
        }
        .style17
        {
            width: 100px;
            height: 35px;
        }
        .style18
        {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Panel ID="Panel1" runat="server" Height="150px" style="margin-left: 261px; margin-top: 115px;" 
        Width="363px" BackColor="#CCCCCC" BorderColor="Red" BorderStyle="Solid">
        <table style="width: 99%; height: 125px; margin-top: 0px;">
            <tr>
                <td class="style17" 
                    
                    style="font-size: medium; font-style: normal; font-weight: bold; color: #000000; font-family: Verdana;">
                    Usuario*</td>
                <td class="style18">
                    <asp:TextBox ID="txtUsuario" runat="server" Width="90px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtUsuario" ErrorMessage="Campo Obligatorio" 
                        Font-Bold="True" Font-Names="Verdana"></asp:RequiredFieldValidator>
                </td>
                <td class="style18">
                    </td>
            </tr>
            <tr>
                <td class="style15" 
                    
                    style="font-size: medium; font-style: normal; font-weight: bold; color: #000000; font-family: Verdana">
                    Password*</td>
                <td class="style16">
                    <asp:TextBox ID="txtPassword" runat="server" Width="90px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="Campo obligatorio" 
                        Font-Bold="True" Font-Names="Verdana"></asp:RequiredFieldValidator>
                </td>
                <td class="style16">
                    </td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnEntrar" runat="server" Text="Entrar" 
                        onclick="btnEntrar_Click" Font-Bold="True" Font-Names="Verdana" 
                        BackColor="Red" ForeColor="#FFCC00" />
                    <cc1:RoundedCornersExtender ID="btnEntrar_RoundedCornersExtender" 
                        runat="server" BehaviorID="btnEntrar_RoundedCornersExtender" Color="AliceBlue" 
                        TargetControlID="btnEntrar" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

