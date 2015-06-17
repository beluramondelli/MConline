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
        .style19
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" 
        BackImageUrl="~/Imagenes/loguitos AGUA.png" Height="600px" Width="100%">
     <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <table class="style19">
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" BorderColor="#FFCC00" Font-Bold="True" 
                        Font-Names="Cracked Johnnie" Font-Size="XX-Large" ForeColor="Maroon" 
                        Text="BIENVENIDO"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF99" BorderColor="Red" 
                        BorderStyle="Solid" Height="150px" style="margin-left: 476px; margin-top: 0px;" 
                        Width="375px">
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
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="90px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtPassword" ErrorMessage="Campo obligatorio" 
                                        Font-Bold="True" Font-Names="Verdana"></asp:RequiredFieldValidator>
                                </td>
                                <td class="style16" height="600">
                                </td>
                            </tr>
                            <tr>
                                <td class="style14">
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="btnEntrar" runat="server" BackColor="Red" Font-Bold="True" 
                                        Font-Names="Verdana" ForeColor="#FFCC00" Height="33px" 
                                        onclick="btnEntrar_Click" Text="Entrar" />
                                    <cc1:RoundedCornersExtender ID="btnEntrar_RoundedCornersExtender" 
                                        runat="server" BehaviorID="btnEntrar_RoundedCornersExtender" Color="AliceBlue" 
                                        TargetControlID="btnEntrar" />
                                </td>
                                <td bgcolor="#FFFF99">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </asp:Panel>




   
</asp:Content>

