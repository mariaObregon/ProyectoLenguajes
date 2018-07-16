<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="Presentacion.AdministracionUsuario.AgregarUsuario" %>

<%@ MasterType VirtualPath="~/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="../JavaScript/JavaScriptValidaciones.js"></script>

    <style type="text/css">
        .auto-style6 {
            width: 197px;
        }
        .auto-style7 {
            width: 96px;
        }
        .auto-style11 {
            width: 117px;
        }
        .auto-style12 {
            width: 221px;
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="PanelContenedor" runat="server" Height="618px" Width="1317px">



        <table class="auto-style3" style="border-color: #C0C0C0; font-family: verdana, Geneva, Tahoma, sans-serif; color: #000000; background-color: #C0C0C0; font-size: small; width:100%">
            <tr>
                <td class="auto-style48" colspan="8" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0; text-align: center;">
                    <asp:Label ID="Label20" runat="server" Text="REGISTRAR USUARIO NUEVO"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style48" colspan="2" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label19" runat="server" ForeColor="Red" Text="Datos obligatorios*"></asp:Label>
                </td>
                <td class="auto-style71" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                <td class="auto-style7" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0"></td>
                <td class="auto-style75" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                <td class="auto-style6" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                <td class="auto-style71" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                <td style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style48" colspan="8" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #808080; border-color: #C0C0C0; text-align: center; color: #FFFFFF;">
                    <asp:Label ID="Label18" runat="server" Text="Datos personales"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0" class="auto-style11">
                    <asp:Label ID="LbUsuario" runat="server" Text="Usuario*"></asp:Label>
                </td>
                <td class="auto-style65" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                    <input type="text"  runat="server" id="TbUsuario" placeholder="E-mail" required="required">
                </td>
                <td class="auto-style71" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label2" runat="server" Text="Contraseña*"></asp:Label>
                </td>
                <td class="auto-style7" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                    <input type="password"  runat="server" id="TbPass" placeholder="Contraseña" required="required">
                </td>
                <td class="auto-style75" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label3" runat="server" Text="Confirmar contraseña*"></asp:Label>
                </td>
                <td class="auto-style6" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                    <input type="password"  runat="server" id="TbConfirmarPass" placeholder="Confirmar contraseña" required="required">
                </td>
                <td class="auto-style71" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                <td style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
            </tr>
            <tr>
                <td style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0" class="auto-style11">
                    <asp:Label ID="Label5" runat="server" Text="Primer Nombre*"></asp:Label>
                </td>
                <td class="auto-style66" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                    <input type="text"  runat="server" id="TbPrimerNombre" placeholder="Primer nombre" required="required" width="148px">
                </td>
                <td class="auto-style72" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label6" runat="server" Text="Segundo Nombre"></asp:Label>
                </td>
                <td class="auto-style7" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                    <input type="text"  runat="server" id="TbSegundoNombre" placeholder="Segundo nombre"  width="148px">
                </td>
                <td class="auto-style74" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label7" runat="server" Text="Primer Apellido*"></asp:Label>
                </td>
                <td class="auto-style6" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                    <input type="text"  runat="server" id="TbPrimerApellido" placeholder="Primer apellido" required="required" width="148px">
                </td>
                <td class="auto-style72" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                    <asp:Label ID="Label8" runat="server" Text="Segundo Apellido*"></asp:Label>
                </td>
                <td class="auto-style4" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">
                    <input type="text" runat="server" id="TbSegundoApellido" placeholder="Segundo apellido" required="required">
                </td>
            </tr>
            <tr>
                <td style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0" class="auto-style11">&nbsp;</td>
                <td class="auto-style66" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                <td class="auto-style72" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                <td class="auto-style7" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                <td class="auto-style74" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
                <td class="auto-style6" style="border-style: none; font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; background-color: #C0C0C0; border-color: #C0C0C0">&nbsp;</td>
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
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style75">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
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
                    <asp:DropDownList ID="DropDownListContacto" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style74">
                    <asp:Label ID="Label10" runat="server" Text="Contacto*"></asp:Label>
                </td>
                <td class="auto-style6">
                    <input type="text"  runat="server" id="TbContacto" placeholder="Primer nombre" required="required">
                </td>
                <td class="auto-style72">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style41" colspan="2">&nbsp;</td>
                <td class="auto-style38" colspan="2">&nbsp;</td>
                <td class="auto-style74">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style72">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style49" colspan="8" style="background-color: #FFFFFF">
                    <hr />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style65">&nbsp;</td>
                <td class="auto-style71">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style75">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
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
                    <asp:DropDownList ID="DropDownListDireccion" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style75">
                    <asp:Label ID="Label9" runat="server" Text="Seleccione una ubicación*"></asp:Label>
                </td>
                <td class="auto-style33" colspan="2">
                    <asp:DropDownList ID="DropDownListUbicacion" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style69" colspan="2">
                    <asp:Label ID="Label11" runat="server" Text="Linea de dirección*"></asp:Label>
                </td>
                <td class="auto-style68" colspan="2">
                    <asp:Label ID="Label12" runat="server" Text="Linea de dirección"></asp:Label>
                </td>
                <td class="auto-style64" colspan="2">
                    <asp:Label ID="Label13" runat="server" Text="Linea de dirección"></asp:Label>
                </td>
                <td class="auto-style72">
                    <asp:Label ID="Label14" runat="server" Text="Instrucciones"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style43" colspan="2">
                  <input type="text" runat="server" id="TbLinea1" placeholder="Linea de direccion" required="required" width="90%"  >

                </td>
                <td class="auto-style43" colspan="2">
                    <input type="text"  runat="server" id="TbLinea2" placeholder="Linea de direccion" width="220px" >
                </td>
                <td class="auto-style43" colspan="2">
                    <input type="text"  runat="server" id="TbLinea3" placeholder="Linea de direccion" class="auto-style12" width="220px" >
                </td>
                <td class="auto-style43" colspan="2">
                    <input type="text"  runat="server" id="TbInstrucciones" placeholder="Instrucciones" >
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style65">&nbsp;</td>
                <td class="auto-style71">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style75">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style71">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style65">&nbsp;</td>
                <td class="auto-style71">&nbsp;</td>
                <td class="auto-style39" colspan="2" style="text-align: right">
                    <asp:Label ID="Label21" runat="server" Text="Seleccione el tipo de usuario*"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownListTipo" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style71">

                     <div class="input-group" style="display:none" id="divMsj" runat="server">

                       <asp:Label ID="msj" runat="server" class="fa fa-comment-o" ForeColor="#CC0000">msj</asp:Label>
                    </div>

                    <asp:Button ID="BtnAgregarUsuario" runat="server" OnClick="BtnAgregarUsuario_Click" Text="Registrar Usuario" Width="141px" />
                </td>
                <td>
                    <asp:Button ID="BtnCancelar" runat="server" OnClick="BtnCancelar_Click" Text="Cancelar" Width="111px" />
                </td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
