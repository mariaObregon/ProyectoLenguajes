<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="EliminarUsuario.aspx.cs" Inherits="Presentacion.EliminarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style19 {
            width: 100%;
        }

        .auto-style31 {
            width: 238px;
        }

        .auto-style32 {
            width: 231px;
        }
        .auto-style40 {
            margin-left: 0px;
        }
        .auto-style42 {
            width: 213px;
        }
        .auto-style43 {
            width: 132px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                    <asp:Button ID="Button2" runat="server" Text="Eliminar" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Cancelar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <asp:Label ID="Label10" runat="server" Text="Filtrar por Nombre"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:TextBox ID="TextBox1" runat="server" Width="201px"></asp:TextBox>
                </td>
                <td class="auto-style42">
                    <asp:Button ID="Button1" runat="server" Text="Filtrar" Width="114px" />
                </td>
                <td class="auto-style43">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style30" colspan="3">
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
