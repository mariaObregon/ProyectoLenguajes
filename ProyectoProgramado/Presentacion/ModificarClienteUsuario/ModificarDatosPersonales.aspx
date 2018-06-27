<%@ Page Title="" Language="C#" MasterPageFile="~/ModificarClienteUsuario/MasterModificar.master" AutoEventWireup="true" CodeBehind="ModificarDatosPersonales.aspx.cs" Inherits="Presentacion.ModificarClienteUsuario.ModificarDatosPersonales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentModificar" runat="server">
    <asp:Panel ID="PanelDatosPersonales" runat="server" Height="282px" Width="100%">
        <table class="auto-style19" style="border-color: #FFFFFF; border-style: none; font-family: Verdana, Geneva, Tahoma, sans-serif; background-color: #C0C0C0; width: 100%;">
            <tr>
                <td class="auto-style20" colspan="4" style="background-color: #333333; color: #FFFFFF; text-align: center;">
                    <asp:Label ID="Label13" runat="server" Text="Modificar Datos Personales"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style66" colspan="2" style="background-color: #C0C0C0; border-color: #C0C0C0; color: #CC0000;">Datos Obligatorios*</td>
                <td class="auto-style67" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style68" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
            </tr>
            <tr>
                <td class="auto-style61" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style58" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style59" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style60" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
            </tr>
            <tr>
                <td class="auto-style74" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="LabelPN" runat="server" Text="Primer Nombre*"></asp:Label>
                </td>
                <td class="auto-style42" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:TextBox ID="TbPrimerNombre" runat="server" Width="248px"></asp:TextBox>
                </td>
                <td class="auto-style52" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label6" runat="server" Text="Segundo Nombre"></asp:Label>
                </td>
                <td class="auto-style23" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:TextBox ID="TbSegundoNombre" runat="server" Width="290px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style74" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label7" runat="server" Text="Primer Apellido*"></asp:Label>
                </td>
                <td class="auto-style42" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:TextBox ID="TbPrimerApellido" runat="server" Width="246px"></asp:TextBox>
                </td>
                <td class="auto-style52" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label8" runat="server" Text="Segundo Apellido*"></asp:Label>
                </td>
                <td class="auto-style23" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:TextBox ID="TbSegundoApellido" runat="server" Width="290px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style71" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label11" runat="server" Text="Seleccione el tipo de usuario*"></asp:Label>
                </td>
                <td class="auto-style70" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style72" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label12" runat="server" Text="Contraseña*"></asp:Label>
                </td>
                <td class="auto-style73" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:TextBox ID="TbPass" runat="server" Width="290px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style75" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style54" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style55" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style56" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
            </tr>
            <tr>
                <td class="auto-style75" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style54" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style55" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style56" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
            </tr>
            <tr>
                <td class="auto-style64" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style47" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style51" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style48" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Button ID="BtnModificarDatosP" runat="server" Text="Modificar datos" Width="300px" Height="36px" OnClick="BtnModificarDatosP_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
