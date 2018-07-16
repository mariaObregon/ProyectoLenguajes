<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ListadoPlatos.aspx.cs" Inherits="Presentacion.ModuloCliente.ListadoPlatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                <asp:GridView ID="gridPlatosAgregados" runat="server" OnRowCommand="gridPlatosAgregados_RowCommand" OnRowDeleting="gridPlatosAgregados_RowDeleting" OnSelectedIndexChanged="gridPlatosAgregados_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ButtonType="Button" HeaderText="Eliminar Plato" ShowDeleteButton="True" ShowHeader="True" />
                        <asp:CommandField ButtonType="Button" HeaderText="Modificar Plato" ShowHeader="True" ShowSelectButton="True" />
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
</asp:Content>
