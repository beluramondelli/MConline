<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ubicacion.aspx.cs" Inherits="ubicacion" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 253px;
        }
        .style2
        {
            width: 259px;
        }
        .style3
        {
            width: 265px;
        }
        .style4
        {
            width: 321px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  

    
    <div>
<asp:ScriptManager ID="ScriptManager1" runat="server">

    </asp:ScriptManager>
            <table  runat="server" Height="174px" Width="554px">

                <tr>
                
                
              
        <td class="style4"> 
        <asp:Image ID="Image5" runat="server" 
                  ImageUrl="~/Imagenes/ronald-macdonald_1188363KHFJF.jpg" Height="70px" 
                Width="310px" />
                 <br />
                <br />
                <br />
                 <br />
                <br />
                <br />
            <asp:Panel ID="Panel1" runat="server" Height="47px" style="margin-top: 0px" 
            Width="250px">
                <asp:Image ID="Image1" runat="server" DescriptionUrl="~/Imagenes/McDonald.jpg" 
                    Height="36px" ImageUrl="~/Imagenes/McDonald.jpg" Width="46px" />
                <asp:Button ID="Button1" runat="server" Text="NUEVA CÓRDOBA" BackColor="White" 
                    BorderColor="White" BorderStyle="None" Font-Bold="True" ForeColor="#CC0000" 
                    Height="40px" style="margin-top: 0px" Width="129px" />
                <br />
                <br />
                <br />
            </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="103px" Width="251px">
            Sucursal McDonald&#39;s Plaza España<br /> Chacabuco 1234<br /> Tel: 0351- 543467<br />
            <br />
            Sucursal McDonald´s Patio Olmos<br /> Bv. San juan y Velez Sarfield<br />
            <br />
        </asp:Panel>
        <cc1:CollapsiblePanelExtender ID="Panel2_CollapsiblePanelExtender" 
            runat="server" Enabled="true" CollapseControlID="Panel1" Collapsed="true" CollapsedText="+" ExpandControlID="Panel1" ExpandedSize="120" ExpandedText="Button1" TextLabelID="Label1"  BehaviorID="Panel2_CollapsiblePanelExtender" 
            TargetControlID="Panel2" />
            <br />

            <asp:Panel ID="Panel3" runat="server" Height="49px" style="margin-top: 0px" 
            Width="250px">
                <asp:Image ID="Image2" runat="server" DescriptionUrl="~/Imagenes/McDonald.jpg" 
                    Height="36px" ImageUrl="~/Imagenes/McDonald.jpg" Width="46px" />
                <asp:Button ID="Button2" runat="server" Text="CENTRO" BackColor="White" 
                    BorderColor="White" BorderStyle="None" Font-Bold="True" ForeColor="#CC0000" 
                    Height="33px" onclick="Button2_Click" style="margin-top: 0px" 
                    Width="72px" />
                <br />
                <br />
                <br />
            </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" Height="197px" Width="249px">
            Sucursal McDonald&#39;s Peatonal<br /> 25 de mayo 45<br /> Tel: 0351- 543447<br />
            <br />
            Sucursal McDonald´s Centro<br />
            General paz 135<br /> Tel 0351-568793<br />
            <br />
            Sucursal McDonald´s Nuevo centro<br /> Nuevo Centro shopping<br /> &nbsp;Patio de 
            comidas<br /> </asp:Panel>
        <cc1:CollapsiblePanelExtender ID="Panel4_CollapsiblePanelExtender" 
            runat="server" Enabled="true" CollapseControlID="Panel3" Collapsed="true" 
            CollapsedText="+" ExpandControlID="Panel3" ExpandedSize="140" 
            ExpandedText="Button2" TextLabelID="Label1"  BehaviorID="Panel4_CollapsiblePanelExtender" 
            TargetControlID="Panel4" />
            <br />

            <asp:Panel ID="Panel5" runat="server" Height="49px" style="margin-top: 0px" 
            Width="248px">
                <asp:Image ID="Image3" runat="server" DescriptionUrl="~/Imagenes/McDonald.jpg" 
                    Height="36px" ImageUrl="~/Imagenes/McDonald.jpg" Width="46px" />
                <asp:Button ID="Button3" runat="server" Text="CERRO DE LAS ROSAS" BackColor="White" 
                    BorderColor="White" BorderStyle="None" Font-Bold="True" ForeColor="#CC0000" 
                    Height="33px" onclick="Button2_Click" style="margin-top: 0px" 
                    Width="170px" />
                <br />
                <br />
                <br />
            </asp:Panel>
        <asp:Panel ID="Panel6" runat="server" Height="133px" Width="247px">
            Sucursal McDonald&#39;s Cerro<br /> Av. Rafael Nuñez 3987<br /> Tel: 0351- 543449<br />
            <br />
            Sucursal McDonald´s Cerro<br />
            Av. Rafael Nuñez 4746<br /> Tel 0351-568795</asp:Panel>
        <cc1:CollapsiblePanelExtender ID="Panel6_CollapsiblePanelExtender" 
            runat="server" Enabled="true" CollapseControlID="Panel5" Collapsed="true" 
            CollapsedText="+" ExpandControlID="Panel5" ExpandedSize="140" 
            ExpandedText="Button3"   BehaviorID="Panel6_CollapsiblePanelExtender" 
            TargetControlID="Panel6" />
        <br />
        <br />
        <br />
            
        <br />
        <br />

        </td>
         <td>
              <asp:Image ID="Image4" runat="server" ImageUrl="~/Imagenes/UBICACION.jpg" 
                      Height="459px" Width="597px" />
              
              
              
              
              
              
              
              </td>
        </tr>
        </table>
    </div>
    
</asp:Content>

