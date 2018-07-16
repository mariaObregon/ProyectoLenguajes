<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="DetallePlato.aspx.cs" Inherits="Presentacion.ModuloCliente.DetallePlato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="JavaScript/ScriptFacebook.js"></script>
    <script type="text/javascript" src="JavaScript/JavaScriptValidaciones.js"></script>

    <style type="text/css">
        .auto-style5 {
            height: 41px;
        }
        .auto-style6 {
            width: 310px;
        }
        .auto-style7 {
            height: 41px;
            width: 310px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <asp:UpdatePanel ID="UpdatePanel3" runat="server">

    <ContentTemplate> 


     <div class="container">

      <div class="row">

          <div class="col-xs-12">

              <table class="w-100">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                Nombre Plato:
                <br />
                <asp:Label ID="lbNombrePlato" runat="server" Text="Nombre PLato"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                Precio Plato:
                <br />
                <asp:Label ID="lbPrecioPlato" runat="server" Text="Precio Plato"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
            </td>
            <td class="auto-style5">
                Descripcion PLato:
                <br />
                <asp:Label ID="lbDescPlato" runat="server" Text="Descripcion Plato"></asp:Label>
            </td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>Seleccion Cantidad De Platos A Agregar<br />
                <asp:DropDownList ID="dropCantidadPlatos" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Image ID="imgPlatoDeta" runat="server" Width="300px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="butAgregarPlato" runat="server" OnClick="butAgregarPlato_Click" Text="Agregar" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="butRegresar" runat="server" OnClick="butRegresar_Click" Text="Regresar" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
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
           <asp:PostBackTrigger ControlID="butAgregarPlato" />
         </Triggers>

    </asp:UpdatePanel>

</asp:Content>
