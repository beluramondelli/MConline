<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ubicacion.aspx.cs" Inherits="ubicacion" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  

    
    <div>
<asp:ScriptManager ID="ScriptManager1" runat="server">

    </asp:ScriptManager>
            <asp:Panel ID="Panel1" runat="server" Height="49px" style="margin-top: 0px">
                <asp:Image ID="Image1" runat="server" DescriptionUrl="~/Imagenes/McDonald.jpg" 
                    Height="36px" ImageUrl="~/Imagenes/McDonald.jpg" Width="46px" />
                <asp:Button ID="Button1" runat="server" Text="Nueva Córdoba" BackColor="White" 
                    BorderColor="White" BorderStyle="None" Font-Bold="True" ForeColor="#CC0000" 
                    Height="33px" style="margin-top: 0px" Width="124px" />
                <br />
                <br />
                <br />
            </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="103px">
            Sucursal McDonald&#39;s Plaza España<br /> Chacabuco 1234<br /> Tel: 0351- 543467<br />
            <br />
            Sucursal McDonald´s Patio Olmos<br /> Bv. San juan y Velez Sarfield<br />
            <br />
        </asp:Panel>
        <cc1:CollapsiblePanelExtender ID="Panel2_CollapsiblePanelExtender" 
            runat="server" Enabled="true" CollapseControlID="Panel1" Collapsed="true" CollapsedText="+" ExpandControlID="Panel1" ExpandedSize="250" ExpandedText="Button1" TextLabelID="Label1" ScrollContents="True" BehaviorID="Panel2_CollapsiblePanelExtender" 
            TargetControlID="Panel2" />

            <asp:Panel ID="Panel3" runat="server" Height="49px" style="margin-top: 0px">
                <asp:Image ID="Image2" runat="server" DescriptionUrl="~/Imagenes/McDonald.jpg" 
                    Height="36px" ImageUrl="~/Imagenes/McDonald.jpg" Width="46px" />
                <asp:Button ID="Button2" runat="server" Text="Centro" BackColor="White" 
                    BorderColor="White" BorderStyle="None" Font-Bold="True" ForeColor="#CC0000" 
                    Height="33px" onclick="Button2_Click" style="margin-top: 0px" Width="97px" />
                <br />
                <br />
                <br />
            </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" Height="123px">
            Sucursal McDonald&#39;s Peatonal<br /> 25 de mayo 45<br /> Tel: 0351- 543447<br />
            <br />
            Sucursal McDonald´s
            <br />
            General paz 135<br /> Tel 0351-568793</asp:Panel>
        <cc1:CollapsiblePanelExtender ID="Panel4_CollapsiblePanelExtender" 
            runat="server" Enabled="true" CollapseControlID="Panel3" Collapsed="true" 
            CollapsedText="+" ExpandControlID="Panel3" ExpandedSize="250" 
            ExpandedText="Button2" TextLabelID="Label1" ScrollContents="True" BehaviorID="Panel2_CollapsiblePanelExtender" 
            TargetControlID="Panel4" />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    
</asp:Content>

