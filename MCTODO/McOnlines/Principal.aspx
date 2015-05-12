<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Principal.aspx.cs" Inherits="Principal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style8
        {
            height: 755px;
        }
        .style1
        {
            width:100%;
            height: 832px;
           
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ScriptManager ID="ScriptManager2" runat="server">
                                </asp:ScriptManager>
                   
                    <table class="style1" >
                        <tr>
                            <td class="style8">
                               <asp:UpdatePanel ID="UpdatePanel1" runat="server"  Height="785px" 
                                    HorizontalAlign="Center" style="margin-right: 113px" Width="1333px">
                                   <ContentTemplate>
                                       <asp:Panel ID="Panel1" runat="server"  
                                           BackImageUrl="~/Imagenes/McDonaldAGUA.jpg" Height="468px" 
                                    style="margin-top: 0px" Width="1331px"/>
                                      
                                        <asp:Timer ID="Timer1" runat="server" Interval="2000" />
                                        <asp:Image ID="Image1" runat="server" Height="318px" ImageAlign="AbsMiddle" 
                                            Style="margin-left: 291px; margin-top: 62px" Width="243px" />
                                        <asp:Image ID="Image2" runat="server" Height="318px" ImageAlign="AbsMiddle" Style="margin-left: 23px;
                    margin-top: 55px" Width="235px" />
                                        <asp:Image ID="Image3" runat="server" Height="318px" ImageAlign="AbsMiddle" Style="margin-left: 34px;
                    margin-top: 55px" Width="232px" />
                                        <asp:Timer ID="Timer3" runat="server" Interval="2000" />
                                        <asp:Timer ID="Timer2" runat="server" Interval="2000" OnTick="Timer2_Tick" />
                                  
                          
                                <br />
                               </asp:Panel>
                                    </ContentTemplate>  
                                </asp:UpdatePanel>
                                <br />
                            </td>
                        </tr>
                    </table>
               
   
 <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server"    BackImageUrl="~/Imagenes/mcdonalds-art-7AGUA.jpg" Height="473px">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="2000">
                </asp:Timer>
                <asp:Image ID="Image1" runat="server" Height="318px" Width="243px" ImageAlign="AbsMiddle"
                    Style="margin-left: 0px; margin-top: 155px" />
                <asp:Image ID="Image2" runat="server" Height="318px" ImageAlign="AbsMiddle" Style="margin-left: 23px;
                    margin-top: 156px" Width="235px" />
                <asp:Image ID="Image3" runat="server" Height="318px" ImageAlign="AbsMiddle" Style="margin-left: 34px;
                    margin-top: 156px" Width="232px" />
                <asp:Timer ID="Timer3" runat="server" Interval="2000">
                </asp:Timer>
                <asp:Timer ID="Timer2" runat="server" Interval="2000" OnTick="Timer2_Tick">
                </asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>--%>
</asp:Content>



