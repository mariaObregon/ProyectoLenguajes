<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AdministracionPedidos.aspx.cs" Inherits="Presentacion.AdministracionPedidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
        width: 219px;
    }
    .auto-style18 {
        height: 211px;
    }
    .auto-style19 {
        width: 219px;
        height: 211px;
    }
        .auto-style21 {
            width: 300px;
        }
        .auto-style22 {
            width: 300px;
            height: 211px;
        }
        .auto-style23 {
            margin-left: 0px;
        }
        .auto-style24 {
            width: 1118px;
        }
        .auto-style25 {
            height: 23px;
        }
        .auto-style26 {
            width: 219px;
            height: 23px;
        }
        .auto-style27 {
            width: 300px;
            height: 23px;
        }
        .auto-style28 {
            width: 1118px;
            height: 23px;
        }
    </style>




</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table>
            <tr>
                <td colspan="6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Habilite los filtros que desea utilizar:&nbsp;</td>
    
            </tr>
            <tr>
                <td>
&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Nombre"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Nombre" runat="server" OnClick="Nombre_Click" Text="Habilitar" />
                </td>
                <td>&nbsp;</td>
                <td class="auto-style16">
&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="Fecha"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Fecha" runat="server" Text="Habilitar" OnClick="Fecha_Click" />
                </td>
                <td>&nbsp;</td>
                <td colspan="2">
&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Estado"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Estadoo" runat="server" Text="Habilitar" OnClick="Estadoo_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Buscar" CssClass="auto-style23" OnClick="Button4_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style16">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" CssClass="auto-style1" ForeColor="#584545" Text="Nombre del cliente"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style16">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" ForeColor="#584545" Text="Fecha de inicio"></asp:Label>
                <asp:Calendar ID="Calendar1" runat="server" ForeColor="#584545"></asp:Calendar>
                </td>
                <td class="auto-style18">&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" ForeColor="#584545" Text="Fecha final"></asp:Label>
                <asp:Calendar ID="Calendar2" runat="server" CssClass="auto-style1" ForeColor="#584545" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar>
                </td>
                <td class="auto-style18">&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style22">
                    &nbsp;</td>
                <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:GridView ID="Lista" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnRowDataBound="Lista_RowDataBound">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="PedidoID" HeaderText="PedidoID" />
                            <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
                            <asp:BoundField DataField="DescripcionEstado" HeaderText="DescripcionEstado" />
                            <asp:BoundField DataField="Cliente" HeaderText="Cliente" />
                            <asp:TemplateField HeaderText="LineasOrden">
                                <ItemTemplate>
                                    <asp:GridView ID="Detalles" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                                            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
                                            <asp:BoundField DataField="Precio" HeaderText="Precio" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" />
                                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#F7F7DE" />
                                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                        <SortedAscendingHeaderStyle BackColor="#848384" />
                                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                        <SortedDescendingHeaderStyle BackColor="#575357" />
                                    </asp:GridView>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style25"></td>
                <td class="auto-style25"></td>
                <td class="auto-style26"></td>
                <td class="auto-style25"></td>
                <td class="auto-style27"></td>
                <td class="auto-style28"></td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" ForeColor="#584545" Text="Estado del pedido"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style16">
                <asp:DropDownList ID="Estado" runat="server" ForeColor="#584545">
                </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
</table>
<br />
        
</asp:Content>



