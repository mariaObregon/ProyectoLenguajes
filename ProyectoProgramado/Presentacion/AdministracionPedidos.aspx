<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AdministracionPedidos.aspx.cs" Inherits="Presentacion.AdministracionPedidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 120px;
        }
    .auto-style16 {
        width: 219px;
    }
    .auto-style17 {
        width: 437px;
    }
    .auto-style18 {
        height: 211px;
    }
    .auto-style19 {
        width: 219px;
        height: 211px;
    }
    .auto-style20 {
        width: 437px;
        height: 211px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <table>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" CssClass="auto-style1" ForeColor="#584545" Text="Nombre del cliente"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style16">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>
                <asp:Button ID="Button1" runat="server" BackColor="#FFF29D" CssClass="auto-style4" OnClick="Button1_Click" Text="Buscar por cliente" />
                </td>
                <td>&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
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
                <td class="auto-style18">
                <asp:Button ID="Button2" runat="server" BackColor="#FFF29D" CssClass="auto-style4" OnClick="Button2_Click" Text="Buscar por fechas" />
                </td>
                <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="Pedidos" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
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
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
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
                <td>
                <asp:Button ID="Button3" runat="server" BackColor="#FFF29D" CssClass="auto-style4" OnClick="Button3_Click" Text="Bucar por estado" />
                </td>
                <td>&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
</table>
<br />
        
</asp:Content>
