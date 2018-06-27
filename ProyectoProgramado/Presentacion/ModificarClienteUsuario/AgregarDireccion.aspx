<%@ Page Title="" Language="C#" MasterPageFile="~/ModificarClienteUsuario/MasterModificar.master" AutoEventWireup="true" CodeBehind="AgregarDireccion.aspx.cs" Inherits="Presentacion.ModificarClienteUsuario.AgregarDireccion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentModificar" runat="server">
    <asp:Panel ID="PanelModificarDireccion" runat="server" Height="292px" style="margin-left: 46px">
        <table class="auto-style19" style="border-color: #FFFFFF; border-style: none; font-family: Verdana, Geneva, Tahoma, sans-serif; background-color: #C0C0C0; width: 100%;">
            <tr>
                <td class="auto-style20" colspan="4" style="background-color: #333333; color: #FFFFFF; text-align: center;">
                    <asp:Label ID="Label14" runat="server" Text="Agregar Dirección"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style66" colspan="2" style="background-color: #C0C0C0; border-color: #C0C0C0; color: #CC0000;">Datos Obligatorios*</td>
                <td class="auto-style76" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style68" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
            </tr>
            <tr>
                <td class="auto-style61" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style58" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style77" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style60" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
            </tr>
            <tr>
                <td class="auto-style74" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label15" runat="server" Text="Seleccione el tipo de dirección*"></asp:Label>
                </td>
                <td class="auto-style42" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:DropDownList ID="ListTipoDireccion" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style78" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label26" runat="server" Text="Seleccione una ubicación*"></asp:Label>
                </td>
                <td class="auto-style23" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:DropDownList ID="ListUbicacion" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style74" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label16" runat="server" Text="Linea de dirección 1*"></asp:Label>
                </td>
                <td class="auto-style42" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:TextBox ID="TbLinea1" runat="server" Width="290px"></asp:TextBox>
                </td>
                <td class="auto-style78" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label17" runat="server" Text="Linea de dirección 2*"></asp:Label>
                </td>
                <td class="auto-style23" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:TextBox ID="TbLinea2" runat="server" Width="290px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style71" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label18" runat="server" Text="Linea de dirección 3*"></asp:Label>
                </td>
                <td class="auto-style70" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:TextBox ID="TbLinea3" runat="server" Width="290px"></asp:TextBox>
                </td>
                <td class="auto-style79" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label19" runat="server" Text="Instrucciones*"></asp:Label>
                </td>
                <td class="auto-style73" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:TextBox ID="TbInstrucciones" runat="server" Width="290px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style75" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style54" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style80" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style56" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
            </tr>
            <tr>
                <td class="auto-style75" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style54" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style80" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style56" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
            </tr>
            <tr>
                <td class="auto-style64" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style47" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style81" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style48" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Button ID="BtnAgregarDireccion" runat="server" Height="36px" Text="Agregar Dirección" Width="300px" OnClick="BtnAgregarDireccion_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
