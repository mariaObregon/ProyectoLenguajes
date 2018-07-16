<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ModuloAdmin.aspx.cs" Inherits="Presentacion.Menus.MenuAdmin" %>
<%@ MasterType VirtualPath="~/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 290px;
    }
    .auto-style7 {
        width: 276px;
    }
</style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="PanelPrincipal" runat="server" Height="254px">
    <table class="w-100">
        <tr>
            <td class="auto-style7">
                <asp:Button ID="BtnHabilitar" runat="server" OnClick="BtnHabilitar_Click" Text="Habilitar cliente" Width="238px" />
            </td>
            <td>
                <asp:Button ID="BtnMostrarP" runat="server" OnClick="BtnMostrarP_Click" Text="Mostrar pedidos" Width="238px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Button ID="BtnBuscarC" runat="server" OnClick="BtnBuscarC_Click" Text="Buscar cliente" Width="238px" />
            </td>
            <td>
                <asp:Button ID="BtnInsertarP" runat="server" OnClick="BtnInsertarP_Click" Text="Insertar plato" Width="238px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Button ID="BtnEstado" runat="server" OnClick="BtnEstado_Click" Text="Estado de pedidos" Width="238px" />
            </td>
            <td>
                <asp:Button ID="BtnModificarP" runat="server" OnClick="BtnModificarP_Click" Text="Modificar plato" Width="238px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>
