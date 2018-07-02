<%@ Page Title="" Language="C#" MasterPageFile="~/Menus/MasterAdmin.master" AutoEventWireup="true" CodeBehind="EliminarUsuario.aspx.cs" Inherits="Presentacion.AdministracionUsuario.EliminarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:UpdatePanel ID="UpdatePanelEliminar" runat="server">
        <ContentTemplate>
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
                        <td class="auto-style31">&nbsp;</td>
                        <td class="auto-style32">&nbsp;</td>
                        <td class="auto-style42">&nbsp;</td>
                        <td class="auto-style43">&nbsp;</td>
                        <td>&nbsp;</td>
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
                            <asp:GridView ID="GridViewEliminar" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridViewEliminar_RowDeleting">
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
                        <td class="auto-style43">&nbsp;</td>
                        <td class="auto-style30">&nbsp;</td>
                    </tr>
                </table>


            </asp:Panel>
        </ContentTemplate>

    </asp:UpdatePanel>


</asp:Content>
