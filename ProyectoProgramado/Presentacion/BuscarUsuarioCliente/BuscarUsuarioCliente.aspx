<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="BuscarUsuarioCliente.aspx.cs" Inherits="Presentacion.BuscarUsuarioCliente.BuscarUsuarioCliente" %>
<%@ MasterType VirtualPath="~/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        height: 23px;
    }
    .auto-style6 {
        width: 157px;
        height: 23px;
    }
    .auto-style7 {
        height: 23px;
        width: 221px;
    }
    .auto-style8 {
        height: 26px;
        width: 221px;
    }
    .auto-style9 {
        height: 35px;
        width: 221px;
    }
</style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="PanelMostarLista" runat="server" Width="100%">
        <table class="auto-style19" style="width: 100%">
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:RadioButtonList ID="RadioButtonListFiltro" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListFiltro_SelectedIndexChanged" Font-Size="Large" ForeColor="#333399" Width="204px">
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
                <td class="auto-style9">
                    <asp:TextBox ID="TbValorFiltro" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style32" style="height: 35px">
                    <asp:Button ID="BtnFiltrar" runat="server" OnClick="BtnFiltrar_Click" Text="Buscar" Width="120px" Font-Size="Medium" />
                </td>
                <td style="height: 35px; width: 157px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style30" colspan="3">
                    <asp:GridView ID="GridViewLista" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
