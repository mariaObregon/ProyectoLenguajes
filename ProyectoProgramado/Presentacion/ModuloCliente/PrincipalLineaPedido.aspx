<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="PrincipalLineaPedido.aspx.cs" Inherits="Presentacion.ModuloCliente.PrincipalLineaPedido" %>
<%@ MasterType VirtualPath="~/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="JavaScript/ScriptFacebook.js"></script>
    <script type="text/javascript" src="JavaScript/JavaScriptValidaciones.js"></script>


    <style type="text/css">
        .auto-style3 {
            width: 164px;
        }
        .auto-style4 {
            width: 285px;
        }
    </style>

    <script language="C#" runat="server">

      void ImageButtonCarrito_Click(object sender, ImageClickEventArgs e) 
      {
        Response.Redirect("/ModuloCliente/ListadoPlatos.aspx");
      }

   </script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

      <ContentTemplate> 


     <div class="container">

      <div class="row">

          <div class="col-xs-12">

              <table class="w-100">
           <tr>
               <td class="auto-style4">&nbsp;</td>
               <td class="auto-style3">&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>
                   <asp:ImageButton ID="imgButCarritoCliente" runat="server" 
                    ImageUrl="~/Imagenes/shopping-cart-349544_960_720.png" 
                    OnClick="ImageButtonCarrito_Click" 
                    Width="60px" />
               </td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>
                   &nbsp;</td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style4">&nbsp;</td>
               <td class="auto-style3">&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>Carrito Compras<br /> </td>
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
                   &nbsp;</td>
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


          </div>

      </div>


    </div>


       

     </ContentTemplate>

         <Triggers>
           <asp:PostBackTrigger ControlID="butDetallePlato" />
<asp:PostBackTrigger ControlID="dropPlatosHab"></asp:PostBackTrigger>
<asp:PostBackTrigger ControlID="dropPlatosHab"></asp:PostBackTrigger>
<asp:PostBackTrigger ControlID="dropPlatosHab"></asp:PostBackTrigger>
<asp:PostBackTrigger ControlID="dropPlatosHab"></asp:PostBackTrigger>
<asp:PostBackTrigger ControlID="dropPlatosHab"></asp:PostBackTrigger>
         </Triggers>

         <Triggers>
           <asp:PostBackTrigger ControlID="dropPlatosHab" />
         </Triggers>

    </asp:UpdatePanel>

</asp:Content>
