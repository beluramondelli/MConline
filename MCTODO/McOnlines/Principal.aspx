<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Principal.aspx.cs" Inherits="Principal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
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
        </asp:UpdatePanel>
</asp:Content>


