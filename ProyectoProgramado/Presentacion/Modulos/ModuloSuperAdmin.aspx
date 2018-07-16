<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ModuloSuperAdmin.aspx.cs" Inherits="Presentacion.Modulos.ModuloSuperAdmin" %>
<%@ MasterType VirtualPath="~/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 334px;
    }
    .auto-style6 {
        width: 281px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="PanelPrincipal" runat="server" Height="254px">
        <table class="w-100">
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="BtnAgregarU" runat="server" Text="Agregar usuario" OnClick="BtnAgregarU_Click" Width="238px" />
                </td>
                <td>
                    <asp:Button ID="BtnBuscarC" runat="server" OnClick="BtnBuscarC_Click" Text="Buscar cliente" Width="238px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="BtnEliminarU" runat="server" OnClick="BtnEliminarU_Click" Text="Eliminar usuario" Width="238px" />
                </td>
                <td>
                    <asp:Button ID="BtnEstado" runat="server" OnClick="BtnEstado_Click" Text="Estado de pedidos" Width="238px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="BtnModificarU" runat="server" OnClick="BtnModificarU_Click" Text="Modificar usuario" Width="238px" />
                </td>
                <td>
                    <asp:Button ID="BtnMostrarP" runat="server" OnClick="BtnMostrarP_Click" Text="Mostrar pedidos" Width="238px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="BtnBuscarU" runat="server" OnClick="BtnBuscarU_Click" Text="Buscar usuario" Width="238px" />
                </td>
                <td>
                    <asp:Button ID="BtnInsertarP" runat="server" OnClick="BtnInsertarP_Click" Text="Insertar plato" Width="238px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="BtnHabilitar" runat="server" OnClick="BtnHabilitar_Click" Text="Habilitar cliente" Width="238px" />
                </td>
                <td>
                    <asp:Button ID="BtnModificarP" runat="server" OnClick="BtnModificarP_Click" Text="Modificar plato" Width="238px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
