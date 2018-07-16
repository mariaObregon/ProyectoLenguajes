<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="BuscarUsuarioCliente.aspx.cs" Inherits="Presentacion.BuscarUsuarioCliente.BuscarUsuarioCliente" %>
<%@ MasterType VirtualPath="~/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="PanelMostarLista" runat="server">
        <table class="auto-style19">
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
                <td style="width: 157px">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31" style="height: 26px">
                    <asp:RadioButtonList ID="RadioButtonListFiltro" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListFiltro_SelectedIndexChanged">
                        <asp:ListItem Value="ID">Filtrar por ID</asp:ListItem>
                        <asp:ListItem Value="Nombre">Filtrar por Nombre</asp:ListItem>
                        <asp:ListItem Value="Completa">Lista Completa</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style32" style="height: 26px">
                </td>
                <td style="height: 26px; width: 157px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31" style="height: 35px">
                    <asp:TextBox ID="TbValorFiltro" runat="server" Width="201px"></asp:TextBox>
                </td>
                <td class="auto-style32" style="height: 35px">
                    <asp:Button ID="BtnFiltrar" runat="server" OnClick="BtnFiltrar_Click" Text="Buscar" Width="114px" />
                </td>
                <td style="height: 35px; width: 157px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style30" colspan="3">
                    <asp:GridView ID="GridViewLista" runat="server">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
