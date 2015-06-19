<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 163px;
        }
        .style19
        {
            width: 100%;
        }
        .style20
        {
            height: 46px;
        }
        .style21
        {
            height: 376px;
        }
        .style22
        {
            width: 163px;
            height: 56px;
        }
        .style24
        {
            height: 56px;
            width: 335px;
        }
        .style27
        {
            width: 335px;
        }
        .style28
        {
            width: 163px;
            height: 21px;
        }
        .style29
        {
            height: 21px;
            width: 335px;
        }
        .style30
        {
            width: 163px;
            height: 62px;
        }
        .style31
        {
            height: 62px;
            width: 335px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" 
         BackImageUrl="~/Imagenes/principalagua.jpg" Height="600px" Width="100%">
     <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
                                       <asp:Image ID="Image4" runat="server" Height="74px" 
                                           ImageUrl="~/Imagenes/que bueno que viniste.jpg" Width="431px" />
                                       <asp:Image ID="Image5" runat="server" Height="74px" 
                                           ImageUrl="~/Imagenes/que bueno que viniste.jpg" Width="431px" />
                                            <asp:Image ID="Image6" runat="server" Height="74px" 
                                           ImageUrl="~/Imagenes/que bueno que viniste.jpg" Width="431px" />
                                  
     <ContentTemplate>
     
                                           
                                           />
        <table class="style19">
            <tr>
                <td class="style20">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF66" BorderColor="Red" 
                        BorderStyle="Solid" Height="308px" style="margin-left: 399px; margin-top: 0px;" 
                        Width="529px">
                        <table style="width: 100%; height: 125px; margin-top: 0px;">
                            <tr>
                                <td class="style22" 
                                    
                                    
                                    style="font-size: medium; font-style: normal; font-weight: bold; color: #000000; font-family: Verdana;" 
                                    bgcolor="#CC0000">
                                    <asp:Image ID="Image2" runat="server" Height="103px" 
                                        ImageUrl="~/Imagenes/mcdonalds-logo-580x397.png" Width="142px" 
                                        ImageAlign="Middle" />
                                    </td>
                                <td class="style24" bgcolor="#CC0000" 
                                    
                                    style="font-size: xx-large; font-weight: bold; font-style: normal; color: #FFFF99; font-family: 'Arial Black'" 
                                    align="center">
                                    BIENVENIDO</td>
                                
                            </tr>
                            <tr>
                                <td class="style30" 
                                    
                                    style="font-size: large; font-style: normal; font-weight: bold; color: #CC0000; font-family: Verdana;" 
                                    bgcolor="#FFFF66">
                                    Usuario*</td>
                                <td class="style31" bgcolor="#FFFF66">
                                    <asp:TextBox ID="txtUsuario" runat="server" Width="98px" Height="32px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtUsuario" ErrorMessage="Campo Obligatorio" 
                                        Font-Bold="True" Font-Names="Verdana"></asp:RequiredFieldValidator>
                                </td>
                               
                                
                               
                            </tr>
                            <tr>
                                <td class="style28" 
                                    
                                    
                                    style="font-size: large; font-style: normal; font-weight: bold; color: #CC0000; font-family: Verdana" 
                                    bgcolor="#FFFF66">
                                    Password*</td>
                                <td class="style29" bgcolor="#FFFF66">
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="99px" 
                                        Height="33px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtPassword" ErrorMessage="Campo obligatorio" 
                                        Font-Bold="True" Font-Names="Verdana"></asp:RequiredFieldValidator>
                                </td>
                                
                                
                                
                            </tr>
                            <tr>
                                <td class="style14" bgcolor="#FFFF66">
                                    &nbsp;</td>
                                <td bgcolor="#FFFF66" class="style27">
                                    <asp:Button ID="btnEntrar" runat="server" BackColor="#CC0000" Font-Bold="True" 
                                        Font-Names="Verdana" ForeColor="#FFFF66" Height="46px" 
                                        onclick="btnEntrar_Click" Text="Entrar" Font-Size="Medium" Width="98px" />
                                    <cc1:RoundedCornersExtender ID="btnEntrar_RoundedCornersExtender" 
                                        runat="server" BehaviorID="btnEntrar_RoundedCornersExtender" Color="AliceBlue" 
                                        TargetControlID="btnEntrar" />
                                </td>
                               
                                
                               
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </asp:Panel>




   
</asp:Content>

