<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ubicacion.aspx.cs" Inherits="ubicacion" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <asp:Image ID="Image1" runat="server" ImageAlign="Middle" 
        ImageUrl="Imagenes/UBICACION.jpg" />

    <body>

      <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager> 
     
 <asp:Button ID="Button1" runat="server" Text="Button" />
    <div>
        <cc1:AnimationExtender ID="AnimationExtender1" runat="server" TargetControlID="Button1">
        </cc1:AnimationExtender>
    <Animation>
    <OnMouseOver 
    <Color Duration="2" StartValue="#ffffff" EndValue="#000000" Property"style" PropertyKey="Backgroundcolor"/>

    </OnMouseOver>
    </Animation>
    </div>
    </body>
</asp:Content>

