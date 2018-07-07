<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="DetallePlato.aspx.cs" Inherits="Presentacion.DetallePlato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 179px;
        }
        .auto-style5 {
            height: 41px;
        }
        .auto-style6 {
            width: 310px;
        }
        .auto-style7 {
            height: 41px;
            width: 310px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <asp:UpdatePanel ID="UpdatePanel3" runat="server">

    <ContentTemplate> 

    <table class="w-100">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:Label ID="lbNombrePlato" runat="server" Text="Nombre PLato"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:Label ID="lbPrecioPlato" runat="server" Text="Precio Plato"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
            </td>
            <td class="auto-style5">
                <asp:Label ID="lbDescPlato" runat="server" Text="Descripcion Plato"></asp:Label>
            </td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Image ID="imgPlatoDeta" runat="server" Width="300px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    </ContentTemplate>


    </asp:UpdatePanel>

</asp:Content>
