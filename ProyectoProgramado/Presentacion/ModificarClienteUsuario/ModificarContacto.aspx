<%@ Page Title="" Language="C#" MasterPageFile="~/ModificarClienteUsuario/MasterModificar.master" AutoEventWireup="true" CodeBehind="ModificarContacto.aspx.cs" Inherits="Presentacion.ModificarClienteUsuario.ModificarContacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentModificar" runat="server">
    <asp:Panel ID="PanelModificarContacto" runat="server" Height="206px" Width="100%">
                    <table class="auto-style19" style="border-color: #FFFFFF; border-style: none; font-family: Verdana, Geneva, Tahoma, sans-serif; background-color: #C0C0C0; width: 100%;">
                        <tr>
                            <td class="auto-style20" colspan="4" style="background-color: #333333; color: #FFFFFF; text-align: center;">
                                <asp:Label ID="Label42" runat="server" Text="Modificar Mecanismo de contacto"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style66" colspan="2" style="background-color: #C0C0C0; border-color: #C0C0C0; color: #CC0000;">Datos Obligatorios*</td>
                            <td class="auto-style95" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                            <td class="auto-style68" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                        </tr>
                        <tr>
                            <td class="auto-style91" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                            <td class="auto-style86" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                            <td class="auto-style96" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                            <td class="auto-style60" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                        </tr>
                        <tr>
                            <td class="auto-style92" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                <asp:Label ID="Label43" runat="server" Text="Seleccione una forma de contacto*"></asp:Label>
                            </td>
                            <td class="auto-style90" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                <asp:DropDownList ID="ListTipContacto0" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style97" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                <asp:Label ID="Label44" runat="server" Text="Contacto*"></asp:Label>
                            </td>
                            <td class="auto-style23" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                <asp:TextBox ID="TbContacto0" runat="server" Width="290px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style93" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                            <td class="auto-style88" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                            <td class="auto-style98" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                            <td class="auto-style56" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                        </tr>
                        <tr>
                            <td class="auto-style93" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                            <td class="auto-style88" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                            <td class="auto-style98" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                            <td class="auto-style56" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                        </tr>
                        <tr>
                            <td class="auto-style94" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                            <td class="auto-style89" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                            <td class="auto-style99" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                            <td class="auto-style48" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                <asp:Button ID="BtnModificarContacto" runat="server" Height="36px" Text="Modificar Contacto" Width="300px" OnClick="BtnModificarContacto_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
</asp:Content>
