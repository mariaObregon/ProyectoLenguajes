<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="DetallePlato.aspx.cs" Inherits="Presentacion.ModuloCliente.DetallePlato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
                Nombre Plato:
                <br />
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
                Precio Plato:
                <br />
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
                Descripcion PLato:
                <br />
                <asp:Label ID="lbDescPlato" runat="server" Text="Descripcion Plato"></asp:Label>
            </td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>Seleccion Cantidad De Platos A Agregar<br />
                <asp:DropDownList ID="dropCantidadPlatos" runat="server">
                </asp:DropDownList>
            </td>
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
            <td class="auto-style6">
                <asp:Button ID="butAgregarPlato" runat="server" OnClick="butAgregarPlato_Click" Text="Agregar" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="butRegresar" runat="server" OnClick="butRegresar_Click" Text="Regresar" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    </ContentTemplate>
         <Triggers>
           <asp:PostBackTrigger ControlID="butAgregarPlato" />
         </Triggers>

    </asp:UpdatePanel>

</asp:Content>
