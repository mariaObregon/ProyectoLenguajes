<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Agregar Usuario.aspx.cs" Inherits="Presentacion.AdministracionUsuario.Agregar_Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            width: 100%;
        }

        .auto-style71 {
            width: 142px;
        }

        .auto-style39 {
            width: 180px;
        }

        .auto-style75 {
        width: 187px;
    }
        
        .auto-style60 {
            width: 169px;
        }

        .auto-style65 {
            width: 147px;
        }

        .auto-style49 {
            height: 23px;
        }

        .auto-style66 {
            height: 23px;
            width: 147px;
        }

        .auto-style72 {
            height: 23px;
            width: 142px;
        }
    
        .auto-style40 {
            height: 23px;
            width: 180px;
        }

        .auto-style74 {
        height: 23px;
        width: 187px;
    }
    
        .auto-style61 {
            height: 23px;
            width: 169px;
        }

        .auto-style4 {
            height: 23px;
        }

        .auto-style38 {
            height: 23px;
        }

        .auto-style69 {
            height: 23px;
            width: 165px;
        }

        .auto-style68 {
            height: 23px;
            width: 162px;
        }

        .auto-style64 {
            height: 19px;
            width: 160px;
        }

        .auto-style43 {
            height: 21px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="PanelContenedor" runat="server" Height="529px" Width="1317px">
    <asp:ScriptManager ID="ScriptManager" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel" runat="server">
        <ContentTemplate>
            <table class="auto-style3" style="border-color: #C0C0C0; font-family: verdana, Geneva, Tahoma, sans-serif; color: #000000; background-color: #C0C0C0; font-size: small;">
                <tr>
                    <td class="auto-style48" colspan="2" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                        <asp:Label ID="Label19" runat="server" Text="Datos obligatorios*" ForeColor="#CC0000"></asp:Label>
                    </td>
                    <td class="auto-style71" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                    <td class="auto-style39" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0"></td>
                    <td class="auto-style75" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                    <td class="auto-style60" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                    <td class="auto-style71" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                    <td style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style48" colspan="8" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #808080; border-color: #C0C0C0; text-align: center; color: #FFFFFF;">
                        <asp:Label ID="Label18" runat="server" Text="Datos personales"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style48" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                        <asp:Label ID="LbUsuario" runat="server" Text="Usuario*"></asp:Label>
                    </td>
                    <td class="auto-style65" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                        <asp:TextBox ID="TbUsuario" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style71" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                        <asp:Label ID="Label2" runat="server" Text="Contraseña*"></asp:Label>
                    </td>
                    <td class="auto-style39" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                        <asp:TextBox ID="TbPass" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style75" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                        <asp:Label ID="Label3" runat="server" Text="Confirmar contraseña*"></asp:Label>
                    </td>
                    <td class="auto-style60" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                        <asp:TextBox ID="TbConfirmarPass" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style71" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                    <td style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style49" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                        <asp:Label ID="Label5" runat="server" Text="Primer Nombre*"></asp:Label>
                    </td>
                    <td class="auto-style66" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                        <asp:TextBox ID="TbPrimerNombre" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style72" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                        <asp:Label ID="Label6" runat="server" Text="Segundo Nombre"></asp:Label>
                    </td>
                    <td class="auto-style40" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                        <asp:TextBox ID="TbSegundoNombre" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style74" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                        <asp:Label ID="Label7" runat="server" Text="Primer Apellido*"></asp:Label>
                    </td>
                    <td class="auto-style61" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                        <asp:TextBox ID="TbPrimerApellido" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style72" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                        <asp:Label ID="Label8" runat="server" Text="Segundo Apellido*"></asp:Label>
                    </td>
                    <td class="auto-style4" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                        <asp:TextBox ID="TbSegundoApellido" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style49" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                    <td class="auto-style66" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                    <td class="auto-style72" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                    <td class="auto-style40" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                    <td class="auto-style74" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                    <td class="auto-style61" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                    <td class="auto-style72" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                    <td class="auto-style4" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style49" colspan="8" style="background-color: #FFFFFF">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style52" colspan="3">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style75">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td class="auto-style71">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style52" colspan="8" style="color: #FFFFFF; text-align: center; background-color: #808080">
                        <asp:Label ID="Label16" runat="server" Text="Mecanismo de Contacto"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41" colspan="2">
                        <asp:Label ID="Label4" runat="server" Text="Seleccione una forma de contacto*"></asp:Label>
                    </td>
                    <td class="auto-style38" colspan="2">
                        <asp:DropDownList ID="ListTipContacto" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style74">
                        <asp:Label ID="Label10" runat="server" Text="Contacto*"></asp:Label>
                    </td>
                    <td class="auto-style61">
                        <asp:TextBox ID="TbContacto" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style41" colspan="2">&nbsp;</td>
                    <td class="auto-style38" colspan="2">&nbsp;</td>
                    <td class="auto-style74">&nbsp;</td>
                    <td class="auto-style61">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style49" colspan="8" style="background-color: #FFFFFF">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style48">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td class="auto-style71">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style75">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td class="auto-style71">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style48" colspan="8" style="text-align: center; background-color: #808080; color: #FFFFFF">
                        <asp:Label ID="Label17" runat="server" Text="Dirección"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style31" colspan="2">
                        <asp:Label ID="Label15" runat="server" Text="Seleccione el tipo de dirección*"></asp:Label>
                    </td>
                    <td class="auto-style37" colspan="2">
                        <asp:DropDownList ID="ListTipoDireccion" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style75">
                        <asp:Label ID="Label9" runat="server" Text="Seleccione una ubicación*"></asp:Label>
                    </td>
                    <td class="auto-style33" colspan="2">
                        <asp:DropDownList ID="ListUbicacion" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style69" colspan="2">
                        <asp:Label ID="Label11" runat="server" Text="Linea de dirección 1*"></asp:Label>
                    </td>
                    <td class="auto-style68" colspan="2">
                        <asp:Label ID="Label12" runat="server" Text="Linea de dirección 2"></asp:Label>
                    </td>
                    <td class="auto-style64" colspan="2">
                        <asp:Label ID="Label13" runat="server" Text="Linea de dirección 3"></asp:Label>
                    </td>
                    <td class="auto-style72">
                        <asp:Label ID="Label14" runat="server" Text="Instrucciones"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style43" colspan="2">
                        <asp:TextBox ID="TbLinea1" runat="server" Width="290px"></asp:TextBox>
                    </td>
                    <td class="auto-style43" colspan="2">
                        <asp:TextBox ID="TbLinea2" runat="server" Width="290px"></asp:TextBox>
                    </td>
                    <td class="auto-style43" colspan="2">
                        <asp:TextBox ID="TbLinea3" runat="server" Width="290px"></asp:TextBox>
                    </td>
                    <td class="auto-style43" colspan="2">
                        <asp:TextBox ID="TbInstrucciones" runat="server" Width="290px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style48">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td class="auto-style71">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style75">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td class="auto-style71">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style48">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td class="auto-style71">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style75">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td class="auto-style71">
                        <asp:Button ID="BtnAgregarUsuario" runat="server" OnClick="BtnAgregarUsuario_Click" Text="Insertar Usuario" Width="141px" />
                    </td>
                    <td>
                        <asp:Button ID="BtnCancelar" runat="server" OnClick="BtnCancelar_Click" Text="Cancelar" Width="111px" />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Panel>
</asp:Content>
