<%@ Page Title="" Language="C#" MasterPageFile="~/Menus/MasterAdmin.master" AutoEventWireup="true" CodeBehind="BloqueoCliente.aspx.cs" Inherits="Presentacion.AdministracionCliente.BloqueoCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="PanelMostarLista" runat="server">
        <table class="auto-style19">
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style43">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <asp:Label ID="Label9" runat="server" Text="Seleccione un elemento de la lista"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:Label ID="LbUsuario" runat="server" Text="Usuario seleccionado"></asp:Label>
                </td>
                <td class="auto-style42">
                    <asp:TextBox ID="TbUsuario" runat="server" CssClass="auto-style40" ReadOnly="True" Width="144px"></asp:TextBox>
                </td>
                <td class="auto-style43">
                    <asp:Button ID="BtnHabilitar" runat="server" Text="Habilitar" OnClick="BtnHabilitar_Click" />
                </td>
                <td>
                    <asp:Button ID="BtnDeshabilitar" runat="server" Text="Deshabilitar" OnClick="BtnDeshabilitar_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <asp:Label ID="Label10" runat="server" Text="Filtrar por Nombre"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:TextBox ID="TbNombre" runat="server" Width="201px"></asp:TextBox>
                </td>
                <td class="auto-style42">
                    <asp:Button ID="BtnFiltrar" runat="server" Text="Filtrar" Width="114px" OnClick="BtnFiltrar_Click" />
                </td>
                <td class="auto-style43">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style30" colspan="3">
                    <asp:GridView ID="GridViewBloqueo" runat="server" OnSelectedIndexChanged="GridViewBloqueo_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </td>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
