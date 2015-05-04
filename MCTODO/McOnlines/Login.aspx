<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 81px;
        }
        .style14
        {
            width: 96px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="103px" style="margin-left: 247px" 
        Width="380px">
        <table style="width: 100%; height: 100px;">
            <tr>
                <td class="style14" 
                    style="font-size: medium; font-style: normal; font-weight: bold; color: #000000; font-family: Verdana;">
                    Usuario</td>
                <td>
                    <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14" 
                    style="font-size: medium; font-style: normal; font-weight: bold; color: #000000; font-family: Verdana">
                    Password</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnEntrar" runat="server" Text="Entrar" 
                        onclick="btnEntrar_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

