<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="EstadoPedido.aspx.cs" Inherits="Presentacion.EstadoPedido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 20%;
        }
        .auto-style4 {
            width: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <table class="auto-style3">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="Linea" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="Linea_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField AccessibleHeaderText="Editar" ButtonType="Image" SelectImageUrl="~/Imagenes/icon.png" ShowHeader="True" ShowSelectButton="True">
                        <ControlStyle Height="25px" Width="25px" />
                        </asp:CommandField>
                        <asp:BoundField DataField="PedidoID" HeaderText="PedidoID" />
                        <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
                        <asp:BoundField DataField="DescripcionEstado" HeaderText="DescripcionEstado" />
                        <asp:TemplateField HeaderText="NuevoEstado">
                            <ItemTemplate>
                                <asp:DropDownList ID="NuevoEstado" runat="server" Enabled="False">
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Cliente" HeaderText="Cliente" />
                        <asp:TemplateField HeaderText="LineasPedido">
                            <ItemTemplate>
                                <asp:GridView ID="Detalle" runat="server" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                                        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
                                        <asp:BoundField DataField="Precio" HeaderText="Precio" />
                                    </Columns>
                                </asp:GridView>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
