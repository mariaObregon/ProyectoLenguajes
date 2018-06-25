<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ModificarCliente.aspx.cs" Inherits="Presentacion.AdministrarCliente.ModificarCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            width: 100%;
            height: 101px;
        }

        .auto-style17 {
            width: 206px;
            height: 42px;
        }

        .auto-style41 {
            width: 76px;
            height: 42px;
        }
        
        .auto-style5 {
            width: 225px;
            height: 42px;
        }

        .auto-style18 {
            height: 17px;
        }

        .auto-style19 {
            width: 100%;
        }

        .auto-style66 {
            height: 24px;
        }
        .auto-style67 {
            width: 158px;
            height: 24px;
        }
        .auto-style68 {
            width: 144px;
            height: 24px;
        }
        .auto-style61 {
            width: 263px;
            height: 29px;
        }
        .auto-style58 {
            width: 5px;
            height: 29px;
        }
        .auto-style59 {
            width: 158px;
            height: 29px;
        }
        .auto-style60 {
            width: 144px;
            height: 29px;
        }
        .auto-style74 {
            width: 263px;
        }
        .auto-style42 {
            width: 5px;
        }
        .auto-style52 {
            width: 158px;
        }
        
        .auto-style23 {
            width: 144px;
        }

        .auto-style71 {
            width: 263px;
            height: 44px;
        }
        .auto-style70 {
            width: 5px;
            height: 44px;
        }
        .auto-style72 {
            height: 44px;
            width: 158px;
        }
        .auto-style73 {
            width: 144px;
            height: 44px;
        }
        .auto-style75 {
            width: 263px;
            height: 22px;
        }
        .auto-style54 {
            width: 5px;
            height: 22px;
        }
        .auto-style55 {
            width: 158px;
            height: 22px;
        }
        .auto-style56 {
            width: 144px;
            height: 22px;
        }
        .auto-style64 {
            width: 263px;
            height: 30px;
        }
        .auto-style47 {
            height: 30px;
        }
        .auto-style51 {
            height: 30px;
            width: 158px;
        }
        .auto-style48 {
            width: 144px;
            height: 30px;
        }
        .auto-style76 {
            width: 217px;
            height: 24px;
        }
        .auto-style77 {
            width: 217px;
            height: 29px;
        }
        .auto-style78 {
            width: 217px;
        }
        .auto-style79 {
            height: 44px;
            width: 217px;
        }
        .auto-style80 {
            width: 217px;
            height: 22px;
        }
        .auto-style81 {
            height: 30px;
            width: 217px;
        }
        .auto-style82 {
            width: 263px;
            height: 23px;
        }
        .auto-style83 {
            width: 5px;
            height: 23px;
        }
        .auto-style84 {
            width: 217px;
            height: 23px;
        }
        .auto-style85 {
            width: 144px;
            height: 23px;
        }
        .auto-style95 {
            width: 152px;
            height: 24px;
        }
        .auto-style91 {
            width: 304px;
            height: 29px;
        }
        .auto-style86 {
            width: 258px;
            height: 29px;
        }
        .auto-style96 {
            width: 152px;
            height: 29px;
        }
        .auto-style92 {
            width: 304px;
        }
        .auto-style90 {
            width: 258px;
        }
        .auto-style97 {
            width: 152px;
        }
        .auto-style93 {
            width: 304px;
            height: 22px;
        }
        .auto-style88 {
            width: 258px;
            height: 22px;
        }
        .auto-style98 {
            width: 152px;
            height: 22px;
        }
        .auto-style94 {
            width: 304px;
            height: 30px;
        }
        .auto-style89 {
            width: 258px;
            height: 30px;
        }
        .auto-style99 {
            height: 30px;
            width: 152px;
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
        .auto-style100 {
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <asp:Panel ID="PanelContenedor" runat="server" Height="1811px">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel" runat="server">
            <ContentTemplate>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="LabelPregunta" runat="server" Text="¿Qué desea modificar?" Font-Names="Verdana" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="#996600"></asp:Label>
                        </td>
                        <td class="auto-style41">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18" colspan="3">
                            <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Large" ForeColor="#7C6F57" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal" StaticSubMenuIndent="20px" Width="100%">
                                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                <DynamicMenuStyle BackColor="#F7F6F3" />
                                <DynamicSelectedStyle BackColor="#5D7B9D" />
                                <Items>
                                    <asp:MenuItem Text="Datos Personales" Value="0"></asp:MenuItem>
                                    <asp:MenuItem Text="Dirección" Value="1">
                                        <asp:MenuItem Text="Agregar" Value="2"></asp:MenuItem>
                                        <asp:MenuItem Text="Modificar" Value="3"></asp:MenuItem>
                                    </asp:MenuItem>
                                    <asp:MenuItem Text="Mecanismo de Contacto" Value="4">
                                        <asp:MenuItem Text="Agregar" Value="5"></asp:MenuItem>
                                        <asp:MenuItem Text="Modificar" Value="6"></asp:MenuItem>
                                    </asp:MenuItem>
                                </Items>
                                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                <StaticSelectedStyle BackColor="#5D7B9D" />
                            </asp:Menu>
                        </td>
                    </tr>
                </table>
                <asp:Panel ID="PanelDatosPersonales" runat="server" Height="282px" Visible="False" Width="100%">
                    <table class="auto-style19" style="border-color: #FFFFFF; border-style: none; font-family: Verdana, Geneva, Tahoma, sans-serif; background-color: #C0C0C0">
                        <tr>
                            <td class="auto-style20" colspan="4" style="background-color: #333333; color: #FFFFFF; text-align: center;">
                                <asp:Label ID="Label13" runat="server" Text="Datos Personales"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style66" colspan="2" style="background-color: #C0C0C0; border-color: #C0C0C0; color: #CC0000;">Datos Obligatorios*</td>
                            <td class="auto-style67" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                            <td class="auto-style68" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                        </tr>
                        <tr>
                            <td class="auto-style61" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                </td>
                            <td class="auto-style58" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                </td>
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
                                <asp:Button ID="Button2" runat="server" Text="Modificar datos" Width="300px" Height="36px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>

                <asp:Panel ID="PanelModificarDireccion" runat="server" Visible="False" Height="292px">
                    <table class="auto-style19" style="border-color: #FFFFFF; border-style: none; font-family: Verdana, Geneva, Tahoma, sans-serif; background-color: #C0C0C0">
                        <tr>
                            <td class="auto-style20" colspan="4" style="background-color: #333333; color: #FFFFFF; text-align: center;">
                                <asp:Label ID="Label14" runat="server" Text="Modificar Dirección"></asp:Label>
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
                                <asp:Button ID="Button3" runat="server" Height="36px" Text="Modificar Dirección" Width="300px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>

                <asp:Panel ID="PanelAgregarDireccion" runat="server" Visible="False" Height="314px">
                    <table class="auto-style19" style="border-color: #FFFFFF; border-style: none; font-family: Verdana, Geneva, Tahoma, sans-serif; background-color: #C0C0C0">
                        <tr>
                            <td class="auto-style20" colspan="4" style="background-color: #333333; color: #FFFFFF; text-align: center;">
                                <asp:Label ID="Label27" runat="server" Text="Agregar Dirección"></asp:Label>
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
                                <asp:Label ID="Label28" runat="server" Text="Seleccione el tipo de dirección*"></asp:Label>
                            </td>
                            <td class="auto-style42" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                <asp:DropDownList ID="ListTipoDireccion0" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style78" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                <asp:Label ID="Label29" runat="server" Text="Seleccione una ubicación*"></asp:Label>
                            </td>
                            <td class="auto-style23" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                <asp:DropDownList ID="ListUbicacion0" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style74" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                <asp:Label ID="Label30" runat="server" Text="Linea de dirección 1*"></asp:Label>
                            </td>
                            <td class="auto-style42" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                <asp:TextBox ID="TbLinea4" runat="server" Width="290px"></asp:TextBox>
                            </td>
                            <td class="auto-style78" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                <asp:Label ID="Label31" runat="server" Text="Linea de dirección 2*"></asp:Label>
                            </td>
                            <td class="auto-style23" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                <asp:TextBox ID="TbLinea5" runat="server" Width="290px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style71" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                <asp:Label ID="Label32" runat="server" Text="Linea de dirección 3*"></asp:Label>
                            </td>
                            <td class="auto-style70" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                <asp:TextBox ID="TbLinea6" runat="server" Width="290px"></asp:TextBox>
                            </td>
                            <td class="auto-style79" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                <asp:Label ID="Label33" runat="server" Text="Instrucciones*"></asp:Label>
                            </td>
                            <td class="auto-style73" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                <asp:TextBox ID="TbInstrucciones0" runat="server" Width="290px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style82" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                            <td class="auto-style83" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                            <td class="auto-style84" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
                            <td class="auto-style85" style="background-color: #C0C0C0; border-color: #C0C0C0"></td>
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
                                <asp:Button ID="Button5" runat="server" Height="36px" Text="Agregar Dirección" Width="300px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>

                <asp:Panel ID="PanelModificarContacto" runat="server" Visible="False" Height="225px">
                    <table class="auto-style19" style="border-color: #FFFFFF; border-style: none; font-family: Verdana, Geneva, Tahoma, sans-serif; background-color: #C0C0C0">
                        <tr>
                            <td class="auto-style20" colspan="4" style="background-color: #333333; color: #FFFFFF; text-align: center;">
                                <asp:Label ID="Label34" runat="server" Text="Modificar Mecanismo de contacto"></asp:Label>
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
                                <asp:Label ID="Label4" runat="server" Text="Seleccione una forma de contacto*"></asp:Label>
                            </td>
                            <td class="auto-style90" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                <asp:DropDownList ID="ListTipContacto" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style97" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                <asp:Label ID="Label41" runat="server" Text="Contacto*"></asp:Label>
                            </td>
                            <td class="auto-style23" style="background-color: #C0C0C0; border-color: #C0C0C0">
                                <asp:TextBox ID="TbContacto" runat="server" Width="290px"></asp:TextBox>
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
                                <asp:Button ID="Button6" runat="server" Height="36px" Text="Modificar Contacto" Width="300px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>

                <asp:Panel ID="PanelAgregarContacto" runat="server" Visible="False" Height="206px">
                    <table class="auto-style19" style="border-color: #FFFFFF; border-style: none; font-family: Verdana, Geneva, Tahoma, sans-serif; background-color: #C0C0C0">
                        <tr>
                            <td class="auto-style20" colspan="4" style="background-color: #333333; color: #FFFFFF; text-align: center;">
                                <asp:Label ID="Label42" runat="server" Text="Agregar Mecanismo de contacto"></asp:Label>
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
                                <asp:Button ID="Button7" runat="server" Height="36px" Text="Agregar Contacto" Width="300px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>

                <asp:Panel ID="PanelMostarLista" runat="server">
                    <table class="auto-style19">
                        <tr>
                            <td class="auto-style31">
                                &nbsp;</td>
                            <td class="auto-style32">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style31">
                                <asp:Label ID="Label9" runat="server" Text="Seleccione un elemento de la lista"></asp:Label>
                            </td>
                            <td class="auto-style32">
                                <asp:Label ID="LbUsuario" runat="server" Text="Usuario seleccionado"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TbUsuario" runat="server" CssClass="auto-style40" ReadOnly="True" Width="144px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style31">
                                <asp:Label ID="Label10" runat="server" Text="Filtrar por Nombre"></asp:Label>
                            </td>
                            <td class="auto-style32">
                                <asp:TextBox ID="TextBox1" runat="server" Width="201px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Filtrar" Width="114px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style30" colspan="3">
                                <asp:GridView ID="GridView1" runat="server">
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>

            </ContentTemplate>
        </asp:UpdatePanel>
    </asp:Panel>
</asp:Content>
