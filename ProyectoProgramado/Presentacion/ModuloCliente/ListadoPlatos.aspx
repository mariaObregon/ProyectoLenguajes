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
        }
        .auto-style6 {
            width: 113px;
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

              <table class="auto-style4" style="width:100%">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="3">
                <asp:GridView ID="gridPlatosAgregados" runat="server" OnRowDeleting="gridPlatosAgregados_RowDeleting" OnSelectedIndexChanged="gridPlatosAgregados_SelectedIndexChanged" OnRowEditing="gridPlatosAgregados_RowEditing1" OnRowUpdating="gridPlatosAgregados_RowUpdating" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" HeaderText="Eliminar Plato" ShowDeleteButton="True" ShowHeader="True" />
                        <asp:CommandField ButtonType="Button" HeaderText="Modificar Plato" ShowCancelButton="False" ShowEditButton="True" ShowHeader="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
            <td class="auto-style7">
                <asp:DropDownList ID="dropCantidadModificar" runat="server" Visible="False">
                </asp:DropDownList>
                <br />
                <asp:Button ID="butCambioPlato" runat="server" OnClick="butCambioPlato_Click" Text="ConfirmarCambios" Visible="False" />
                <asp:Label ID="lblNuevaCantidad" runat="server" Text="Nueva Cantidad Asignar" Visible="False"></asp:Label>
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
            <td class="auto-style6"><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">₡ </span>
                <asp:Label ID="lblPago" runat="server" Text="0"></asp:Label>
                <br />
                Monto A Cancelar</td>
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
