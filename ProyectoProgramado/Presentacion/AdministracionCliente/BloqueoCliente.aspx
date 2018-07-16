<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="BloqueoCliente.aspx.cs" Inherits="Presentacion.AdministracionCliente.BloqueoCliente" %>

<%@ MasterType VirtualPath="~/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 16px;
        }

        .auto-style6 {
            width: 204px;
        }

        .auto-style7 {
            width: 226px;
        }

        .auto-style9 {
            width: 130px;
        }
    </style>
</asp:Content>


<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="PanelMostarLista" runat="server" Width="100%" Height="328px">

        <table class="auto-style19" style="width: 100%">

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

                    <tr>
                        <td colspan="4">
                            <asp:Label ID="Label9" runat="server" Text="Seleccione un elemento de la lista" Font-Size="Large" ForeColor="Red"></asp:Label>
                        </td>
                        <td class="auto-style43">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="LbUsuario" runat="server" Text="Usuario seleccionado" Font-Size="Large"></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TbUsuario" runat="server" CssClass="auto-style40" ReadOnly="True" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:Button ID="BtnHabilitar" runat="server" OnClick="BtnHabilitar_Click" Text="Habilitar" Width="120px" />
                        </td>
                        <td class="auto-style5">
                            <asp:Button ID="BtnDeshabilitar" runat="server" CssClass="auto-style8" OnClick="BtnDeshabilitar_Click" Text="Deshabilitar" Width="120px" />
                        </td>
                        <td class="auto-style43">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label10" runat="server" Text="Filtrar por Nombre" Font-Size="Large"></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TbNombre" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <asp:Button ID="BtnFiltrar" runat="server" Text="Filtrar" Width="120px" OnClick="BtnFiltrar_Click" />
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style43">&nbsp;</td>
                    </tr>

                </ContentTemplate>
            </asp:UpdatePanel>

            <tr>
                <td class="auto-style30" colspan="5">
                    <asp:GridView ID="GridViewBloqueo" runat="server" OnSelectedIndexChanged="GridViewBloqueo_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
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
