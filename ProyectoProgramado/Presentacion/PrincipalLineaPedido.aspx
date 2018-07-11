<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="PrincipalLineaPedido.aspx.cs" Inherits="Presentacion.PrincipalLineaPedido" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style3 {
            width: 164px;
        }
        .auto-style4 {
            width: 285px;
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

      <ContentTemplate> 

       <table class="w-100">
           <tr>
               <td class="auto-style4">&nbsp;</td>
               <td class="auto-style3">&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>
                   <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Imagenes/webservices-http-api-playsms-para-agregar-una-cuenta-de-usuario.png" Width="50px" />
               </td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style4">&nbsp;</td>
               <td class="auto-style3">&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style4">&nbsp;</td>
               <td class="auto-style3">&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style4">
                   <asp:DropDownList ID="dropPlatosHab" runat="server">
                   </asp:DropDownList>
                   <asp:Label ID="labelPlatoshab" runat="server" Text="Platos Habilitados"></asp:Label>
               </td>
               <td class="auto-style3">&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>
                   <asp:Label ID="lbPrueba" runat="server" Text="Label"></asp:Label>
               </td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style4">
                   &nbsp;</td>
               <td class="auto-style3">&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style4">&nbsp;</td>
               <td class="auto-style3">&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style4">&nbsp;</td>
               <td class="auto-style3">&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style4">&nbsp;</td>
               <td class="auto-style3">&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style4">&nbsp;</td>
               <td class="auto-style3">&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style4">&nbsp;</td>
               <td class="auto-style3">
                   <asp:Button ID="butDetallePlato" runat="server" OnClick="Button1_Click" Text="Detalle Plato" />
               </td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
       </table>

     </ContentTemplate>

         <Triggers>
           <asp:PostBackTrigger ControlID="butDetallePlato" />
<asp:PostBackTrigger ControlID="dropPlatosHab"></asp:PostBackTrigger>
<asp:PostBackTrigger ControlID="dropPlatosHab"></asp:PostBackTrigger>
<asp:PostBackTrigger ControlID="dropPlatosHab"></asp:PostBackTrigger>
         </Triggers>

         <Triggers>
           <asp:PostBackTrigger ControlID="dropPlatosHab" />
         </Triggers>

    </asp:UpdatePanel>

</asp:Content>
