<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="EliminarUsuario.aspx.cs" Inherits="Presentacion.AdministracionUsuario.EliminarUsuario" %>
<%@ MasterType VirtualPath="~/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 102px;
        }
    .auto-style6 {
        width: 224px;
    }
    .auto-style7 {
        width: 142px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
            <asp:Panel ID="PanelMostarLista" runat="server" Height="305px" Width="100%">

                <table class="auto-style19" style="width:100%">
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style42">&nbsp;</td>
                        <td class="auto-style43">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style42">&nbsp;</td>
                        <td class="auto-style43">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label10" runat="server" Text="Filtrar por Nombre"></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TbNombre" runat="server" Width="201px"></asp:TextBox>
                        </td>
                        <td class="auto-style42">
                            <asp:Button ID="BtnFiltrar" runat="server" Text="Filtrar" Width="114px" OnClick="BtnFiltrar_Click" />
                        </td>
                        <td class="auto-style43">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style30" colspan="5">
                            <asp:GridView ID="GridViewEliminar" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridViewEliminar_RowDeleting" Width="100%">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" />
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
                    </tr>
                </table>
            </asp:Panel>

</asp:Content>