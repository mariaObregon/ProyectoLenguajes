<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="ListadoPlatos.aspx.cs" Inherits="Presentacion.ModuloCliente.ListadoPlatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="JavaScript/ScriptFacebook.js"></script>
    <script type="text/javascript" src="JavaScript/JavaScriptValidaciones.js"></script>


    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 246px;
        }
        .auto-style6 {
            width: 80px;
        }
        .auto-style7 {
            width: 154px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div class="container">

      <div class="row">

          <div class="col-xs-12">

              <table class="auto-style4">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:GridView ID="gridPlatosAgregados" runat="server" OnRowDeleting="gridPlatosAgregados_RowDeleting" OnSelectedIndexChanged="gridPlatosAgregados_SelectedIndexChanged" OnRowEditing="gridPlatosAgregados_RowEditing1" OnRowUpdating="gridPlatosAgregados_RowUpdating">
                    <Columns>
                        <asp:CommandField ButtonType="Button" HeaderText="Eliminar Plato" ShowDeleteButton="True" ShowHeader="True" />
                        <asp:CommandField ButtonType="Button" HeaderText="Modificar Plato" ShowCancelButton="False" ShowEditButton="True" ShowHeader="True" />
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style7">
                <asp:DropDownList ID="dropCantidadModificar" runat="server" Visible="False">
                </asp:DropDownList>
                <br />
                <asp:Button ID="butCambioPlato" runat="server" OnClick="butCambioPlato_Click" Text="ConfirmarCambios" Visible="False" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="butConfirmarPedido" runat="server" OnClick="butConfirmarPedido_Click" Text="Confirmar Pedido" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="butPagPrincipal" runat="server" OnClick="butPagPrincipal_Click" Text="Principal" />
            </td>
            <td>&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="butLimpCarrito" runat="server" OnClick="butLimpCarrito_Click" Text="Limpiar Carrito" />
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


          </div>



      </div>


    </div>


    
</asp:Content>
