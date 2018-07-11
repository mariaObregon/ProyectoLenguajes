<%@ Page Title="" Language="C#" MasterPageFile="~/Menus/MasterAdmin.master" AutoEventWireup="true" CodeBehind="PrincipalModificar.aspx.cs" Inherits="Presentacion.ModificarClienteUsuario.PrincipalModificar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:Panel ID="PanelContraseña" runat="server" Height="200px" Width="100%">
        <table class="auto-style19" style="border-color: #FFFFFF; border-style: none; font-family: Verdana, Geneva, Tahoma, sans-serif; background-color: #C0C0C0; width: 100%;">
            <tr>
                <td class="auto-style20" colspan="4" style="background-color: #FFFFFF; color: #CC0000; text-align: left;">Datos Obligatorios*</td>
            </tr>
            <tr>
                <td class="auto-style20" colspan="4" style="background-color: #333333; color: #FFFFFF; text-align: center;">
                    <asp:Label ID="Label4" runat="server" Text="Cambiar contraseña"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style61" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 214px;"></td>
                <td class="auto-style58" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 343px;"></td>
                <td class="auto-style59" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 272px;"></td>
                <td class="auto-style60" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
            </tr>
            <tr>
                <td class="auto-style71" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 214px;">
                    <asp:Label ID="Label22" runat="server" Text="Contraseña*"></asp:Label>
                </td>
                <td class="auto-style70" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 343px;">
                    <asp:TextBox ID="TbPass" runat="server" Width="248px"></asp:TextBox>
                </td>
                <td class="auto-style72" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 272px;">
                    &nbsp;</td>
                <td class="auto-style73" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style75" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 214px; height: 33px;">
                    <asp:Label ID="Label27" runat="server" Text="Nueva contraseña*"></asp:Label>
                </td>
                <td class="auto-style54" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 343px; height: 33px;">
                    <asp:TextBox ID="TbNuevoPass" runat="server" Width="248px"></asp:TextBox>
                </td>
                <td class="auto-style55" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 272px; height: 33px;">
                    <asp:Label ID="Label28" runat="server" Text="Confirmar contraseña*"></asp:Label>
                </td>
                <td class="auto-style56" style="background-color: #C0C0C0; border-color: #C0C0C0; height: 33px;">
                    <asp:TextBox ID="TbConfirmar" runat="server" Width="248px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style64" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 214px;">&nbsp;</td>
                <td class="auto-style47" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 343px;">&nbsp;</td>
                <td class="auto-style51" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 272px;">&nbsp;</td>
                <td class="auto-style48" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" style="background-color: #C0C0C0; border-color: #C0C0C0; text-align: right;">
                    <asp:Button ID="BtnContraseña" runat="server" Height="36px" OnClick="BtnContraseña_Click" Text="Modificar contraseña" Width="300px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="PanelDatosPersonales" runat="server" Height="239px" Width="100%">
        <table class="auto-style19" style="border-color: #FFFFFF; border-style: none; font-family: Verdana, Geneva, Tahoma, sans-serif; background-color: #C0C0C0; width: 100%;">
            <tr>
                <td class="auto-style20" colspan="4" style="background-color: #333333; color: #FFFFFF; text-align: center;">
                    <asp:Label ID="Label13" runat="server" Text="Modificar Datos Personales"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style61" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 214px;"></td>
                <td class="auto-style58" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 343px;"></td>
                <td class="auto-style59" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 272px;"></td>
                <td class="auto-style60" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
            </tr>
            <tr>
                <td class="auto-style74" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 214px;">
                    <asp:Label ID="LabelPN" runat="server" Text="Primer Nombre*"></asp:Label>
                </td>
                <td class="auto-style42" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 343px;">
                    <asp:TextBox ID="TbPrimerNombre" runat="server" Width="248px"></asp:TextBox>
                </td>
                <td class="auto-style52" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 272px;">
                    <asp:Label ID="Label6" runat="server" Text="Segundo Nombre"></asp:Label>
                </td>
                <td class="auto-style23" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:TextBox ID="TbSegundoNombre" runat="server" Width="290px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style74" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 214px;">
                    <asp:Label ID="Label7" runat="server" Text="Primer Apellido*"></asp:Label>
                </td>
                <td class="auto-style42" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 343px;">
                    <asp:TextBox ID="TbPrimerApellido" runat="server" Width="248px"></asp:TextBox>
                </td>
                <td class="auto-style52" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 272px;">
                    <asp:Label ID="Label8" runat="server" Text="Segundo Apellido*"></asp:Label>
                </td>
                <td class="auto-style23" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:TextBox ID="TbSegundoApellido" runat="server" Width="290px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style71" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 214px;">
                    &nbsp;</td>
                <td class="auto-style70" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 343px;">
                    &nbsp;</td>
                <td class="auto-style72" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 272px;">
                    &nbsp;</td>
                <td class="auto-style73" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style75" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 214px;"></td>
                <td class="auto-style54" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 343px;"></td>
                <td class="auto-style55" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 272px;"></td>
                <td class="auto-style56" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
            </tr>
            <tr>
                <td style="background-color: #C0C0C0; border-color: #C0C0C0; text-align: right;" colspan="4">
                    <asp:Button ID="BtnModificarDatosP" runat="server" Height="36px" OnClick="BtnModificarDatosP_Click" Text="Modificar datos" Width="300px" />
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="PanelModificarContacto" runat="server" Height="177px" Width="100%">
        <table class="auto-style19" style="border-color: #FFFFFF; border-style: none; font-family: Verdana, Geneva, Tahoma, sans-serif; background-color: #C0C0C0; width: 100%;">
            <tr>
                <td class="auto-style20" colspan="4" style="background-color: #333333; color: #FFFFFF; text-align: center;">
                    <asp:Label ID="Label1" runat="server" Text="Modificar Mecanismo de contacto"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style91" style="background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                <td class="auto-style86" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 342px;"></td>
                <td class="auto-style96" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 153px;"></td>
                <td class="auto-style60" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
            </tr>
            <tr>
                <td class="auto-style92" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label2" runat="server" Text="Seleccione una forma de contacto*"></asp:Label>
                </td>
                <td class="auto-style90" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 342px;">
                    <asp:DropDownList ID="DropDownListContacto" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style97" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 153px;">
                    <asp:Label ID="Label3" runat="server" Text="Contacto*"></asp:Label>
                </td>
                <td class="auto-style23" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:TextBox ID="TbContacto" runat="server" Width="290px" style="margin-left: 64px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style93" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style88" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 342px;"></td>
                <td class="auto-style98" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 153px;"></td>
                <td class="auto-style56" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
            </tr>
            <tr>
                <td class="auto-style94" style="background-color: #C0C0C0; border-color: #C0C0C0; text-align: right;" colspan="4">
                    <asp:Button ID="BtnModificarContacto" runat="server" Height="36px" OnClick="BtnModificarContacto_Click" Text="Modificar Contacto" Width="300px" />
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="PanelModificarDireccion" runat="server" Height="304px">
        <table class="auto-style19" style="border-color: #FFFFFF; border-style: none; font-family: Verdana, Geneva, Tahoma, sans-serif; background-color: #C0C0C0; width: 100%;">
            <tr>
                <td class="auto-style20" colspan="4" style="background-color: #333333; color: #FFFFFF; text-align: center;">
                    <asp:Label ID="Label14" runat="server" Text="Modificar Dirección"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style61" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style58" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 312px;"></td>
                <td class="auto-style77" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 239px;"></td>
                <td class="auto-style60" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
            </tr>
            <tr>
                <td class="auto-style74" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label15" runat="server" Text="Seleccione el tipo de dirección*"></asp:Label>
                </td>
                <td class="auto-style42" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 312px;">
                    <asp:DropDownList ID="DropDownListTipoDireccion" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style78" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 239px;">
                    <asp:Label ID="Label26" runat="server" Text="Seleccione una ubicación*"></asp:Label>
                </td>
                <td class="auto-style23" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:DropDownList ID="DropDownListUbicacion" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style74" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label16" runat="server" Text="Linea de dirección 1*"></asp:Label>
                </td>
                <td class="auto-style42" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 312px;">
                    <asp:TextBox ID="TbLinea1" runat="server" Width="290px"></asp:TextBox>
                </td>
                <td class="auto-style78" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 239px;">
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
                <td class="auto-style70" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 312px;">
                    <asp:TextBox ID="TbLinea3" runat="server" Width="290px"></asp:TextBox>
                </td>
                <td class="auto-style79" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 239px;">
                    <asp:Label ID="Label19" runat="server" Text="Instrucciones*"></asp:Label>
                </td>
                <td class="auto-style73" style="background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:TextBox ID="TbInstrucciones" runat="server" Width="290px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style75" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style54" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 312px;"></td>
                <td class="auto-style80" style="background-color: #C0C0C0; border-color: #C0C0C0; width: 239px;"></td>
                <td class="auto-style56" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
            </tr>
            <tr>
                <td class="auto-style64" style="background-color: #C0C0C0; border-color: #C0C0C0; text-align: right;" colspan="4">
                    <asp:Button ID="BtnModificarDireccion" runat="server" Height="36px" OnClick="BtnModificarDireccion_Click" Text="Modificar Dirección" Width="300px" />
                </td>
            </tr>
        </table>
    </asp:Panel>


    <asp:Panel ID="PanelMostarLista" runat="server">
        <table class="auto-style19">
            <tr>
                <td class="auto-style31">
                    <asp:Label ID="LbUsuario" runat="server" Text="Usuario seleccionado"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:TextBox ID="TbUsuario" runat="server" CssClass="auto-style40" ReadOnly="True" Width="144px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <asp:Label ID="Label9" runat="server" Text="Seleccione un elemento de la lista"></asp:Label>
                </td>
                <td class="auto-style32">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <asp:Label ID="Label10" runat="server" Text="Filtrar por Nombre"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:TextBox ID="TbNombre" runat="server" Width="201px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="BtnFiltrar" runat="server" Text="Filtrar" Width="114px" OnClick="BtnFiltrar_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style30" colspan="3">
                    <asp:GridView ID="GridViewLista" runat="server" OnSelectedIndexChanged="GridViewLista_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
